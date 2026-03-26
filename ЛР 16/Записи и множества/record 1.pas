type anketa = record
  fio: string;
  birth: string;
  kurs: 1..5;
  student: string;
end;
var d: anketa;
var student: string;
begin
  d.fio := '123';
  d.birth := '11.11.2222';
  readln(d.student);
  writeln(d.fio,'/', d.birth, '/', d.student);
end.