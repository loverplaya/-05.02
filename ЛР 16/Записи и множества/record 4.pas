type 
  toy = record
    name: string[20];
    price: integer;
    age: string[10];
  end;

begin
  var toys := new toy[3];
  
  with toys[0] do
  begin
    name := 'Пазлы';
    price := 100;
    age := '3+';
  end;
  
  with toys[1] do
  begin
    name := 'Наклейки';
    price := 150;
    age := '5+';
  end;
  
  with toys[2] do
  begin
    name := 'Краски';
    price := 200;
    age := '3+';
  end;
  
  writeln('Исходные данные:');
  for var i := 0 to 2 do
    writeln(toys[i].name, ' / ', toys[i].price, ' руб. / возраст: ', toys[i].age);
  writeln;
  
  var f: file of toy;
  Assign(f, 'toys.dat');
  Rewrite(f);
  foreach var t in toys do
    Write(f, t);
  Close(f);
  writeln;

  var toys2 := new toy[3];
  Reset(f);
  var j := 0;
  while not Eof(f) and (j < 3) do
  begin
    Read(f, toys2[j]);
    j += 1;
  end;
  Close(f);


  for var i := 0 to 2 do
    writeln(toys2[i].name, ' / ', toys2[i].price, ' руб. / возраст: ', toys2[i].age);
end.