module MPI

import Base.*

const libmpi = dlopen("/Users/tabel/Research/codes/MPI.jl/build/libmpi")

const WRAPPER_VERSION        = "0.1.0-5-gf9f6540"
const MPI_SEND               = dlsym(libmpi, "mpi_send_")
const MPI_RECV               = dlsym(libmpi, "mpi_recv_")
const MPI_GET_COUNT          = dlsym(libmpi, "mpi_get_count_")
const MPI_BSEND              = dlsym(libmpi, "mpi_bsend_")
const MPI_SSEND              = dlsym(libmpi, "mpi_ssend_")
const MPI_RSEND              = dlsym(libmpi, "mpi_rsend_")
const MPI_ISEND              = dlsym(libmpi, "mpi_isend_")
const MPI_IRECV              = dlsym(libmpi, "mpi_irecv_")
const MPI_WAIT               = dlsym(libmpi, "mpi_wait_")
const MPI_TEST               = dlsym(libmpi, "mpi_test_")
const MPI_REQUEST_FREE       = dlsym(libmpi, "mpi_request_free_")
const MPI_WAITANY            = dlsym(libmpi, "mpi_waitany_")
const MPI_IPROBE             = dlsym(libmpi, "mpi_iprobe_")
const MPI_PROBE              = dlsym(libmpi, "mpi_probe_")
const MPI_CANCEL             = dlsym(libmpi, "mpi_cancel_")
const MPI_PACK               = dlsym(libmpi, "mpi_pack_")
const MPI_UNPACK             = dlsym(libmpi, "mpi_unpack_")
const MPI_PACK_SIZE          = dlsym(libmpi, "mpi_pack_size_")
const MPI_BARRIER            = dlsym(libmpi, "mpi_barrier_")
const MPI_BCAST              = dlsym(libmpi, "mpi_bcast_")
const MPI_GATHER             = dlsym(libmpi, "mpi_gather_")
const MPI_REDUCE             = dlsym(libmpi, "mpi_reduce_")
const MPI_ALLREDUCE          = dlsym(libmpi, "mpi_allreduce_")
const MPI_COMM_SIZE          = dlsym(libmpi, "mpi_comm_size_")
const MPI_COMM_RANK          = dlsym(libmpi, "mpi_comm_rank_")
const MPI_COMM_DUP           = dlsym(libmpi, "mpi_comm_dup_")
const MPI_COMM_SPLIT         = dlsym(libmpi, "mpi_comm_split_")
const MPI_COMM_FREE          = dlsym(libmpi, "mpi_comm_free_")
const MPI_GET_PROCESSOR_NAME = dlsym(libmpi, "mpi_get_processor_name_")
const MPI_WTIME              = dlsym(libmpi, "mpi_wtime_")
const MPI_INIT               = dlsym(libmpi, "mpi_init_")
const MPI_FINALIZE           = dlsym(libmpi, "mpi_finalize_")
const MPI_INITIALIZED        = dlsym(libmpi, "mpi_initialized_")
const MPI_ABORT              = dlsym(libmpi, "mpi_abort_")
const MPI_ALLTOALL           = dlsym(libmpi, "mpi_alltoall_")
const MPI_SEND_INIT          = dlsym(libmpi, "mpi_send_init_")
const MPI_RECV_INIT          = dlsym(libmpi, "mpi_recv_init_")
const MPI_OP_CREATE          = dlsym(libmpi, "mpi_op_create_")
const MPI_WAITALL            = dlsym(libmpi, "mpi_waitall_")
const MPI_OP_FREE            = dlsym(libmpi, "mpi_op_free_")

const MPI_COMM_SELF  = int32(                               1)
const MPI_COMM_WORLD = int32(                               0)
const MPI_COMM_NULL  = int32(                               2)
const MPI_SUCCESS    = int32(                               0)
const MPI_BYTE      = int32(                               1)
const MPI_WCHAR     = int32(                              33)
const MPI_INT8_T    = int32(                              58)
const MPI_UINT8_T   = int32(                              59)
const MPI_INT16_T   = int32(                              60)
const MPI_UINT16_T  = int32(                              61)
const MPI_INT32_T   = int32(                              62)
const MPI_UINT32_T  = int32(                              63)
const MPI_INT64_T   = int32(                              64)
const MPI_UINT64_T  = int32(                              65)
const MPI_REAL4     = int32(                              14)
const MPI_REAL8     = int32(                              15)
const MPI_COMPLEX  = int32(                              18)
const MPI_DOUBLE_COMPLEX = int32(                              22)
const MPI_OP_NULL  = int32(                               0)
const MPI_MAX     = int32(                               1)
const MPI_MIN     = int32(                               2)
const MPI_SUM     = int32(                               3)
const MPI_PROD    = int32(                               4)
const MPI_LAND    = int32(                               5)
const MPI_BAND    = int32(                               6)
const MPI_LOR     = int32(                               7)
const MPI_BOR     = int32(                               8)
const MPI_LXOR    = int32(                               9)
const MPI_BXOR    = int32(                              10)
const MPI_MAXLOC  = int32(                              11)
const MPI_MINLOC  = int32(                              12)
const MPI_REPLACE = int32(                              13)
const MPI_ANY_SOURCE = int32(                              -1)
const MPI_ANY_TAG    = int32(                              -1)
const MPI_TAG_UB     = int32(                               0)
const MPI_STATUS_SIZE   = int32(                               6)
const MPI_SOURCE = int32(                               1)
const MPI_TAG    = int32(                               2)
const MPI_ERROR  = int32(                               3)
const MPI_REQUEST_NULL  = int32(                               0)

typealias MpiDatatype Union(Float32, Float64, Complex64, Complex128, Char,
                         Int8, Uint8, Int16, Uint16, Int32, Uint32, Int64,
                         Uint64)

const _mpi_datatype_map = {
  Float32 => MPI_REAL4,
  Float64 => MPI_REAL8,
  Complex64 => MPI_COMPLEX,
  Complex128 => MPI_DOUBLE_COMPLEX,
  Char => MPI_WCHAR,
  Int8 => MPI_INT8_T,
  Uint8 => MPI_UINT8_T,
  Int16 => MPI_INT16_T,
  Uint16 => MPI_UINT16_T,
  Int32 => MPI_INT32_T,
  Uint32 => MPI_UINT32_T,
  Int64 => MPI_INT64_T,
  Uint64 => MPI_UINT64_T,
# The following doesn't not seem to work with my openmpi build
#  Int128 => MPI_INTEGER16,
# Unfortunately mpich2 doesn't support 8-bits ints
#  Bool => MPI_LOGICAL1,
}

for (elty, elfn, elnl) in ((:Comm,      :MPI_COMM_FREE,    :MPI_COMM_NULL),
                           (:Request,   :MPI_REQUEST_FREE, :MPI_REQUEST_NULL),
                           (:Operation, :MPI_OP_FREE,      :MPI_OP_NULL))
    @eval begin
        type ($elty)
            fval::Int32

            function ($elty)(b::Int32)
                a = new(b)
# the finalizer call below causes this error with OpenMPI, any ideas? 
#The MPI_Op_f2c() function was called after MPI_FINALIZE was invoked.
#*** This is disallowed by the MPI standard.
#*** Your MPI job will now abort.
#                finalizer(a, free)
                a
            end
        end

        convert(::Type{$elty}, x::Int32) = ($elty)(x)
        convert(::Type{Int32}, x::($elty)) = Int32(x.fval)

        function isequal(a::($elty), b::($elty))
            isequal(a.fval, b.fval)
        end

        function free(el::($elty))
            ierr = Array(Int32, 1)

            if el.fval != $elnl
                ccall($elfn, Void, (Ptr{Int32},Ptr{Int32},), &el.fval, ierr)

                if ierr[1] != MPI_SUCCESS
                    elfn_str = $string(elfn)
                    prinln("$elfn_str: error $(ierr[1])")
                end
            end
        end
    end
end

const COMM_SELF  = Comm(MPI_COMM_SELF)
const COMM_WORLD = Comm(MPI_COMM_WORLD)
const COMM_NULL  = Comm(MPI_COMM_NULL)

const OP_NULL = Operation(MPI_OP_NULL)
const MAX     = Operation(MPI_MAX    )
const MIN     = Operation(MPI_MIN    )
const SUM     = Operation(MPI_SUM    )
const PROD    = Operation(MPI_PROD   )
const LAND    = Operation(MPI_LAND   )
const BAND    = Operation(MPI_BAND   )
const LOR     = Operation(MPI_LOR    )
const BOR     = Operation(MPI_BOR    )
const LXOR    = Operation(MPI_LXOR   )
const BXOR    = Operation(MPI_BXOR   )
##The following are not supported yet
#const MAXLOC  = Operation(MPI_MAXLOC )
#const MINLOC  = Operation(MPI_MINLOC )
#const REPLACE = Operation(MPI_REPLACE)

const ANY_SOURCE = MPI_ANY_SOURCE
const ANY_TAG    = MPI_ANY_TAG
const TAG_UB     = MPI_TAG_UB

const STATUS_SIZE   = MPI_STATUS_SIZE

const SOURCE      = MPI_SOURCE
const TAG         = MPI_TAG
const ERROR       = MPI_ERROR

const REQUEST_NULL = Request(MPI_REQUEST_NULL)

macro _mpi_error_check(ierr, fname)
    :($(ierr) == MPI_SUCCESS ? nothing : error("MPI error in:", $fname,
      "---", $ierr))
end

takebuf_array(s::IOStream) =
    ccall(:jl_takebuf_array, Vector{Uint8}, (Ptr{Void},), s.ios)

function _mpi_serialize(x)
    s = IOBuffer()
    serialize(s, x)
    Base.takebuf_array(s)
end

function _mpi_deserialize(x)
    s = IOBuffer()
    write(s, x)
    seek(s, 0)
    y = deserialize(s)
    y

end

for (fn, ff) in ((:init,     :MPI_INIT),
                 (:finalize, :MPI_FINALIZE))
    @eval begin
        function ($fn)()
            ierr = Array(Int32, 1)
            ccall($ff, Void, (Ptr{Int32},), ierr)
            @_mpi_error_check ierr[1] $string(ff)
        end
    end
end

for (fn, ff) in ((:rank, :MPI_COMM_RANK),
                 (:size, :MPI_COMM_SIZE))
    @eval begin
        function ($fn)(c::Comm)
            ierr = Array(Int32, 1)
            valu = Array(Int32, 1)
            ccall($ff, Void, (Ptr{Int32}, Ptr{Int32}, Ptr{Int32},),
                  &c.fval, valu, ierr)
            @_mpi_error_check ierr[1] $string(ff)
            valu[1]
        end
    end
end

function barrier(c::Comm)
    ierr = Array(Int32, 1)
    ccall(MPI_BARRIER, Void, (Ptr{Int32},Ptr{Int32},), &c.fval, ierr)
    @_mpi_error_check ierr[1] "MPI_BARRIER"
end

function Bcast!{T<:MpiDatatype}(A::Union(Ptr{T},Array{T}), count::Integer,
                             root::Integer, c::Comm)
    ierr = Array(Int32, 1)

    ccall(MPI_BCAST, Void,
          (Ptr{T}, Ptr{Int32}, Ptr{Int32},  Ptr{Int32}, Ptr{Int32},
          Ptr{Int32},),
          A, &count, &_mpi_datatype_map[T], &root, &c.fval, ierr)

    @_mpi_error_check ierr[1] "MPI_BCAST"
    A
end

function Bcast!{T<:MpiDatatype}(A::Array{T}, root::Integer, c::Comm)
    Bcast!(A, length(A), root, c)
end

function bcast(A, root::Integer, c::Comm)
    ierr = Array(Int32, 1)
    len  = Array(Int32, 1)

    if rank(c) == root
        buf = _mpi_serialize(A)
        len[1] = length(buf)
    end

    ccall(MPI_BCAST, Void,
          (Ptr{Int32}, Ptr{Int32}, Ptr{Int32},  Ptr{Int32}, Ptr{Int32},
          Ptr{Int32},),
          len, &sizeof(Int32), &MPI_BYTE, &root, &c.fval, ierr)

    @_mpi_error_check ierr[1] "MPI_BCAST"

    if rank(c) != root
        buf = Array(Uint8, len[1])
    end

    ccall(MPI_BCAST, Void,
          (Ptr{Uint8}, Ptr{Int32}, Ptr{Int32},  Ptr{Int32}, Ptr{Int32},
          Ptr{Int32},),
          buf, len, &MPI_BYTE, &root, &c.fval, ierr)

    @_mpi_error_check ierr[1] "MPI_BCAST"

    if rank(c) != root
        _mpi_deserialize(buf)
    else
        A
    end
end

function Reduce{T<:MpiDatatype}(A::Union(Ptr{T},Array{T}), count::Integer,
                                op::Operation, root::Integer, c::Comm)
    ierr = Array(Int32, 1)

    if MPI.rank(c) == root
        B = Array(T, count)
    else
        B = Array(T, 0)
    end

    ccall(MPI_REDUCE, Void,
          (Ptr{T}, Ptr{T}, Ptr{Int32},  Ptr{Int32}, Ptr{Int32},
          Ptr{Int32}, Ptr{Int32}, Ptr{Int32},),
          A, B, &count, &_mpi_datatype_map[T], &op.fval, &root, &c.fval, ierr)

    @_mpi_error_check ierr[1] "MPI_REDUCE"

    if MPI.rank(c) != root
        B = Nothing
    end
    B
end

function Reduce{T<:MpiDatatype}(A::Array{T}, op::Operation, root::Integer,
                                c::Comm)
    Reduce(A, length(A), op, root, c)
end

function Reduce{T<:MpiDatatype}(A::T, op::Operation, root::Integer, c::Comm)
    A1 = Array(T, 1)
    A1[1] = A
    B1 = Reduce(A1, op, root, c)
    if MPI.rank(c) == root
        B1[1]
    else
        Nothing
    end
end

for (fnnm, ffnm) in ((:Isend!, :MPI_ISEND), (:Irecv!, :MPI_IRECV))
    @eval begin
        function ($fnnm){T<:MpiDatatype}(A::Union(Ptr{T},Array{T}),
                                         count::Integer, srcdest::Integer,
                                         tag::Integer, c::Comm)
            ierr = Array(Int32, 1)
            req  = Array(Int32, 1)

            ccall(($ffnm), Void,
                   (Ptr{T}, Ptr{Int32}, Ptr{Int32},  Ptr{Int32}, Ptr{Int32},
                   Ptr{Int32}, Ptr{Int32}, Ptr{Int32}),
                   A, &count, &_mpi_datatype_map[T], &srcdest, &tag, &c.fval,
                   req, ierr)

            @_mpi_error_check ierr[1] $string(ffnm)
            Request(req[1])
        end

        function ($fnnm){T<:MpiDatatype}(A::Array{T}, srcdest::Integer,
                                         tag::Integer, c::Comm)
            ($fnnm)(A, length(A), srcdest, tag, c)
        end
    end
end


function send(A, dest::Integer, tag::Integer, c::Comm)
    ierr = Array(Int32, 1)

    buf = _mpi_serialize(A)

    ccall(MPI_SEND, Void,
          (Ptr{Uint8}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32},
          Ptr{Int32}, Ptr{Int32}),
          buf, &length(buf), &MPI_BYTE, &dest, &tag, &c.fval, ierr)

    @_mpi_error_check ierr[1] "MPI_SEND"
end

function probe(source::Integer, tag::Integer, c::Comm)
    ierr = Array(Int32, 1)
    stat = Array(Int32, MPI_STATUS_SIZE)

    ccall(MPI_PROBE, Void,
          (Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}),
          &source, &tag, &c.fval, stat, ierr)

    @_mpi_error_check ierr[1] "MPI_PROBE"
    stat
end

function recv!(source::Integer, tag::Integer, c::Comm, status)
    ierr = Array(Int32, 1)
    count = Array(Int32, 1)
    pstat = probe(source, tag, c)

    ccall(MPI_GET_COUNT, Void, (Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}),
          pstat, &MPI_BYTE, count, ierr)

    @_mpi_error_check ierr[1] "MPI_GET_COUNT"

    buf = Array(Uint8, count[1])

    ccall(MPI_RECV, Void,
          (Ptr{Uint8}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32}, Ptr{Int32},
          Ptr{Int32}, Ptr{Int32}, Ptr{Int32}),
          buf, &length(buf), &MPI_BYTE, &source, &tag, &c.fval, status, ierr)

    @_mpi_error_check ierr[1] "MPI_RECV"

    _mpi_deserialize(buf)
end

function recv(source::Integer, tag::Integer, c::Comm)
    stat = Array(Int32, MPI_STATUS_SIZE)
    recv!(source, tag, c, stat)
end

function wait!(req::Request)
    fval = Array(Int32, 1)
    stat = Array(Int32, MPI_STATUS_SIZE)
    ierr = Array(Int32, 1)

    fval[1] = req.fval

    ccall(MPI_WAIT, Void, (Ptr{Int32},Ptr{Int32},Ptr{Int32},),
          fval, stat, ierr)

    req.fval = fval[1]

    @_mpi_error_check ierr[1] "MPI_WAIT"
    stat
end

function waitall!(reqs::Array{Request})
    ierr = Array(Int32, 1)
    freqs = int32([r.fval for r in reqs])
    count = length(freqs)

    stats = Array(Int32, MPI_STATUS_SIZE, count)

    ccall(MPI_WAITALL, Void, (Ptr{Int32},Ptr{Int32},Ptr{Int32},Ptr{Int32},),
          &count, freqs, stats, ierr)

    @_mpi_error_check ierr[1] "MPI_WAITALL"

    map((x,y)->x.fval=y, reqs, freqs)

    stats
end

function waitall!(req::Request)
    reqs = Array(Request, 1)
    reqs[1] = req
    waitall!(reqs::Array{Request})
end
end
