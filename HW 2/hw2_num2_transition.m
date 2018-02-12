%% MAE 6780 HW 2 Number 2

syms t

m = 20; %lb
g = 32.2; %lb/ft^2
spring0 = 5 + 5/12;  %ft

k = m*g/spring0;

A = [0 1;
    -k/m 0];

phi = simplify(expm(A*t))
