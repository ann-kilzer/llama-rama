


program load_bmp;

uses
  crt,graph;
Const
  Directory='c:\tp\bgi';
Var
  Driver, Mode:Integer;





Procedure BMP_display( FileName: String);

Type
 TBitMapHeader =
  Record
   bfType :             Word;
   bfSize :             LongInt;
   bfReserved :         LongInt;
   bfOffBits :          LongInt;
   biSize :             LongInt;
   biWidth :            LongInt;
   biHeight :           LongInt;
   biPlanes :           Word;
   biBitCount :         Word;
   biCompression :      LongInt;
   biSizeImage :        LongInt;
   biXPelsPerMeter :    LongInt;
   biYPelsPerMeter :    LongInt;
   biClrUsed :          LongInt;
   biClrImportant :     LongInt;
  End;

  TRGBQuad = Record
    rgbBlue,
    rgbGreen,
    rgbRed,
    rgbReserved : Byte;
  End;

  TByteArray = Array[0..50000] of byte;

Var
  f            : File;
  BitMapHeader : TBitMapHeader;


Procedure Display4 (Var f : File; BitMapHeader : TBitMapHeader);

Var
  i,j      : Integer;
  RGBQuad  : TRGBQuad;
  TwoPixel : Byte;
  Black    : Byte;
  Line     : ^TByteArray;
  number   : Word;
  BeginX,
  BeginY,
  EindY    : Integer;
  CurrentX : Integer;

Begin
  If GetMaxColor < 15 then Begin
    OutText ('This machine does not support 4 bit color.');
    Exit;
  End;

  Black := 16;
  With BitMapHeader do begin
    For i:= 0 to 15 do Begin
      BlockRead(f,RGBQuad,SizeOf(RGBQuad));
      If (LongInt(RGBQuad)=0) then Black := i;
      With RGBQuad do
        SetRGBPalette(i, rgbRed shr 4, rgbGreen shr 3, rgbBlue shr 4);
      SetPalette(i,i);
    End;

    Number := (biWidth div 2 + 3) and not 3;
    BeginX := (GetMaxX - biWidth) div 2;
    BeginY := GetMaxY - (GetMaxY - biHeight) div 2;
    EindY := BeginY+1-biHeight;
  End;

  GetMem (Line,number+1);
  For j:=BeginY downto EindY do Begin
    BlockRead(f,Line^[1],number);
    CurrentX := BeginX;
    For i:=1 to number do Begin
      TwoPixel := Line^[i];
      If TwoPixel shr 4 <> Black then PutPixel(CurrentX,j,TwoPixel shr 4);
      Inc(CurrentX);
      If TwoPixel and 15 <> Black then PutPixel(CurrentX,j,TwoPixel and 15);
      Inc(CurrentX);
    end;
  end;
  FreeMem (Line,number+1);
end;

Begin
  Assign(f,FileName);
   Reset(f,1);
  If IOResult<>0 Then exit;

  BlockRead(f,BitMapHeader,SizeOf(BitMapHeader));
  With BitMapHeader do
  Begin
    If (bfType<>19778) or (bfReserved<>0) or (biPlanes<>1) then Begin
      OutText ('Not a valid Windows BitMap File.');
      Close(f);
      Exit;
    End;
    If biCompression<>0 Then Begin
      OutText ('Cannot read compressed files.');
      Close(f);
      Exit;
    End;
    ClearDevice;
    Display4  (f, BitMapHeader);
  End;
  Close(f);
End;

var
  grDriver : Integer;
  grMode   : Integer;

begin
   grDriver := Detect;
  InitGraph(Driver,Mode,directory);
  BMP_display('c:\sent.bmp');
  readln;
  closegraph;
  halt;
end.