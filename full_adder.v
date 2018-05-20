module full_adder ( num1, num2, num3, sum, carry );

output sum ;
output carry ;

input num1 ;
input num2 ;
input num3 ;
   
assign sum = num1 ^ num2 ^ num3;   
assign carry = (num1&num2) | (num2&num3) | (num3&num1);

endmodule