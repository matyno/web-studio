Program PS209;
uses crt;
var h,r:real;
    odraz:integer;
begin
  clrscr;
  writeln('zadaj vysku: '); read(h);
  writeln('zadaj polomer: '); read(r);
  odraz := 0;
  while h>r do
  begin
    h:=h*0.75;
    odraz:=odraz + 1;
    writeln('odraz cislo ', odraz , ' vyska ', h:5:2);
  end;
  writeln('pocet odrazeni: ', odraz);
  repeat until keypressed;
end.
