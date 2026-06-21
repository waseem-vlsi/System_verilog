module perf_counters #(
  parameter CNT_W = 4
)(
  input  logic             clk,
  input  logic             reset,
  input  logic             sw_req_i,
  input  logic             cpu_trig_i,
  output logic [CNT_W-1:0] p_count_o
);

  logic [CNT_W-1:0] nxt_count, count_q;

  always_ff @(posedge clk or posedge reset) begin
    if(reset)
      count_q <= '0;
    else
      count_q <= nxt_count;
  end

  assign nxt_count =
      sw_req_i ? cpu_trig_i :
                 count_q + {{CNT_W-1{1'b0}}, cpu_trig_i};

  assign p_count_o =
      {CNT_W{sw_req_i}} & count_q;

endmodule
