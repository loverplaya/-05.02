unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  x,f : float;

implementation

uses Unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin
  x := StrToFloatDef(Edit1.text, 0.0);
  f := (1/(Power(x,2)+2)+Power(x,5)-sqrt(x));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.text := FormatFloat('0.00', f);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin

end;

end.
