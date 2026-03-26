begin
  var lst := new List<integer>;
  for var i := 1 to 10 do
    lst.Add(Random(1, 100));
  
  lst.Println;
  
  if lst.Count > 0 then
  begin
    var maxVal := lst.Max;
    var minVal := lst.Min;
    var maxIndex := lst.IndexOf(maxVal);
    var minIndex := lst.IndexOf(minVal);
    
    writeln($'Максимальный элемент: {maxVal}');
    writeln($'Минимальный элемент: {minVal}');
  end
  else
    writeln('Список пуст');
end.