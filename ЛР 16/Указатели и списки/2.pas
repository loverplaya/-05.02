begin
  var lst := new List<integer>;

  for var i := 1 to 10 do
    lst.Add(Random(1, 50));
  lst.Println;

  writeln('Четные элементы списка:');
  var evenElements := lst.Where(x -> x mod 2 = 0).ToList;
  
  if evenElements.Count > 0 then
    evenElements.Println
  else
    writeln('Четных элементов нет');
end.