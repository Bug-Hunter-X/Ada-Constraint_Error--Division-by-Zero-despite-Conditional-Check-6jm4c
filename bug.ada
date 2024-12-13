```ada
procedure Example is
   X : Integer := 10;
   Y : Integer := 0;
begin
   if Y /= 0 then
      X := X / Y;
   else
      raise Constraint_Error;
   end if;
end Example;
```
This code will cause a Constraint_Error exception if Y is 0.  The `if` statement checks for the condition, but the use of `/` will still result in a runtime error if `Y` is zero.