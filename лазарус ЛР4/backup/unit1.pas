unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn1: TButton;
    point: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ClearEntry1: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    division: TButton;
    summ: TButton;
    result: TButton;
    multiply: TButton;
    minus: TButton;
    square: TButton;
    Kop: TButton;
    del_last: TButton;
    ClearEntry: TButton;
    res_str: TEdit;
    drob: TButton;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure ClearEntry1Click(Sender: TObject);
    procedure ClearEntryClick(Sender: TObject);
    procedure del_last1Click(Sender: TObject);
    procedure del_lastClick(Sender: TObject);
    procedure divisionClick(Sender: TObject);
    procedure drobClick(Sender: TObject);
    procedure res_strChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KopClick(Sender: TObject);
    procedure minusClick(Sender: TObject);
    procedure multiplyClick(Sender: TObject);
    procedure pointClick(Sender: TObject);
    procedure resultClick(Sender: TObject);
    procedure squareClick(Sender: TObject);
    procedure summClick(Sender: TObject);
  private
  value1, value2, res: double;
  znak: string;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.res_strChange(Sender: TObject);
begin

end;

procedure TForm1.del_last1Click(Sender: TObject);
begin

end;

procedure TForm1.del_lastClick(Sender: TObject);
var s: string;
begin
  s := res_str.Text;

  if s <> '' then
     Delete(s, Length(s), 1); // если поле не пустое удалить последнее число
  if (s = '') or (s = '-') then
     s := '0';
  res_str.Text := s;
end;

procedure TForm1.divisionClick(Sender: TObject);
begin
  value1 := StrToFloatDef(res_str.Text, 0);
  znak := '/';
  res_str.Text := '';
end;

procedure TForm1.drobClick(Sender: TObject);
var temp: Double;
begin
  temp := StrToFloatDef(res_str.Text, 0);
  if temp <> 0 then
    res_str.Text := FloatToStr(1 / temp)
  else
    ShowMessage('Делить на ноль нельзя');

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '1';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  res_str.Text := res_str.Text + '9';
end;

procedure TForm1.ClearEntry1Click(Sender: TObject);
begin
  res_str.Text := '';
  value1 := 0;
  value2 := 0;
  znak := '';
end;

procedure TForm1.ClearEntryClick(Sender: TObject);
begin
  res_str.Text := '';
end;

procedure TForm1.btn0Click(Sender: TObject);
begin // добавить 0 если есть другое число либо запятая
  if (res_str.Text <> '0') or (Pos(',', res_str.Text) > 0) then
     res_str.Text := res_str.Text + '0';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  res_str.AutoSize := False;
  res_str.Height := 50;
  res_str.Font.Size := 24;
end;

procedure TForm1.KopClick(Sender: TObject);
  var temp: Double;
begin
  temp := StrToFloatDef(res_str.Text, 0);
  if temp >= 0 then
    res_str.Text := FloatToStr(Sqrt(temp))
  else
    ShowMessage('Из отрицательного числа нельзя извлечь корень');
end;

procedure TForm1.minusClick(Sender: TObject);
begin
  value1 := StrToFloatDef(res_str.Text, 0);
  znak := '-';
  res_str.Text := '';
end;

procedure TForm1.multiplyClick(Sender: TObject);
begin
  value1 := StrToFloatDef(res_str.Text, 0);
  znak := '*';
  res_str.Text := '';
end;

procedure TForm1.pointClick(Sender: TObject);
begin
  if Pos(',', res_str.Text) = 0 then
  begin
    if res_str.Text = '' then
    res_str.Text := '0,'
    else res_str.Text := res_str.Text + ',';
  end;
end;

procedure TForm1.resultClick(Sender: TObject);
begin
  value2 := StrToFloatDef(res_str.Text, 0); // второе число

  if znak = '+' then res := value1 + value2;
  if znak = '-' then res := value1 - value2;
  if znak = '*' then res := value1 * value2;
  if znak = '/' then
  begin
    if value2 <> 0 then res := value1 / value2
    else begin
      ShowMessage('Ошибка: деление на ноль!');
      Exit;
    end;
  end;

  res_str.Text := FloatToStr(res);
  znak := '';
end;

procedure TForm1.squareClick(Sender: TObject);
var b : double;
begin
  b := Sqr(StrToFloatDef(res_str.Text, 0));
  if b < 10000000 then res_str.Text := FloatToStr(b)
  else ShowMessage('Слишком большое число!');
end;

procedure TForm1.summClick(Sender: TObject);
begin
  value1 := StrToFloatDef(res_str.Text, 0); // первое число
  znak := '+'; // знак
  res_str.Text := ''; // очистка поля
end;

end.

