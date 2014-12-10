with ada.numerics.discrete_random;

package random is 
   subtype Lower_Case_Letter is Character range 'a'..'z';
   Range_Exception : exception;
   package My_Random_integer is New Ada.Numerics.Discrete_Random(integer);
   package My_Random_boolean is New Ada.Numerics.Discrete_Random(boolean);
   package My_Random_letter is New Ada.Numerics.Discrete_Random(Lower_Case_Letter);
   
   function Next_Integer(First, Last : Integer) return integer;
   function Next_Boolean return boolean;
   function Next_Letter return Lower_Case_letter;
   
end random;
