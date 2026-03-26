begin
  var arr := ReadArrInteger(10);
  Writeln(arr);
  var maxIndex := arr.IndexMax;
  Writeln('Максимальный элемент: ', arr[maxIndex]);
  arr := arr[:maxIndex] + arr[maxIndex+1:];
  Writeln(arr);
end.