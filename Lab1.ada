------------------------------------
--- PP-1                         ---
--- Lab 1: Packages in Ada       ---
--- F1: C = A + SORT(B) *(MA*MZ) ---
--- F2: MD = MIN(MA)*MB*MC       ---
--- F3: A = MB*MC+ MM            ---
--- Borisov Olexander            ---
--- IP-22                        ---
--- 08.09.2014                   ---
------------------------------------

with Data;
package Data_3 is new Data(3);

with Ada.Text_IO, Data_3, Ada.Integer_Text_IO;
use Ada.Text_IO, Data_3, Ada.Integer_Text_IO;

procedure Main is
	
	A, B, func1_result : vector;
	MA, MB, MC, MZ, MM, Func2_Result, func3_Result : Matrix;

begin	
	-- Input
	Put_Line("Enter the vector A:");
	Get_Vector(A);
	Put_Line("Enter the vector B:");
	Get_Vector(B);
	Put_Line("Enter the matrix MA:");
	Get_Matrix(MA);
	Put_Line("Enter the matrix MB:");
	Get_Matrix(MB);
	Put_Line("Enter the matrix MC:");
	Get_Matrix(MC);
	Put_Line("Enter the matrix MZ:");
	Get_Matrix(MZ);
	Put_Line("Enter the matrix MM:");
	Get_Matrix(MM);
	-- Processing
	Func1(A, B, MA, MZ, Func1_Result);
	Func2(MA, MB, MC, Func2_Result);
	Func3(MB, MC, MM, Func3_Result);
	-- Output
	Put_Line("Func1 Result:");
	Print_Vector(Func1_Result);
	Put_Line("Func2 Result:");
	Print_Matrix(Func2_Result);
	Put_Line("Func3 Result:");
	Print_Vector(Func3_Result);
end Main;