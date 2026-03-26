begin
  var i_ptr: ^integer;
  var i: integer;
  i := 2;
  i_ptr := @i;
  Writeln(i_ptr^);
end.