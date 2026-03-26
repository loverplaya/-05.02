type toy = record
        name: string;
        price: integer;
        age: string;
end;
var toys: array[1..3] of toy;
var i: integer;

begin
  with toys[1] do
  begin
    name := 'Пазлы';
    price := 100;
    age := '3+';
  end;
  with toys[2] do
  begin
    name := 'Наклейки';
    price := 150;
    age := '5+';
  end;
  with toys[3] do
  begin
    name := 'Краски';
    price := 200;
    age := '3+';
  end;
  for i := 1 to 3 do
    writeln(toys[i].name,' / ', toys[i].price,' / ',toys[i].age);
end.