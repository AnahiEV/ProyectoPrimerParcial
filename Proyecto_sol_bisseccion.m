%Proyecto de métodos numericos
%Equipo 2, proyeto: reacciones enzimaticas
%función 1*x/1+x
clear, clc
h = input('ingrese funcion'); 
f = inline(h);
a = input('limite inferior ');
b = input('limite superior ');
tol =input ('tolerancia ');
x=1;

c= 0;
n=0;
MEP = (b-a) / 2;
fprintf ('\t n \t \t a \t \t c \t\t b');
while (MEP > tol)
    c = (a + b ) /2 ;
    disp([n, a, c, b, MEP]);
    if (f(a) * f(c) < 0 )
        b=c;
    else
        a = c;
    end
    
    MEP = (b-a) / 2;
    n = n + 1;
end