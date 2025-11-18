initial_f=4;
x0=0;
x1=-0.1;
syms x
while round(initial_f,2)~=0 
    ju=x1;
    x1=xinter(x1,x0);
    x0=ju;
    initial_f=vpa(subs(exo(x),x,x1));
end
