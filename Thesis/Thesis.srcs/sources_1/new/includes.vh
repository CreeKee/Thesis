package data_packet_pkg;
    typedef struct packed {
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;

    typedef struct {
        logic [31:0] alpha_x;
        logic [31:0] alpha_y;
        logic [31:0] alpha_z;

        logic [31:0] beta_x;
        logic [31:0] beta_y;
        logic [31:0] beta_z;
    } mult_pack;

endpackage