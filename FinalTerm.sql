create or replace function divisible_sum_pairs(arr in number_array, k in int)
return number
is
  counter int := 0;
begin
   For j in 1..arr.count loop
     for i in 1..j-1 loop
         if (arr(i)+arr(j)) mod k = 0 then
          counter := counter+1;
          SYS.DBMS_OUTPUT.PUT_LINE('(' || i || ',' || j || ')');
         end if;
     end loop;
   end loop;
  return counter;
end;