package body random is
   
   Gen_Integer : My_Random_integer.Generator;
   Gen_Boolean : My_Random_Boolean.Generator;
   Gen_Letter : My_Random_Letter.Generator;
   
   function Next_Integer(First, Last : Integer) return integer is
      Length : Integer;
   begin
      if(First>Last) then
	 raise Range_exception;
      else
	 Length := Last-First+1; 
	 return (My_Random_integer.Random(Gen_integer) mod Length)+first;
      end if;
      
   end Next_integer;

   function Next_Letter return Lower_Case_letter is

   begin
      return (My_Random_Letter.Random(Gen_Letter));
   end Next_Letter;
   
   function Next_Boolean return boolean is

   begin
      return (My_Random_Boolean.Random(Gen_Boolean));
   end Next_Boolean;

begin
   My_Random_Letter.reset(Gen_Letter);
   My_Random_integer.reset(Gen_integer);
   My_Random_Boolean.reset(Gen_Boolean);
end random;
