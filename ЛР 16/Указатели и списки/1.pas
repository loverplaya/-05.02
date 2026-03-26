type
  PNode = ^TNode;
  TNode = record
    word: string;
    count: integer;
    next: PNode;
  end;

var
  Head: PNode;
  F: Text;
  fileName: string;
  totalNodes: integer;
  currentWord: string;

function CreateNode(NewWord: string): PNode;
var p: PNode;
begin
  New(p);
  p^.word := NewWord;
  p^.count := 1;
  p^.next := nil;
  CreateNode := p;
end;

function Find(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord <> pp^.word) do 
    pp := pp^.next;
  Result := pp;
end;

function FindPlace(Head: PNode; NewWord: string): PNode;
var pp: PNode;
begin
  pp := Head;
  while (pp <> nil) and (NewWord > pp^.word) do
    pp := pp^.next;
  Result := pp;
end;

procedure AddFirst(var Head: PNode; NewNode: PNode);
begin
  NewNode^.next := Head;
  Head := NewNode;
end;

procedure AddAfter(var p: PNode; NewNode: PNode);
begin
  NewNode^.next := p^.next;
  p^.next := NewNode;
end;

procedure AddLast(var Head: PNode; NewNode: PNode);
var pp: PNode;
begin
  if Head = nil then
    AddFirst(Head, NewNode)
  else begin
    pp := Head;
    while pp^.next <> nil do
      pp := pp^.next;
    AddAfter(pp, NewNode);
  end;
end;

procedure AddBefore(var Head: PNode; p, NewNode: PNode);
var pp: PNode;
begin
  if p = Head then
    AddFirst(Head, NewNode)
  else begin
    pp := Head;
    while (pp <> nil) and (pp^.next <> p) do
      pp := pp^.next;
    if pp <> nil then 
      AddAfter(pp, NewNode);
  end;
end;

function TakeWord(var F: Text): string;
var c: char;
begin
  Result := '';
  c := ' ';
  while not eof(F) and (c <= ' ') do 
    read(F, c);
  while not eof(F) and (c > ' ') do begin
    Result := Result + c;
    read(F, c);
  end;
end;

procedure AddNode(var Head: PNode; NewWord: string);
var 
  foundNode, placeNode, newNode: PNode;
begin
  foundNode := Find(Head, NewWord);
  
  if foundNode <> nil then
    foundNode^.count := foundNode^.count + 1
  else begin
    newNode := CreateNode(NewWord);
    placeNode := FindPlace(Head, NewWord);
    
    if placeNode = nil then
      AddLast(Head, newNode)
    else
      AddBefore(Head, placeNode, newNode);
  end;
end;

procedure PrintList(Head: PNode; var total: integer);
var
  pp: PNode;
begin
  total := 0;
  pp := Head;
  Writeln('Алфавитно-частотный словарь:');
  while pp <> nil do begin
    Writeln(pp^.word, ': ', pp^.count);
    total := total + 1;
    pp := pp^.next;
  end;
end;

begin
  Head := nil;
  
  Write('Введите имя файла: ');
  Readln(fileName);
  
  Assign(F, fileName);
  Reset(F);
  
  currentWord := TakeWord(F);
  while currentWord <> '' do begin
    AddNode(Head, currentWord);
    currentWord := TakeWord(F);
  end;
  
  Close(F);
  
  PrintList(Head, totalNodes);
  Writeln('Количество различных слов: ', totalNodes);
end.