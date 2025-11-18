function [x_false_position] =false_position(tol)
initial_val=0.9;
final_val=0.7;
func_false_position=3;                                                                      


nj=0;

syms x %asigns a amthematical variable x %
while round(func_false_position,tol)~=0 %tolerance error%
    x_false_position=vpa(xinter(initial_val,final_val));-0-0
    if exo(x_false_position)>0
        final_val=x_false_position;
    elseif exo(x_false_position)==0
        break
    else
        initial_val=x_false_position;
    end
    func_false_position=(vpa(subs(exo(x),x,x_false_position)));
    nj=nj+1;%no of itteration %
end
