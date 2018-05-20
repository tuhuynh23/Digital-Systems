module cau3 ( num1, num2, sum, carry);

output [3:0]sum;
output carry;

input [3:0]num1;
input [3:0]num2;

wire c[2:0];

full_adder(num1[0], num2[0], 1'b0, sum[0], c[0]);
full_adder(num1[1], num2[1], c[0], sum[1], c[1]);
full_adder(num1[2], num2[2], c[1], sum[2], c[2]);
full_adder(num1[3], num2[3], c[2], sum[3], carry);

endmodule
