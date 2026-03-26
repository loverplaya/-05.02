begin
  var n := ReadInteger('Введите число: ');
  var arr := ReadArrInteger(10);
  Writeln(arr);
  
  var minIndex := arr.IndexMin;
  Writeln('Минимальный элемент: ', arr[minIndex]);
  
   var result := arr[:minIndex] + |n| + arr[minIndex:];
  
  Writeln('Массив после вставки:');
  Print(result); 
end.