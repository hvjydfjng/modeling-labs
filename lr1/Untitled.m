clc
clear
clf
%ex 2
x = [ 1.001 2+3*i];
y = [-10.7 1-i];
z = [0 0];
disp("results task 2:")
for i = 1 : 2
    z(i) = ( log(sin(x(i)*pi/8)) + x(i)^2 + sqrt(2*x(i)-2) ) / ( 2.^y(i))
end

%ex3
disp("results task 3:")
X = linspace(5, -4, 4)
Y = atan(X)
Z = X.^ 3
Z = dot(X,X)

%ex4
disp("results task 4:")
A = [1 2 3; 4 5 6; 7 8 9];
B = [2 6 8; 6  11 0.5];
C = [13 87 76 45 44];
disp("matrix A can't be multiplied by matrix B because the number of rows in matrix B dosn't equal the number of columns in matrix A");
D = [A B'];
D = [D; C]
E = [A(1:3,1:3)]
F = [];
for i = 1 : 2 : length(D(1,:))
    F = [F D(:, i) ];
end
G = [];
for i = 1 : 2 : length(F(:,1))
    G = [G; F(i,:)];
end
disp(G)
A = [2 5 -8; 5 6 3;4 -5 -1];
B = [8; 12; 23];
C = A^(-1)*B

%ex5
disp("task 5 results:")
syms x y
y2 = x / sin(x)
subplot(2,2,2)
ezplot(y2)
subplot(2,2,1)
ezplot('x - sin(3 * x)')
x = -2*pi : .1 : 2*pi;
y1 = x - sin(3 .* x);
subplot(2,2,3)
plot(x, y1)
subplot(2,2,4)
fplot(y2)

figure(2)
syms x y
y = x * sin(5*x)
subplot(3,2,1)
ezpolar(y , [0,2*pi])
subplot(3,2,2)
ezpolar(y, [-2*pi, 2*pi])
subplot(3,1,2)
ezplot('(x+3)^2/25 + (y-2)^2/16 = 1', [-8,2],[6,-2])
grid on
subplot(3,1,3)
x = -8 :.1:2;
y1 = sqrt(16* (1-((x + 3).^2)./25)) + 2;
y2 = -sqrt(16* (1-((x + 3).^2)./25)) + 2;
plot(x, y1,'b')
hold on
plot(x, y2,'b')
xlim([-8 2]);
ylim([-2 6]);
grid on
xlabel('x')
ylabel('y')
title('ellipse')

%ex6
figure(3)
t = -5: .1 :5;
x = sin(t);
y = 2.*cos(2.*t);
plot(x,y)
grid on
figure(4)
x = 0:.1:3;
y = 0:.1:3;
[X, Y]=meshgrid(x,y)
Z = (X.^2 + Y.^2) ./ (5.*X.*Y) + log(X + Y);
surf(X, Y, Z)


