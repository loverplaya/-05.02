const
  SIZE = 15;

var
  deque: array[1..SIZE] of integer;
  front, rear, count: integer;
  choice, value, i: integer;


procedure setDeque;
begin
  front := 1;
  rear := SIZE;
  count := 0;
end;


function Empty: boolean;
begin
  Empty := count = 0;
end;


function Full: boolean;
begin
  Full := count = SIZE;
end;

procedure PushFront;
begin
  if Full then
  begin
    writeln('Дек полон');
    exit;
  end;
  
  front := front - 1;
  if front < 1 then front := SIZE;
  
  deque[front] := value;
  count := count + 1;
end;

procedure PushBack;
begin
  if Full then
  begin
    writeln('Дек полон');
    exit;
  end;
  
  rear := rear + 1;
  if rear > SIZE then rear := 1;
  
  deque[rear] := value;
  count := count + 1;
end;


procedure PopFront;
begin
  if Empty then
  begin
    writeln('Дек пуст');
    exit;
  end;
  
  writeln('Удален: ', deque[front]);
  front := front + 1;
  if front > SIZE then front := 1;
  count := count - 1;
end;


procedure PopBack;
begin
  if Empty then
  begin
    writeln('Дек пуст');
    exit;
  end;
  
  writeln('Удален: ', deque[rear]);
  rear := rear - 1;
  if rear < 1 then rear := SIZE;
  count := count - 1;
end;


procedure ShowDeque;
var
  j, pos: integer;
begin
  writeln;
  write('Дек: [');
  
  if not Empty then
  begin
    pos := front;
    for j := 1 to count do
    begin
      write(' ', deque[pos]);
      pos := pos + 1;
      if pos > SIZE then pos := 1;
    end;
  end;
  
  writeln(' ]');
  writeln('Размер: ', count, '/', SIZE);
  writeln;
end;


procedure ShowMenu;
begin
  writeln('1. Добавить в начало');
  writeln('2. Добавить в конец');
  writeln('3. Удалить из начала');
  writeln('4. Удалить из конца');
  writeln('5. Показать дек');
  writeln('0. Выход');
  write('Выбор: ');
end;

begin
  setDeque;
  
  repeat
    ShowMenu;
    readln(choice);
    
    case choice of
      1: begin
           write('Число: ');
           readln(value);
           PushFront;
           ShowDeque;
         end;
      2: begin
           write('Число: ');
           readln(value);
           PushBack;
           ShowDeque;
         end;
      3: begin
           PopFront;
           ShowDeque;
         end;
      4: begin
           PopBack;
           ShowDeque;
         end;
      5: ShowDeque;
      0: writeln('Конец');
    end;
    
  until choice = 0;
end.