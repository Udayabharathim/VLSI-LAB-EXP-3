module ha(a,b,s,carry); 
input a,b; 
output s,carry; 
assign s=a^b; 
assign carry=a&b; 
endmodule 
 module multiplier_2(a,b,c); 
input [1:0]a,b; 
output [3:0]c; 
wire w; 
assign c[0]=a[0]&b[0]; 
ha h1(a[0]&b[1],a[1]&b[0],c[1],w); 
ha h2(a[1]&b[1],w,c[2],c[3]); 
endmodule 
