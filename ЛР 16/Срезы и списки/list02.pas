begin
  var L1 := new List<integer>;
  for var i := 1 to 10 do
    L1 += Random(100);

    L1.Println;
  
  
  var k := L1.IndexMax;
  println('максимальный', k);
  L1.RemoveAt(k);
  
  println('результат', L1);
  
end.