unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Math, FPImage, Graphics, JPG;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;
  a,b,c,s,p,ugol_a,ugol_b,ugol_c,p_p,x, rad_a, rad_b, rad_c : real;

implementation

uses Unit3;

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin

end;

procedure TForm3.Button1Click(Sender: TObject);
  var cos_a, cos_b: Double;
begin
  a := StrToFloatDef(Edit1.text, 0);
  b := StrToFloatDef(Edit2.text, 0);
  c := StrToFloatDef(Edit3.text, 0);

  p := a + b + c;
  p_p := p / 2;


  if (p_p > a) and (p_p > b) and (p_p > c) then
  begin
    s := sqrt(p_p * (p_p - a) * (p_p - b) * (p_p - c));
    Edit4.Text := FloatToStrF(s, ffFixed, 8, 2);


    cos_a := (sqr(b) + sqr(c) - sqr(a)) / (2 * b * c);
    cos_b := (sqr(a) + sqr(c) - sqr(b)) / (2 * a * c);

    rad_a := ArcCos(cos_a);
    rad_b := ArcCos(cos_b);

    ugol_a := (rad_a * 180) / Pi;
    ugol_b := (rad_b * 180) / Pi;
    ugol_c := 180 - (ugol_a + ugol_b);

    Edit5.Text := FloatToStrF(p, ffFixed, 8, 2);
    Edit6.Text := FloatToStrF(ugol_a, ffFixed, 8, 2);
    Edit7.Text := FloatToStrF(ugol_b, ffFixed, 8, 2);
    Edit8.Text := FloatToStrF(ugol_c, ffFixed, 8, 2);
  end
  else
  begin
    ShowMessage('Такой треугольник невозможен');
    Edit4.Text := '---';
    Edit6.Text := '0';
    Edit7.Text := '0';
    Edit8.Text := '0';
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit1.SetFocus;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin

end;

procedure TForm3.Edit3Change(Sender: TObject);
begin

end;

procedure TForm3.Edit4Change(Sender: TObject);
begin

end;

procedure TForm3.Edit5Change(Sender: TObject);
begin

end;

procedure TForm3.Edit6Change(Sender: TObject);
begin

end;

procedure TForm3.Edit7Change(Sender: TObject);
begin

end;

procedure TForm3.Edit8Change(Sender: TObject);
begin

end;

end.

