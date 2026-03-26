begin
  var n := ReadInteger();
  var ending: string;
  
  if (n mod 100 in [11..14]) then
    ending := 'лет'
  else
    case n mod 10 of
      1: ending := 'год';
      2, 3, 4: ending := 'года';
      else ending := 'лет';
    end;
  writeln(n, ' ', ending);
end.