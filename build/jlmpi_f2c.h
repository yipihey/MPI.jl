#ifndef JLMPI_HEADER_INCLUDED
#define JLMPI_HEADER_INCLUDED

/* Mangling for Fortran global symbols without underscores. */
#define JLMPI_GLOBAL(name,NAME) name##_

/* Mangling for Fortran global symbols with underscores. */
#define JLMPI_GLOBAL_(name,NAME) name##_

/* Mangling for Fortran module symbols without underscores. */
#define JLMPI_MODULE(mod_name,name, mod_NAME,NAME) __##mod_name##_MOD_##name

/* Mangling for Fortran module symbols with underscores. */
#define JLMPI_MODULE_(mod_name,name, mod_NAME,NAME) __##mod_name##_MOD_##name

/*--------------------------------------------------------------------------*/
/* Mangle some symbols automatically.                                       */
#define MPI_SEND JLMPI_GLOBAL_(mpi_send, MPI_SEND)
#define MPI_RECV JLMPI_GLOBAL_(mpi_recv, MPI_RECV)
#define MPI_GET_COUNT JLMPI_GLOBAL_(mpi_get_count, MPI_GET_COUNT)
#define MPI_BSEND JLMPI_GLOBAL_(mpi_bsend, MPI_BSEND)
#define MPI_SSEND JLMPI_GLOBAL_(mpi_ssend, MPI_SSEND)
#define MPI_RSEND JLMPI_GLOBAL_(mpi_rsend, MPI_RSEND)
#define MPI_ISEND JLMPI_GLOBAL_(mpi_isend, MPI_ISEND)
#define MPI_IRECV JLMPI_GLOBAL_(mpi_irecv, MPI_IRECV)
#define MPI_WAIT JLMPI_GLOBAL_(mpi_wait, MPI_WAIT)
#define MPI_TEST JLMPI_GLOBAL_(mpi_test, MPI_TEST)
#define MPI_REQUEST_FREE JLMPI_GLOBAL_(mpi_request_free, MPI_REQUEST_FREE)
#define MPI_WAITANY JLMPI_GLOBAL_(mpi_waitany, MPI_WAITANY)
#define MPI_IPROBE JLMPI_GLOBAL_(mpi_iprobe, MPI_IPROBE)
#define MPI_PROBE JLMPI_GLOBAL_(mpi_probe, MPI_PROBE)
#define MPI_CANCEL JLMPI_GLOBAL_(mpi_cancel, MPI_CANCEL)
#define MPI_PACK JLMPI_GLOBAL_(mpi_pack, MPI_PACK)
#define MPI_UNPACK JLMPI_GLOBAL_(mpi_unpack, MPI_UNPACK)
#define MPI_PACK_SIZE JLMPI_GLOBAL_(mpi_pack_size, MPI_PACK_SIZE)
#define MPI_BARRIER JLMPI_GLOBAL_(mpi_barrier, MPI_BARRIER)
#define MPI_BCAST JLMPI_GLOBAL_(mpi_bcast, MPI_BCAST)
#define MPI_GATHER JLMPI_GLOBAL_(mpi_gather, MPI_GATHER)
#define MPI_REDUCE JLMPI_GLOBAL_(mpi_reduce, MPI_REDUCE)
#define MPI_ALLREDUCE JLMPI_GLOBAL_(mpi_allreduce, MPI_ALLREDUCE)
#define MPI_COMM_SIZE JLMPI_GLOBAL_(mpi_comm_size, MPI_COMM_SIZE)
#define MPI_COMM_RANK JLMPI_GLOBAL_(mpi_comm_rank, MPI_COMM_RANK)
#define MPI_COMM_DUP JLMPI_GLOBAL_(mpi_comm_dup, MPI_COMM_DUP)
#define MPI_COMM_SPLIT JLMPI_GLOBAL_(mpi_comm_split, MPI_COMM_SPLIT)
#define MPI_COMM_FREE JLMPI_GLOBAL_(mpi_comm_free, MPI_COMM_FREE)
#define MPI_GET_PROCESSOR_NAME JLMPI_GLOBAL_(mpi_get_processor_name, MPI_GET_PROCESSOR_NAME)
#define MPI_WTIME JLMPI_GLOBAL_(mpi_wtime, MPI_WTIME)
#define MPI_INIT JLMPI_GLOBAL_(mpi_init, MPI_INIT)
#define MPI_FINALIZE JLMPI_GLOBAL_(mpi_finalize, MPI_FINALIZE)
#define MPI_INITIALIZED JLMPI_GLOBAL_(mpi_initialized, MPI_INITIALIZED)
#define MPI_ABORT JLMPI_GLOBAL_(mpi_abort, MPI_ABORT)
#define MPI_ALLTOALL JLMPI_GLOBAL_(mpi_alltoall, MPI_ALLTOALL)
#define MPI_SEND_INIT JLMPI_GLOBAL_(mpi_send_init, MPI_SEND_INIT)
#define MPI_RECV_INIT JLMPI_GLOBAL_(mpi_recv_init, MPI_RECV_INIT)
#define MPI_OP_CREATE JLMPI_GLOBAL_(mpi_op_create, MPI_OP_CREATE)
#define MPI_WAITALL JLMPI_GLOBAL_(mpi_waitall, MPI_WAITALL)
#define MPI_OP_FREE JLMPI_GLOBAL_(mpi_op_free, MPI_OP_FREE)

#endif
