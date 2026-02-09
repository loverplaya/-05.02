uses
  GraphABC, Fractal;

var
  scale: real := 1.0;
  offsetX: integer := 0;
  offsetY: integer := 0;
  depth: integer := 3;
  baseLength: integer := 500;


procedure RedrawAll;
begin
  LockDrawing;
  try
    
  ClearWindow(clWhite);
  

  SetBrushColor(clLightGray);
  SetPenColor(clBlack);
  SetPenWidth(1);
  

  FillRectangle(0, 0, 800, 100);
  DrawRectangle(0, 0, 800, 100);

  FillRectangle(10, 10, 110, 40);
  DrawRectangle(10, 10, 110, 40);
  SetFontColor(clBlack);
  TextOut(15, 18, 'Увеличить');

  FillRectangle(120, 10, 220, 40);
  DrawRectangle(120, 10, 220, 40);
  TextOut(125, 18, 'Уменьшить');

  FillRectangle(230, 10, 330, 40);
  DrawRectangle(230, 10, 330, 40);
  TextOut(235, 18, 'Глубина +');
  
  FillRectangle(340, 10, 440, 40);
  DrawRectangle(340, 10, 440, 40);
  TextOut(345, 18, 'Глубина -');
  
FillRectangle(10, 50, 60, 80);
DrawRectangle(10, 50, 60, 80);
TextOut(18, 58, 'Влево');

FillRectangle(70, 50, 130, 80);
DrawRectangle(70, 50, 130, 80);
TextOut(80, 58, 'Вправо');


FillRectangle(140, 50, 200, 80);
DrawRectangle(140, 50, 200, 80);
TextOut(150, 58, 'Вверх');


FillRectangle(210, 50, 270, 80);
DrawRectangle(210, 50, 270, 80);
TextOut(225, 58, 'Вниз');
  

  SetPenColor(clBlack);
  SetPenWidth(1);
  
  var currentLength := Round(baseLength * scale);
  var startX := 200 + offsetX;
  var startY := 300 + offsetY;
  
  MoveTo(startX, startY);
  DrawFractal(currentLength, 0, depth);
  
  finally
    UnlockDrawing;
    Redraw;
end;
end;


procedure Mouse(x, y, mb: integer);
begin
  if mb = 1 then
  begin

    if (x >= 10) and (x <= 110) and (y >= 10) and (y <= 40) then
    begin
      if scale < 3.0 then
        scale := scale * 1.2;
      RedrawAll;
    end;
    

    if (x >= 120) and (x <= 220) and (y >= 10) and (y <= 40) then
    begin
      if scale > 0.3 then
        scale := scale / 1.2;
      RedrawAll;
    end;
    
    if (x >= 230) and (x <= 330) and (y >= 10) and (y <= 40) then
    begin
      if depth < 5 then
        depth := depth + 1;
      RedrawAll;
    end;
    
    if (x >= 340) and (x <= 440) and (y >= 10) and (y <= 40) then
    begin
      if depth > 1 then
        depth := depth - 1;
      RedrawAll;
    end;
    
    if (x >= 10) and (x <= 60) and (y >= 50) and (y <= 80) then
    begin
      offsetX := offsetX - 30;
      RedrawAll;
    end;
    
    if (x >= 70) and (x <= 130) and (y >= 50) and (y <= 80) then
    begin
      offsetX := offsetX + 30;
      RedrawAll;
    end;
    
    if (x >= 140) and (x <= 200) and (y >= 50) and (y <= 80) then
    begin
      offsetY := offsetY - 30;
      RedrawAll;
    end;
    
    if (x >= 210) and (x <= 270) and (y >= 50) and (y <= 80) then
    begin
      offsetY := offsetY + 30;
      RedrawAll;
    end;

  end;
end;

begin

  SetWindowCaption('Кривая Минковского');
  SetWindowSize(800, 600);
  CenterWindow;
  

  OnMouseDown := Mouse;
  
  RedrawAll;
end.