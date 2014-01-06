import MPI
type MDArray{T,N,A} <: AbstractArray{T,N}
    dims::NTuple{N,Int}

#    chunks::Array{RemoteRef,N}

    # pmap[i]==p ⇒ processor p has piece i
    pmap::Vector{Int}

    # indexes held by piece i
    indexes::Array{NTuple{N,Range1{Int}},N}
    # cuts[d][i] = first index of chunk i in dimension d
    cuts::Vector{Vector{Int}}

    function MDArray(dims, chunks, pmap, indexes, cuts)
        # check invariants
#        assert(size(chunks) == size(indexes))
#        assert(length(chunks) == length(pmap))
        assert(dims == map(last,last(indexes)))
        new(dims, chunks, pmap, indexes, cuts)
    end
end

# dist == size(chunks)
function MDArray(init, dims, procs, dist)
    np = MPI.size(MPI.COMM_WORLD)
    r = MPI.rank(MPI.COMM_WORLD)
    procs = [i for i=1:procs]
    idxs, cuts = Base.chunk_idxs(prod(dims), ones(np))
    p = max(1, Base.localpartindex(procs))
    if (r==0) 
        println("rank:", r, ":", idxs[r+1], "\n", cuts)
    end
    MPI.barrier(MPI.COMM_WORLD)
#    A = remotecall_fetch(procs[p], r->typeof(fetch(r)), chunks[p])
    MDArray{eltype(A),length(dims),A}(dims, procs, idxs, cuts)
end

function MDArray(init, dims, procs)
    if isempty(procs)
        error("no processors")
    end
    MDArray(init, dims, procs, Base.defaultdist(dims, [i for i=1:procs]))
end


# new DArray similar to an existing one
MDArray(init, d::MDArray) = MDArray(init, size(d), procs(d), [size(d.chunks)...])

size(d::DArray) = d.dims
procs(d::DArray) = d.pmap

chunktype{T,N,A}(d::DArray{T,N,A}) = A



function main()
    MPI.init()

    comm = MPI.COMM_WORLD

    root = 0
    r = MPI.rank(comm)
    np = MPI.size(comm)
    
    sr = MPI.Reduce(r, MPI.SUM, root, comm)

    if(r == root)
        @printf("sum of ranks: %s\n", sr)
    end

    d = MDArray(0., (100,100), np)
    println(d.indexes)

    MPI.finalize()
end

main()
