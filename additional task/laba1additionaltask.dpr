program laba1additionaltask;
{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var n, a, b, x, c: integer;
begin
 write('enter N = ');
 readln(n);
 if n<=0 then
  writeln('received data error')
 else
  begin
   if n=1 then
    writeln('there are no such numbers there ')
   else
    begin
    c:=0;
    x:=n-1;
     while x>1 do
      begin
       a:=x;
       b:=n;
       while a<>0 do
        begin
         if a>=b then
          a:=a-b
         else
          b:=b-a;
        end;
       if b<>1 then
       else
        begin
         writeln(x);
         c:=c+1;
        end;
       x:=x-1;
      end;
     if c<>0 then
     else
     writeln('there are no such numbersthere ');
    end;
  end;
 readln;
end.
