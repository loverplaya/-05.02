unit Fractal;

interface

uses GraphABC;

procedure DrawFractal(len, angle: real; n: integer);


implementation

procedure DrawFractal(len, angle: real; n: integer);
begin
  if n = 0 then
    LineRel(Round(len * cos(angle)), Round(-len * sin(angle))) // база рекурсии
  else
  begin
    var l := len / 4; // параметризация
    DrawFractal(l, angle, n - 1); // декомпозиция
    DrawFractal(l, angle + Pi/2, n - 1); 
    DrawFractal(l, angle, n - 1);
    DrawFractal(l, angle - Pi/2, n - 1);
    DrawFractal(l, angle - Pi/2, n - 1);
    DrawFractal(l, angle, n - 1);
    DrawFractal(l, angle + Pi/2, n - 1);
    DrawFractal(l, angle, n - 1);
  end;
end;
end.