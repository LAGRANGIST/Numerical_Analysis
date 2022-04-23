clc,clear
set(0,'defaultfigurecolor','w')

f = @(x,y) -20*(y-x^x*sin(x)) +exp(x)*(sin(x) + cos(x)) ;

n = 20


a = 0; %x初值
b = 1; %x终值
alpha = 1; %y初值

[x,y] = RungeKutta4(f, a, b, alpha, n); 
[x2,y2] = ode45(f, [a,b], alpha);   %matlab内部函数,用作参考
plot(x,y,'g--*',x2,y2,'r--o')

g = @(x) -x-1;

fprintf('\t\t\t结果表格\n');
fprintf('--------------------------------------------------------------------\n');
fprintf('\t    x \t   my_y \t\t   exact \t\t   error\n');
fprintf('\t %2.3f \t %2.9f \t %2.9f\t %2.9f\n ',[x;y;g(x);g(x)-y]);