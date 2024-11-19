module tb;

 event a1;
 event a2;

 initial begin
  // Not adding delay of the event purposefully 
  // So that we could miss of an event in simulation time that can lead to blocking behaviour we are trying to explain of edge senstive trigger
  -> a1;
  #10;
  -> a2; 
 end

 initial begin
   wait(a1.triggered);
   //@(a1);
   $display("Event A1 Triggered");
   @(a2);
   $display("Event A2 Triggered");
 end


endmodule
