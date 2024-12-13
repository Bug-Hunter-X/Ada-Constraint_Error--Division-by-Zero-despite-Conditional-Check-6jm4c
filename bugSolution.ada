```ada
procedure Example is
   X : Integer := 10;
   Y : Integer := 0;
begin
   begin
      if Y /= 0 then
         X := X / Y;
      else
         -- Handle the division by zero gracefully.   
         Put_Line("Division by zero attempted!");
         X := 0; -- Or take other corrective action
      end if;
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error occurred!");
         X := 0; -- Or any other appropriate error handling
   end;
end Example;
```
The solution uses an exception handler to catch the `Constraint_Error` which can still be raised despite the `if` condition in certain scenarios.  A more robust approach is always recommended.