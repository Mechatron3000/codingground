Program HelloWorld(output);
var
    D,R : TextFile;
    temp: array [1..31] of integer;
    n:integer;
    
Procedure WriteTo();
var i : integer;
begin
    assign(R,'Rez.txt');
    rewrite(R);
    writeln(R,n);
    for i := 1 to n do
    begin
        write(R,temp[i]);
    end;
    Close(R);
end;

Procedure ReadFrom();
var i : integer;
begin
    assign(D,'Duom.txt');
    reset(D);
    readln(D,n);
    for i := 1 to n do
    begin
        read(D,temp[i]);
    end;
    Close(D);
end;

function vidutineTemp():real;
var i,sum : integer;
begin
    for i := 1 to n do
    begin
        sum := sum + temp[i];
    end;
    vidutineTemp := sum/n;
end;

begin
    ReadFrom();
    WriteTo();
end.