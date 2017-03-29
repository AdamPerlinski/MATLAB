clc
clear all
eps = 0.005;
a = 0;
b = 6;
xmin = 0;
i = 0;
f =@(x) x.^3 + x.^2 - 20.*x;

while ( b - a > eps )
L = b - a;
x1 = a + 0.382 * L;
x2 = a + 0.618 * L;
fx1 = f(x1);
fx2 = f(x2);  
if ( fx1 < fx2 )
b = x2;
else
a = x1;
end
xmin = ( a + b ) / 2;
i = i +1;
end
i
xmin

