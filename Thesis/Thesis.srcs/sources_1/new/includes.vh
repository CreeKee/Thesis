package data_packet_pkg;
    typedef struct packed {
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;
endpackage