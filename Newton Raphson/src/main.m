function [no_it,x_newton]=newton_raphson(tolerance)
func_newton=7;
x_newton=0;
newton_intial=2;
syms x %asigns a amthematical variable x %
no_it=0;
while round(func_newton,tolerance)~=0 % condition for tolerence error %
    x_newton=nrm(newton_intial,x);
    func_newton=vpa(subs(exo(x),x,x_newton));
    newton_intial=x_newton;
    no_it=no_it+1;
    

end
