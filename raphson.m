clc; 
clear;
f= input("digite la funcion","s");
sf =str2sym(f);
ezplot(sf);
tol=input("digite la tolerancia del metodo");
x0=input("digite el valor inicial del metodo");
v=symvar(sf);
f1 = diff(sf);
sw=0;
while sw==0
    x1 = x0 -(subs(sf,v,x0))/(subs(f1,v,x0));
    if abs (x0-x1)>tol
        x0=x1;
        sw=0;
    else
        sw=1;
    end
end
vpa(x1)
