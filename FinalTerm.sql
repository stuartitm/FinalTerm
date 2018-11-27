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

create or replace function find_digits(n in int)
return number
is
  dec int := 10;
  counter int :=0;
  current_num int;
  last_num int;
begin
  last_num:=n;
  while round(last_num/dec,1)>0 loop
    current_num:=(round(last_num/dec,1) - round(last_num/dec,0))*dec;
    if current_num <> 0 and n mod current_num = 0 then
      counter := counter+1;
    end if;
    last_num := last_num/dec;
  end loop;
  return counter;
end;