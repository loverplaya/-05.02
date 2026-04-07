unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Math;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
  x,y, f: double;

implementation

 uses Unit4;
{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  x := StrToFloat(Edit1.Text);
  y := StrToFloat(Edit2.Text);
  f := Power((x + 1) / (x - 1), x) + 18 * x * (y * y);

  Edit3.Text := FloatToStr(f);

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit1.SetFocus;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Form5.Show;
end;

end.

