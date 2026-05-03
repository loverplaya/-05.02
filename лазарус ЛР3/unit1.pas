unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  DBCtrls;

type

  { TfMain }

  TfMain = class(TForm)
    DBCalendar1: TDBCalendar;
    lClock: TLabel;
    Timer1: TTimer;
    procedure DBCalendar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  fMain: TfMain;

implementation

{$R *.lfm}

{ TfMain }

procedure TfMain.FormCreate(Sender: TObject);
begin

end;

procedure TfMain.DBCalendar1Change(Sender: TObject);
begin
end;

procedure TfMain.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = #27 then Close;
end;

procedure TfMain.Timer1Timer(Sender: TObject);
var
 i: byte;
begin
 lClock.Caption:= TimeToStr(Now);
 i:= Random(4);

 case i of
 0: DBCalendar1.Left:= DBCalendar1.Left + 50;
 1: DBCalendar1.Left:= DBCalendar1.Left - 50;
 2: DBCalendar1.Top:= DBCalendar1.Top + 50;
 3: DBCalendar1.Top:= DBCalendar1.Top - 50;
 end;

 case i of
 0: lClock.Left:= lClock.Left + 50;
 1: lClock.Left:= lClock.Left - 50;
 2: lClock.Top:= lClock.Top + 50;
 3: lClock.Top:= lClock.Top - 50;
 end;

 if DBCalendar1.Left < 0 then DBCalendar1.Left:= 0;
 if DBCalendar1.Top < 0 then DBCalendar1.Top:= 0;
 if (DBCalendar1.Left + DBCalendar1.Width) > fMain.Width then
 DBCalendar1.Left:= fMain.Width - DBCalendar1.Width;
 if (DBCalendar1.Top + DBCalendar1.Height) > fMain.Height then
 DBCalendar1.Top:= fMain.Height - DBCalendar1.Height;

 if lClock.Left < 0 then lClock.Left:= 0;
 if lClock.Top < 0 then lClock.Top:= 0;
 if (lClock.Left + lClock.Width) > fMain.Width then
 lClock.Left:= fMain.Width - lClock.Width;
 if (lClock.Top + lClock.Height) > fMain.Height then
 lClock.Top:= fMain.Height - lClock.Height;
end;


end.

