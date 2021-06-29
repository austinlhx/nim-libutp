type
  UTPStates = enum
    UTP_STATE_CONNECT = 1,
    UTP_STATE_WRITABLE = 2,
    UTP_STATE_EOF = 3,
    UTP_STATE_DESTROYING = 4

type
  ConnectionState = enum
    ST_DATA = 0
    ST_FIN = 1
    ST_STATE = 2
    ST_RESET = 3
    ST_SYN = 4

type
   uTPPacket = ("uTP_packet", ["type", "ver", "connection_id", "timestamp", "timestamp_diff", "wnd_size", "seq_nr", "ack_nr", "extensions", "data"])

echo uTPPacket
proc decode_packet(int: data): uTPPacket

# proc encode_packet
# proc get_tms
# proc get_tms_diff
