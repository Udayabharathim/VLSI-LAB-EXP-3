module ha(a,b,sum,carry); 
input a,b; 
output sum,carry; 
assign sum=a^b; 
assign carry=a&b; 
endmodule 
module fa(a,b,c,sum,carry); 
input a,b,c; 
output sum,carry; 
assign sum=a^b^c; 
assign carry=(a&b)|(b&c)|(a&c); 
endmodule 
module multi_4(a,b,p); 
input[3:0]a,b; 
output [7:0]p; 
wire [17:1]w; 
assign p[0]=a[0]&b[0]; 
ha h1(a[1]&b[0],a[0]&b[1],p[1],w[1]); 
fa f1(w[1],a[2]&b[0],a[1]&b[1],w[2],w[3]); 
fa f2(w[3],a[3]&b[0],a[2]&b[1],w[4],w[5]); 
ha h2(a[3]&b[1],w[5],w[6],w[7]); 
ha h3(a[0]&b[2],w[2],p[2],w[8]); 
fa f3(w[8],a[1]&b[2],w[4],w[9],w[10]); 
fa f4(w[10],a[2]&b[2],w[6],w[11],w[12]); 
fa f5(w[12],w[7],a[3]&b[2],w[13],w[14]); 
ha h4(a[0]&b[3],w[9],p[3],w[15]); 
 
fa f6(w[15],a[1]&b[3],w[11],p[4],w[16]); 
fa f7(w[16],a[2]&b[3],w[13],p[5],w[17]); 
fa f8(w[17],w[14],a[3]&b[3],p[6],p[7]); 
endmodule
