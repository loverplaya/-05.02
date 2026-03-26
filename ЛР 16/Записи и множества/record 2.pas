type anketa = record
        fio: string;
        birth: string;
        kurs: 1..5;
end;
var students: array[1..3] of anketa;
var i: integer;
begin
  students[1].fio := 'Стулов Ф.Ф';
  students[1].birth := '1999.12.2';
  students[1].kurs := 1;
  
  students[2].fio := 'Столов А.А';
  students[2].birth := '2000.11.11';
  students[2].kurs := 2;
  
  students[3].fio := 'Полов А.М';
  students[3].birth := '1980.11.11';
  students[3].kurs := 3;
 
  for i := 1 to 3 do
    begin
    writeln('ФИО: ', students[i].fio);
    writeln('Дата Рождения: ', students[i].birth);
    writeln('Курс: ', students[i].kurs);
    writeln();
    end;
end.