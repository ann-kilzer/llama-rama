program llamarama;

uses  graph,crt;

const
     Directory='C:\tp\bgi';
     {music notes}
     s1=200;
     s2=225;
     S3=250;
     S4=265;
     s5=300;
     s6=340;
     s7=380;
     s8=400;
     sm3=240;
var
   driver,mode:Integer;
   count,x,y,lx,ly,x1,y1,speed:integer;
   name,ra:string;
   entry,fghd,direction,previousdir:Char;

procedure llamasong;
   begin
          {Theme song}
          sound(s1);
          delay(500);
          nosound;
          delay(30);

          sound(s1);
          delay(500);
          nosound;
          delay(30);

          sound(s2);
          delay(400);
          nosound;
          delay(30);

          sound(s3);
          delay(600);
          nosound;
          delay(30);

          sound(s1);
          delay(500);
          nosound;
          delay(30);

          sound(s8);
          delay(600);
          nosound;
          delay(30);

          sound(s7);
          delay(300);
          nosound;
          delay(30);

          sound(s8);
          delay(500);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s3);
          delay(80);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s3);
          delay(80);
          nosound;
          delay(30);

          sound(s5);
          delay(50);
          nosound;
          delay(30);

          sound(s3);
          delay(50);
          nosound;
          delay(30);

          sound(s5);
          delay(50);
          nosound;
          delay(30);

          sound(s3);
          delay(50);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s3);
          delay(80);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s3);
          delay(80);
          nosound;
          delay(30);

          sound(s6);
          delay(80);
          nosound;
          delay(30);

          sound(s4);
          delay(80);
          nosound;
          delay(30);

          sound(s6);
          delay(80);
          nosound;
          delay(30);

          sound(s4);
          delay(80);
          nosound;
          delay(30);

          sound(s7);
          delay(80);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s7);
          delay(80);
          nosound;
          delay(30);

          sound(s5);
          delay(80);
          nosound;
          delay(30);

          sound(s8);
          delay(80);
          nosound;
          delay(30);

          sound(s6);
          delay(80);
          nosound;
          delay(30);

          sound(s8);
          delay(80);
          nosound;
          delay(30);

          sound(s6);
          delay(80);
          nosound;
          delay(30);

          sound(2000);
          delay(1000);
          nosound;

   end;

procedure startup;
   begin
        initgraph(driver,mode,directory);
        {llama picture}
        SetbkColor(1);
        Setcolor(lightmagenta);
        SetFillStyle(1,lightmagenta);
        {body}
        Bar(200,150,400,250);
        {head}
        Line(150,80,220,150);
        Line(150,80,90,130);
        Line(90,130,120,160);
        Line(120,160,150,140);
        Line(150,140,200,250);
        Floodfill(150,90,lightmagenta);
        {tail}
        Arc(400,120,270,330,30);
        Arc(380,118,270,340,50);
        FloodFill(402,160,lightmagenta);
        {legs}
        Bar(200,250,215,320);
        Bar(400,250,385,320);
        Bar(220,250,235,320);
        Bar(380,250,365,320);
        {ears}
        Line(150,80,160,60);
        Line(150,80,140,60);
        Line(160,60,158,90);
        Line(140,60,142,90);
        SetFillStyle(1,magenta);
        FloodFill(152,80,lightmagenta);
        FloodFill(148,80,lightmagenta);
        {eye}
        SetColor(8);
        SetFillStyle(1,8);
        Circle(140,107,5);
        FloodFill(140,107,8);

        {llamasong;}
        For count:=1 to 1000 do
           begin
              SetColor(random(15));
              SetTextStyle(3,0,7);
              OutTextXY(100,350,'Llama-Rama');
           end;
   end;

procedure askname;
          begin
               Closegraph;

               WriteLn('___    ___        ___     ___  ___     ___    ');
               WriteLn('| |    | |       /   \    |  \/  |    /   \   ');
               WriteLn('| |    | |      /  ^  \   |      |   /  ^  \  ');
               WriteLn('| ~~~~ | ~~~~  /  / \  \  | |\/| |  /  / \  \ ');
               WriteLN('~~~~~~ ~~~~~~ ~~~~   ~~~~ ~~~  ~~~ ~~~~   ~~~~');
               WriteLn(' ______        ___     ___  ___     ___    ');
               WriteLn(' | [)  )      /   \    |  \/  |    /   \  ');
               WriteLn(' |     \     /  ^  \   |      |   /  ^  \  ');
               WriteLn(' | | \  \   /  / \  \  | |\/| |  /  / \  \ ');
               WriteLN(' ~~~  ~~~~ ~~~~   ~~~~ ~~~  ~~~ ~~~~   ~~~~');
               WriteLN;
               WriteLN;
               WriteLn('    By Dennis Webber and Ann Kilzer');
               WriteLN;
               WriteLn('******************************************************************************');
               WriteLN;
               WriteLN('What is your name?');
               ReadLN(Name);
          end;

procedure instructions;
  begin
       initgraph(driver,mode,directory);
       SetTextStyle(1,0,3);
       SetColor(white);
       OutTextXY(100,200,'How to Play Llama-Rama:');
       OutTExtXY(100,220,'1.  Press k to move the llama down.');
       repeat
             SetFillStyle(1,Black);
             Bar(0,0,640,50);
             outtextxy(x,y,name);
             x:=x-1;
             delay(10);
             if x<=-8 then
             x:=640;
       Until keypressed;
       Closegraph;
  end;

procedure up;
     begin
         previousdir:=Direction;
         repeat
               Ly:=Ly-speed;
               Bar(lx,ly,(lx-10),(ly-10));
               Delay (50);
               ClearDevice;

         until keypressed;
     end;

procedure left;
     begin
          previousdir:=Direction;
          repeat
               Lx:=Lx - speed;
               Bar(lx,ly,(lx-10),(ly-10));
               Delay(50);
               ClearDevice;
          until keypressed;
     end;

procedure down;
     begin
          previousdir:=Direction;
          repeat
                Ly:=Ly+speed;
                Bar(lx,ly,(lx-10),(ly-10));
                Delay (50);
                ClearDevice;
          until keypressed;
     end;

procedure right;
     begin
          previousdir:=Direction;
          repeat
                Lx:=Lx+speed;
                Bar(lx,ly,(lx-10),(ly-10));
                Delay (50);
                ClearDevice;
          until keypressed;
     end;


procedure game;
     begin
          initgraph(driver,mode,directory);

          SetColor(lightmagenta);
          SetFillStyle(1,lightmagenta);
          Lx:=100;
          Ly:=100;
          speed:=2;
          {draw boundaries}
          previousdir:='l';
          repeat

                Direction:=Readkey;
                if (direction<>'i')and(direction<>'j')and(direction<>'l')and(direction<>'k') then
                      Direction:=previousdir;
                case direction of
                     'i':up;
                     'j':left;
                     'l':right;
                     'k':down;
                end;



                {test if the llama has run into the wall}
          until (Lx>640);


                      {repeat
            fghd:=readkey;
            setcolor(random(12345));
            settextstyle(random(10),0,random(72));
            outtextxy(random(640),random(480),fghd);
          until(fghd='`');}
          ReadLn;
          Closegraph;

     end;

procedure mainmenu;
     begin
          repeat
              ClrScr;
              WriteLn('MAIN MENU');
              WriteLN;
              WriteLN('[I]  Instructions');
              WriteLn('[P]  Play Llama-Rama');
              WriteLN('[Q]  Quit');
              ReadLn(entry);
              case entry of
                   'i', 'I':instructions   ;
                   'p', 'P':game   ;
              end;


          until (entry='Q') or (entry='q');
     end;

begin

    startup;
    askname;

    mainmenu;
    ReadLn;
    Nosound;
end.