program fun;
uses graph, crt;

const
     Directory='C:\tp\bgi';
     {music notes}

var
   driver,mode:Integer;
   count,x,y,lx,ly,x1,y1,speed:integer;
   name,ra:string;
   entry,fghd,direction,previousdir:Char;

procedure maze;
     begin
          Initgraph(driver,mode,directory);
          Setcolor(lightgreen);
          SetFillStyle(SolidFill,lightgreen);
          {draw the maze for the llama}
          Bar(30,100,140,160);
          Bar(120,30,180,80);
          Bar(180,30,240,120);
          Bar(280,60,380,120);
          Bar(440,60,580,220);
          Bar(320,120,420,200);
          Bar(220,140,300,200);
          Bar(60,200,160,320);
          Bar(30,340,140,450);
          Bar(180,180,200,450);
          Bar(220,300,360,420);
          Bar(240,220,320,280);
          Bar(400,240,500,380);
          Bar(380,400,500,450);
          Bar(520,280,610,360);
          {cheese}
          Setcolor(yellow);
          SetFillStyle(1,yellow);
          PieSlice(560,410,30,340,30);
          SetTextStyle(3,0,3);
          OutTextXY(520,442,'CHEESE');
          SetColor(black);
          Circle(570,400,5);
          Circle(546,423,3);
          Circle(537,394,4);
          Circle(564,427,5);
          Circle(540,403,3);
          Circle(540,434,4);

     end;


begin
   maze;
   readln;

end.