program laba1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
 var a,b,c,r,h,f,x, l: real;
  write ( 'введите а = ' );
  readln (a);
  write ( 'введите b = ' );
  readln (b);
  write ( 'введите h = ' );
  readln (h);
  writeln( 'Число                             Значение');
  if (h=0) or ((h>0) and (a>=b))  or ((h<0) and (a<=b) )then //защита от дураков
    begin
     if  (a=b) then
       begin
         if( a>1/(2*pi)) then
          begin
           f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;
           writeln(a:20:4 , '     ', f:20:4);
          end
         else
          begin
           writeln(a:20:4 , '     функция не определена');
          end;
       end
     else
      begin
       if (a>1/(2*pi)) then
         begin
          f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;
          writeln(a:20:4 , '     ', f:20:4);
         end
       else
        begin
         writeln(a:20:4 , '     функция не определена');
        end;
       if (b>1/(2*pi)) then
        begin
         f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
         writeln(b:20:4 , '     ', f:20:4);
        end
       else
        begin
         writeln(b:20:4 , '     функция не определена');
        end;
         end;
    end
  else
   begin
    x:=a;    //задача перемкнной
     if h>0 then
      begin
       while x<1/(2*pi) do    //добор до области определения
        begin
        writeln( x:20:4, '       функция не определена');
         x:=x+h;
        end;
       while  x<b do
        begin
          f:=  ln(ln(2*pi*x))-((abs(sin(sqrt(1.1*x))))/(x-1/7))/x ;;
          writeln(x:20:4 , '     ', f:20:4);
          x:=x+h;
        end;
                                        // защита от повторов
       l:=f;
       f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
       if abs(f-l)<0.00001 then
        write('')
       else
        writeln(b:20:4 , '     ', f:20:4);
      end
     else
      begin
       if   x>1/(2*pi)   then    // область определения
        begin
         if b>1/(2*pi) then      //если весь промежуток в оо
          begin
           while x>b do
            begin
              f:=  ln(ln(2*pi*x))-((abs(sin(sqrt(1.1*x))))/(x-1/7))/x ;
              writeln(x:20:4 , '     ', f:20:4);
              x:=x+h;
            end;
           l:=f;          // защита от повторов
           f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
           if abs(f-l)<0.00001 then
            write('')
           else
            writeln(b:20:4 , '     ', f:20:4);
          end
         else      //не весь промежуток в оо
          begin
           while x>1/(2*pi) do
            begin
              f:=  ln(ln(2*pi*x))-((abs(sin(sqrt(1.1*x))))/(x-1/7))/x ;
              writeln(x:20:4 , '     ', f:20:4);
              x:=x+h;
            end;
            while (x-b)>0.0001 do
            begin
              writeln(x:20:4 , '        функция не определена');
              x:=x+h;
            end;
           writeln(b:20:4, '        функция не определена');
          end;
        end
       else
        begin        //  если весь промежуток не взходит в оо
          writeln(x:20:4, '        функция не определена');
          writeln(b:20:4, '        функция не определена');
        end;
      end;
   end;
    writeln ('для завершения программы нажмите enter');
   readln;
end.




