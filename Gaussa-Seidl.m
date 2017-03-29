    clear all
    funkcja =@(x,y) (2.*(x.^2)) + (y.^2) + (x.*y) - (6.*x) - (5.*y) + 8; epsilon = 0.2;
    xstartowy = -4;
    ystartowy = 4;
%Metoda spadku, tworzymy tabele z fukcjami, znajdujemy najmniejsza i
%przechodzimy do niej itd. dopoki nie znajdziemy naszego minimum algorytm
%sie nie zatrzyma.
wybor = 2;
iteracja = 0;
x = (-5:0.01:5);
y = (-5:0.01:5);
hold on;
[xsiatka, ysiatka] = meshgrid(x, y);
meszgryd = funkcja(xsiatka,ysiatka);
while  ( wybor ~= 1 )
    tabelazwyborami = [ 
        funkcja(xstartowy,ystartowy) 
        funkcja(xstartowy+epsilon, ystartowy) 
        funkcja(xstartowy-epsilon, ystartowy) 
        funkcja(xstartowy, ystartowy+epsilon) 
        funkcja(xstartowy, ystartowy-epsilon) ];
    [minfunkcja, wybor] = min(tabelazwyborami);
    iteracja=iteracja+1;
        if ( wybor == 2 )
    xstartowy = xstartowy + epsilon; 
    plot(xstartowy, ystartowy, 'gx');
        end
        if ( wybor == 3 )
    xstartowy = xstartowy - epsilon;
    plot(xstartowy, ystartowy, 'gx');
        end
        if ( wybor == 4 )
    ystartowy = ystartowy + epsilon;
    plot(xstartowy, ystartowy, 'gx');
        end
        if ( wybor == 5 )
    ystartowy = ystartowy - epsilon;
    plot(xstartowy, ystartowy, 'gx');
        end
end

contour(x, y, meszgryd,20)
iteracja
xstartowy
ystartowy

