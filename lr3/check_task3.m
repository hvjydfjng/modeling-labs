syms x y
y = 8*x^3 + 7*x^2 - 15*x + 4
y1 = diff(y,x,1)
y1 = 24*x^2 + 14*x - 15
ezplot(y1,[0 5])
grid on
