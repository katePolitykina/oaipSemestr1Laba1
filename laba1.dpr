program laba1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
 var a,b,h,f,l: real;
  write ( '������� � = ' );
  readln (a);
  write ( '������� b = ' );
  readln (b);
  write ( '������� h = ' );
  readln (h);
  writeln( '�����                             ��������');
  if (h=0) or ((h>0) and (a>=b))  or ((h<0) and (a<=b) )then //������ �� �������
    begin
     if( a>1/(2*pi)) then
      begin
      f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;
      writeln(a:20:4 , '     ', f:20:4);
      end
     else
      begin
      writeln(a:20:4 , '     ������� �� ����������');
      end;
     if a=b then
     else
      if( b>1/(2*pi)) then
      begin
      f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
      writeln(b:20:4 , '     ', f:20:4);
      end
     else
      begin
      writeln(b:20:4 , '     ������� �� ����������');
      end;
    end
  else
   begin
     if h>0 then
      begin
       while a<1/(2*pi) do    //����� �� ������� �����������
        begin
        writeln( a:20:4, '       ������� �� ����������');
         a:=a+h;
        end;
       while  a<b do
        begin
          f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;;
          writeln(a:20:4 , '     ', f:20:4);
          a:=a+h;
        end;
       l:=f;                                      // ������ �� ��������
       f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
       if abs(f-l)<0.00001 then
        write('')
       else
        writeln(b:20:4 , '     ', f:20:4);
      end
     else
      begin
       if   a>1/(2*pi)   then    // ������� �����������
        begin
         if b>1/(2*pi) then      //���� ���� ���������� � ��
          begin
           while a>b do
            begin
              f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;
              writeln(a:20:4 , '     ', f:20:4);
              a:=a+h;
            end;
           l:=f;          // ������ �� ��������
           f:=  ln(ln(2*pi*b))-((abs(sin(sqrt(1.1*b))))/(b-1/7))/b ;
           if abs(f-l)<0.00001 then
            write('')
           else
            writeln(b:20:4 , '     ', f:20:4);
          end
         else      //�� ���� ���������� � ��
          begin
           while a>1/(2*pi) do
            begin
              f:=  ln(ln(2*pi*a))-((abs(sin(sqrt(1.1*a))))/(a-1/7))/a ;
              writeln(a:20:4 , '     ', f:20:4);
              a:=a+h;
            end;
            while (a-b)>0.0001 do
            begin
              writeln(a:20:4 , '        ������� �� ����������');
              a:=a+h;
            end;
           writeln(b:20:4, '        ������� �� ����������');
          end;
        end
       else
        begin        //  ���� ���� ���������� �� ������� � ��
          writeln(a:20:4, '        ������� �� ����������');
          writeln(b:20:4, '        ������� �� ����������');
        end;
      end;
   end;
    writeln ('��� ���������� ��������� ������� enter');
   readln;
end.
