unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;
  x1, y1, x2, y2: Double;
  d2, s, a, p: Double;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.Label1Click(Sender: TObject);
begin

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  x1 := StrToFloat(Edit1.Text);
  y1 := StrToFloat(Edit2.Text);
  x2 := StrToFloat(Edit3.Text);
  y2 := StrToFloat(Edit4.Text);

  d2 := sqr(x2 - x1) + sqr(y2 - y1);

  s := d2 / 2;

  a := sqrt(s);
  p := 4 * a;

  Edit5.Text := FloatToStrF(s, ffFixed, 8, 2);
  Edit6.Text := FloatToStrF(p, ffFixed, 8, 2);

end;

end.

