# SIMULATION AND IMPLEMENTATION OF MULTIPLIER
## AIM: 
To simulate and synthesis multiplier using VIVADO.
## APPARATUS REQUIRED: 
VIVADO 2023.2

## PROCEDURE:
 STEP:1 Start the Vivado, Select and Name the New project.<br>
 STEP:2 Select the device family, device, package and speed. <br>
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.<br>
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it.<br>
STEP:5 Select the Behavioural Simulation in the Source Window and click the check syntax.<br>
 STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.
 ## 2- BIT MULTIPLIER
 ![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_3/assets/160568654/6c786cd7-1dbf-4a6f-838b-bc63cc530f23)


## PROGRAM:

module ha(a,b,s,carry);<br>
input a,b;<br>
output s,carry;<br>
assign carry=a&b;<br>
endmodule<br>
 module multiplier_2(a,b,c);<br>
input [1:0]a,b;<br>
output [3:0]c;<br>
wire w;<br>
assign c[0]=a[0]&b[0];<br>
ha h1(a[0]&b[1],a[1]&b[0],c[1],w);<br>
ha h2(a[1]&b[1],w,c[2],c[3]);<br>
endmodule

                      
## OUTPUT:               
                   
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_3/assets/160568654/e4ca9f4a-7f04-436d-8193-ecdf601858bd)



## 4- BIT MULTIPLIER:

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_3/assets/160568654/ab2bb781-dd58-452c-8f3b-88c8248eb1bd)

## PROGRAM:
module ha(a,b,sum,carry);<br>
input a,b;<br>
output sum,carry;<br>
assign sum=a^b;<br>
assign carry=a&b;<br>
endmodule<br>

module fa(a,b,c,sum,carry);<br>
input a,b,c;<br>
output sum,carry;<br>
assign sum=a^b^c;<br>
assign carry=(a&b)|(b&c)|(a&c);<br>
endmodule<br>

module multi_4(a,b,p);<br>
input[3:0]a,b;<br>
output [7:0]p;<br>
wire [17:1]w;<br>
assign p[0]=a[0]&b[0];<br>
ha h1(a[1]&b[0],a[0]&b[1],p[1],w[1]);<br>
fa f1(w[1],a[2]&b[0],a[1]&b[1],w[2],w[3]);<br>
fa f2(w[3],a[3]&b[0],a[2]&b[1],w[4],w[5]);<br>
ha h2(a[3]&b[1],w[5],w[6],w[7]);<br>
ha h3(a[0]&b[2],w[2],p[2],w[8]);<br>
fa f3(w[8],a[1]&b[2],w[4],w[9],w[10]);<br>
fa f4(w[10],a[2]&b[2],w[6],w[11],w[12]);<br>
fa f5(w[12],w[7],a[3]&b[2],w[13],w[14]);<br>
ha h4(a[0]&b[3],w[9],p[3],w[15]);<br>
fa f6(w[15],a[1]&b[3],w[11],p[4],w[16]);<br>
fa f7(w[16],a[2]&b[3],w[13],p[5],w[17]);<br>
fa f8(w[17],w[14],a[3]&b[3],p[6],p[7]);<br>
endmodule
                                                                                                                                                                                                            

## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_3/assets/160568654/c5a50a1d-8aa5-4db6-9e24-90a597cdcd4a)

## RESULT:
	The simulate and synthesis multiplier using VIVADO is successfully verified.



