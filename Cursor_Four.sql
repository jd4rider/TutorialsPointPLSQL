declare 
  cursor c_customers is
    select name from customers;
    
  type c_list is table of customers.name%type index by binary_integer;
  name_list c_list;
  counter integer :=0;
begin
  for n in c_customers LOOP
    counter := counter +1;
    name_list(counter) := n.name;
    dbms_output.put_line('Customer('||counter|| '): '||name_list(counter));
  end loop;
end;  