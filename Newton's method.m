clc
clear all
eps = 0.005;
h = eps;
a = 0;
b = 6;
xmin = b;
i = 0;
fun =@(x) x.^3 + x.^2 - 20.*x;
fp1 = ((fun(xmin+h) - fun(xmin))/ h );
                            
while ( fp1 > eps )
fp2 = ( fun(xmin+2*h) - 2 * fun(xmin + h) + fun(xmin) ) / h.^2;
xmin = xmin - ( fp1 / fp2 );
fp1 = ( fun(xmin+h) - fun(xmin)) / h;
i = i +1;
end
i
xmin
