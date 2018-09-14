Program Dancer;
uses graph,crt;

const
  directory='c:\tp\bgi';

var
  x,y,x1,y1,driver,mode:integer;
procedure dance;
  begin
    repeat
      x:=random(640);
      y:=random(480);
      x1:=random(640);
      y1:=random(480);
      cleardevice;
      setcolor(random(12345));
      setbkcolor(random(12345));
      line(x,y,x1,y1);
      settextstyle(Random(10),random(1),random(20));
      outtextxy(x,y,'YOU WIN!!!');
      settextstyle(Random(10),random(1),random(20));
      outtextxy(x1,y1,'LLAMA!!!!!');
      delay(100);
    until keypressed;

  end;
begin
  randomize;
  initgraph(driver,mode,directory);
  dance;
end.