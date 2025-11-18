initial_value=-1;%initial value%
final_value=2;%final value%
func_bisection=1;%f val%
ni=0;%counter%
x_bisection=0;
a=[];
b=[];
syms x
while and(round(func_bisection,4)~=0,(vpa(subs(exo(x),x,initial_value)))*(vpa(subs(exo(x),x,final_value)))<0)
    k=(vpa(subs(exo(x),x,initial_value)));% f(a) value%
    m=(vpa(subs(exo(x),x,final_value)));%f(b) value%
    if k*m<0
        x_bisection=(initial_value+final_value)/2; %avarage of a and b%
        if exo(x_bisection)>0
            final_value=x_bisection;
        else
            initial_value=x_bisection;
        end
    end
    func_bisection=(vpa(subs(exo(x),x,x_bisection)));
    ni=ni+1;

end
