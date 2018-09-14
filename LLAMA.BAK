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
   count,fghd,x,y,lx,ly,x1,y1,speed,speed2,seound,level,count2,ouch,r,rr,rrr,rrrr,rrrrr,rrrrrr:integer;
   name,ra:string;
   crash,cheese,valid:boolean;
   entry,direction,previousdir,up2,down2,left2,right2,f:Char;


procedure maze;
     begin
          Setcolor(red);
          line(30,30,610,30);
          line(610,30,610,450);
          line(610,450,30,450);
          line(30,450,30,30);
          SetFillStyle(3,blue);
          FloodFill(1,1,red);
          Setcolor(lightgreen);
          SetFillStyle(random(10)+1,lightgreen);
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
          Setcolor(lightmagenta);
          SetFillStyle(Solidfill,lightmagenta);
     end;

procedure kablamm;      {you lose}
  begin
    {dead llama}
    Line(lx-10,ly-8,lx-7,ly+4);
    line(lx,ly,lx-4,ly-10);
    line(lx+2,ly+4,Lx-8,ly-4);
    line(lx+7,ly-3,Lx+2,ly-9);
    Line(lx,ly,lx-5,ly+5);
    line(lx,ly,lx-4,ly+6);
    line(lx+2,ly+4,Lx-2,ly-3);
    line(lx+3,ly-5,Lx+4,ly-5);
    Line(lx-3,ly+4,lx-3,ly+2);
    line(lx+2,ly-4,lx,ly+1);
    line(lx+6,ly+3,Lx,ly-1);
    line(lx+5,ly-3,Lx+5,ly-4);
    {sound}
    for ouch:=1 to 100 do
        begin
             Sound(random (800));
             delay(10);
        end;
    nosound;
    ClearDevice;
    settextstyle(9,0,8);
    outtextxy(0,220,'YOU LOST!!!!!');
    For ouch:=1 to 25 do
      begin
           setcolor(random(12345));
           circle(random(640),random(480),(random(40)));
           sound(random(5234));
           delay(random(234));
      end;
    nosound;
    fghd:=1;
  end;

procedure test;
  begin
    if {outside boundaries}(Lx<=40) or (ly<=40) or (ly>=450) or (lx>=610) or
    {green boxes} {1}((lx>=30)and(lx<=150) and (ly>=100) and (ly<=170)) or
                  {2}((lx>=120)and(lx<=190) and (ly>=30) and (ly<=90)) or
                  {3}((lx>=180)and(lx<=250) and (ly>=30) and (ly<=130)) or
                  {4}((lx>=220)and(lx<=310) and (ly>=140) and (ly<=210)) or
                  {5}((lx>=280)and(lx<=390) and (ly>=60) and (ly<=130)) or
                  {6}((lx>=320)and(lx<=430) and (ly>=120) and (ly<=210)) or
                  {7}((lx>=440)and(lx<=590) and (ly>=60) and (ly<=230)) or
                  {8}((lx>=60)and(lx<=170) and (ly>=200) and (ly<=330)) or
                  {9}((lx>=30)and(lx<=150) and (ly>=340) and (ly<=460)) or
                  {10}((lx>=180)and(lx<=210) and (ly>=180) and (ly<=460)) or
                  {11}((lx>=240)and(lx<=330) and (ly>=220) and (ly<=290)) or
                  {12}((lx>=220)and(lx<=370) and (ly>=300) and (ly<=430)) or
                  {13}((lx>=400)and(lx<=510) and (ly>=240) and (ly<=390)) or
                  {14}((lx>=520)and(lx<=620) and (ly>=280) and (ly<=370)) or
                  {15}((lx>=380)and(lx<=510) and (ly>=400) and (ly<=460))
                  then
                      crash:=true;
                  if (lx>=530) and (ly>=380) and (lx<610) and (ly<450) then
                      cheese:=true;

  end;
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
        llamasong;
        For count:=1 to 1000 do
           begin
              SetColor(random(15));
              SetTextStyle(3,0,7);
              OutTextXY(100,350,'Llama-Rama');
           end;
    end;


procedure pickkeys;
          begin
               ClrScr;
               Textcolor(13);
               Write('Enter key for up: ');
               readln(up2);
               repeat
                     Write('Enter key for down: ');
                     readln(down2);
                     if (down2=up2) then
                        WriteLN('Invalid Entry');
               until (down2<>up2);
               repeat
                     write('Enter key for left: ');
                     readln(left2);
                     if (down2=left2) or (up2=left2) then
                        Writeln('Invalid Entry');
               until (down2<>left2) and (up2<>left2);
               repeat
                     write('Enter key for right: ');
                     readln(right2);
                     if (down2=right2) or (left2=right2) or (up2=right2) then
                        Writeln('Invalid Entry');
               until (down2<>right2) and (left2<>right2) and (up2<>right2);
               TEXTCOLOR(15);
               ClrScr;
          end;

procedure magicscreensaver;
          begin
          rrrrrr:=0;
          initgraph(driver,mode,directory);
          repeat
             rrrrrr:=rrrrrr+1;
             r:=random(640);
             rr:=random(480);
             rrr:=random(640);
             rrrr:=random(480);
             rrrrr:=random(640);
             setcolor(random(12345));
             settextstyle(random(10),0,Random(72));
             circle(r,rr,rrr);
             outtextxy(rrrr,rrrrr,name);
             sound(random(12345));
             if rrrrrr=60 then
                 begin
                        sound(random(400)+125);
                        delay(1000);
                        rrrrrr:=0;
                 end;
             cleardevice;
          until keypressed;
          nosound;
          Closegraph;
       end;

procedure askname;
          begin
                Closegraph;
                textcolor(25);
                WriteLn('___    ___        ___     ___  ___     ___    ');
                textcolor(26);
                WriteLn('| |    | |       /   \    |  \/  |    /   \   ');
                textcolor(27);
                WriteLn('| |    | |      /  ^  \   |      |   /  ^  \  ');
                textcolor(28);
                WriteLn('| ~~~~ | ~~~~  /  / \  \  | |\/| |  /  / \  \ ');
                textcolor(29);
                WriteLN('~~~~~~ ~~~~~~ ~~~~   ~~~~ ~~~  ~~~ ~~~~   ~~~~');
                textcolor(25);
                WriteLn(' ______        ___     ___  ___     ___    ');
                textcolor(26);
                WriteLn(' | [)  )      /   \    |  \/  |    /   \  ');
                textcolor(27);
                WriteLn(' |     \     /  ^  \   |      |   /  ^  \  ');
                textcolor(28);
                WriteLn(' | | \  \   /  / \  \  | |\/| |  /  / \  \  ');
                textcolor(29);
                WriteLN(' ~~~  ~~~~ ~~~~   ~~~~ ~~~  ~~~ ~~~~   ~~~~');
                WriteLN;
                WriteLN;
                textcolor(5);
                WriteLn('    By Dennis Webber and Ann Kilzer');
                WriteLN;
                textcolor(30);
                WriteLn('******************************************************************************');
                WriteLN;
                textcolor(white);
                WriteLN('What is your name?');
                ReadLN(Name);
                pickkeys;
end;


procedure instructions;
  begin
       initgraph(driver,mode,directory);
       SetTextStyle(7,0,3);
       SetColor(white);
       OutTextXY(150,250,'Welcome to Llama-Rama!!!');
           {cheese}
       Setcolor(yellow);
       SetFillStyle(1,yellow);
       PieSlice(560,410,30,340,30);
       SetTextStyle(3,0,3);
       SetColor(black);
       Circle(570,400,5);
       Circle(546,423,3);
       Circle(537,394,4);
       Circle(564,427,5);
       Circle(540,403,3);
       Circle(540,434,4);
             {little llama}
       sETCOLOR(13);
       sETfILLSTYLE(1,13);
       BAR(80,400,120,420);
       {head}
       Line(117,400,130,383);
       LIne(130,383,140,393);
       line(140,393,135,397);
       line(135,397,130,395);
       line(130,395,120,410);
       FloodFill(122,400,13);
       {ears}
       line(130,383,133,380);
       line(130,383,127,380);
       {tail}
       line(80,400,75,397);
       {eye}
       SetColor(0);
       Circle(130,387,1);
       repeat
                    {legs1}
              setcolor(13);
              setfillstyle(1,13);
              line(80,420,70,435);
              line(120,420,130,435);
              Line(83,420,73,435);
              line(117,420,127,435);
              line(70,435,73,435);
              line(130,435,127,435);
              FloodFill(128,434,13);
              FloodFill(72,434,13);

             SetFillStyle(1,Black);
             {name}
             Bar(0,0,640,50);
             outtextxy(x,y,name);
             x:=x-1;
             delay(10);
             if x<=-8 then
                x:=640;
             Bar(0,420,150,450);

             {legs2}
             setcolor(13);
             setfillstyle(1,13);
             bar(80,420,83,435);
             bar(120,420,117,435);

             SetFillStyle(1,Black);

             {name}
             Bar(0,0,640,50);
             outtextxy(x,y,name);
             x:=x-1;
             delay(10);
             if x<=-8 then
                x:=640;
             Bar(0,420,150,450);

       Until keypressed;
       Closegraph;
       textcolor(5);
       Writeln('Welcome');
       Textcolor(white);
       writeln('1. Press ',up2,' to move up.');
       writeln('2. Press ',down2,' to move down.');
       writeln('3. Press ',left2,' to move left.');
       writeln('4. Press ',right2,' to move right.');
       WriteLn('5. Try not to run into the walls of the maze.');
       Writeln('6. GET TO THE CHEEEEEEEEESSSSSSSSEEEEEEEEEEE!!!!!!!!!!!');
       Writeln('   The Cheese is in the lower right corner of the maze.');
       readln;
       readln;
  end;


procedure win;
    begin
        ClearDevice;
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
        Bar(200,250,265,300);
        Bar(400,250,385,300);
        Bar(220,250,235,300);
        Bar(380,250,335,300);
               {ears}
        Line(150,80,160,60);
        Line(150,80,140,60);
        Line(160,60,158,90);
        Line(140,60,142,90);
        SetFillStyle(1,lightmagenta);
        FloodFill(152,80,lightmagenta);
        FloodFill(148,80,lightmagenta);
        {eye}
        SetColor(8);
        SetFillStyle(1,8);
        Circle(140,107,5);
        FloodFill(140,107,8);
        settextstyle(3,0,2);
        speed2:=900;
           {dance}
        repeat
                 SetFillStyle(1,lightmagenta);
                 Setcolor(lightmagenta);
                 Bar(200,240,225,330);
                 Bar(400,240,385,330);
                 Bar(240,240,255,330);
                 Bar(380,240,335,330);
                 delay (speed2);
                 SetColor(blue);
                 Setfillstyle(1,blue);
                 Bar(100,250,500,400);
                 SetFillStyle(1,lightmagenta);
                 Setcolor(lightmagenta);
                 Bar(200,220,205,370);
                 Bar(400,220,335,370);
                 Bar(220,220,215,370);
                 Bar(380,220,315,370);
                 delay (speed2);
                 SetColor(blue);
                 Setfillstyle(1,blue);
                 Bar(100,250,500,400);
                 FloodFill(402,160,lightmagenta);
                 while speed2>0 do
                      begin
                           speed2:=speed2-15;
                      end;
                 seound:=seound+30;
                 setcolor(random(45));
                 settextstyle(5,0,10);
                 outtextxy(0,0,'YOU WON!');
                 sound(seound);
        until keypressed;
        nosound;
    end;

procedure win2;
    begin
        ClearDevice;
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
        Bar(200,250,265,300);
        Bar(400,250,385,300);
        Bar(220,250,235,300);
        Bar(380,250,335,300);
             {ears}
        Line(150,80,160,60);
        Line(150,80,140,60);
        Line(160,60,158,90);
        Line(140,60,142,90);
        SetFillStyle(1,lightmagenta);
        FloodFill(152,80,lightmagenta);
        FloodFill(148,80,lightmagenta);
        {eye}
        SetColor(8);
        SetFillStyle(1,8);
        Circle(140,107,5);
        FloodFill(140,107,8);
        settextstyle(3,0,2);
        speed2:=900;
                {dance}
        repeat
                SetFillStyle(1,lightmagenta);
                Setcolor(lightmagenta);
                Bar(200,240,225,330);
                Bar(400,240,385,330);
                Bar(240,240,255,330);
                Bar(380,240,335,330);
                delay (speed2);
                SetColor(blue);
                Setfillstyle(1,blue);
                Bar(100,250,500,400);

                SetFillStyle(1,lightmagenta);
                Setcolor(lightmagenta);
                Bar(200,220,205,370);
                Bar(400,220,335,370);
                Bar(220,220,215,370);
                Bar(380,220,315,370);
                delay (speed2);
                SetColor(blue);
                Setfillstyle(1,blue);
                Bar(100,250,500,400);

                 FloodFill(402,160,lightmagenta);
                 while speed2>0 do
                      begin
                           speed2:=speed2-15;
                      end;
                 seound:=seound+30;
                 setcolor(random(45));
                 settextstyle(5,0,10);
                 outtextxy(0,0,'YOU WON!');
                 Outtextxy(100,200,'Level 5');
                 sound(seound);
        until keypressed;
        nosound;
        ClearDevice;
        For count2:=1 to 100 do
            begin
                 f:=readkey;
                 setcolor(random(12345));
                 settextstyle(random(10),0,random(72));
                 outtextxy(random(640),random(480),f);
            end;
        SetTExtstyle(1,0,5);
        Outtextxy(100,0,'Press Enter')
     end;


{procedures for moving the llama}
procedure move;
          begin
               if level=0 then
                  speed:=random(4)+1;
               SetFillStyle(1,lightmagenta);
               Bar(lx,ly,(lx-10),(ly-10));
               Delay (50);
               SetFillStyle(1,black);
               Bar(lx,ly,(lx-10),(ly-10));
               Bar(31,31,118,90);
               test;
                if level=0 then
                 speed:=random(5)+1;
          end;

procedure up;
     begin
         previousdir:=Direction;
         sound(100);
         delay(20);
         nosound;
         repeat
               Ly:=Ly-speed;
               move;
         until keypressed or (crash=true)or(cheese=true);
     end;

procedure left;
     begin
         previousdir:=Direction;
         sound(100);
         delay(20);
         nosound;
         repeat
               Lx:=Lx - speed;
               move;
         until keypressed or (crash=true)or (cheese=true);
     end;

procedure down;
     begin
          previousdir:=Direction;
          sound(100);
          delay(20);
          nosound;
          repeat
                Ly:=Ly+speed;
                move;
          until keypressed or (crash=true) or (cheese=true);
     end;

procedure right;
     begin
          previousdir:=Direction;
          sound(100);
          delay(20);
          nosound;
          repeat
                Lx:=Lx+speed;
                move;
          until keypressed or (crash=true) or (cheese=true);
     end;


procedure game;
     begin
          ClrScr;
          valid:=false;
          repeat
                textcolor(14);
                WriteLN('Choose a Level from 1 to 5.  Level 5 is the hardest.  Or choose 0 for random.');
                ReadLn(level);
                textcolor(white);
                if (level>5) or (level<0) then
                        begin
                                 Textcolor(red);
                                 Writeln('Invalid Entry')
                        end
                else
                    valid:=true;
          until valid=true;
          speed:=level;
          {graphics mode}
          initgraph(driver,mode,directory);
          SetColor(lightmagenta);
          SetFillStyle(1,lightmagenta);
          Lx:=100;
          Ly:=70;
          crash:=false;
          cheese:=false;
          previousdir:=right2;
          Bar(lx,ly,(lx-10),(ly-10));
          maze;
          repeat
                Direction:=Readkey;
                if (direction<>up2)and(direction<>down2)and(direction<>right2)and(direction<>left2) then
                      Direction:=previousdir;
                if direction=up2 then
                    up;
                if direction=left2 then
                    left;
                if direction=down2 then
                    down;
                if direction=right2 then
                    right;
                {test if the llama has run into the wall}
          until (crash=true) or (cheese=true);
          if (crash=true) then
             kablamm;
          if (cheese=true) then
             if (level=5) then
                win2
             else
                 win;
          ReadLn;
          Closegraph;
     end;

procedure sing;
     begin
        initgraph(driver,mode,directory);
        {llama picture}
        SetbkColor(2);
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
        {name}
        llamasong;
        SetColor(blue);
        SettextStyle(4,0,5);
        OutTextXY(200,400,name);
        ReadLN;
        Closegraph;
     end;

procedure mainmenu;
     begin
          repeat
              ClrScr;
              Textcolor(lightmagenta);
              WriteLn('LLAMA-RAMA');
              Textcolor(green);
              WriteLn('MAIN MENU');
              WriteLN;
              textcolor(5);
              Write('[I]');
              textcolor(15);
              Writeln('  Instructions');
              textcolor(5);
              Write('[S]');
              textcolor(15);
              Writeln('  Set controls');
              textcolor(5);
              Write('[L]');
              textcolor(15);
              WritelN('  Listen to the Llama song');
              textcolor(5);
              Write('[P]');
              textcolor(15);
              Writeln('  Play Llama-Rama');
              textcolor(5);
              Write('[M]');
              textcolor(15);
              WriteLN('  Magic Screensaver');
              textcolor(5);
              Write('[Q]');
              textcolor(15);
              WritelN('  Quit');
              ReadLn(entry);
              case entry of
                   'i', 'I':instructions   ;
                   'p', 'P':game   ;
                   's', 'S':pickkeys;
                   'l', 'L':sing;
                   'm', 'M':magicscreensaver;
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
