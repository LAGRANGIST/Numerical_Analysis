%-----------------------file name: Lagrange_vec_interactive--------------------
syms x;
format long;
n = input('多项式的次数n：');
u = input('请输入待估值点序列u的值(例如:[1,2,3,4])：');
a = input('请输入区间下界a的值：');
b = input('请输入区间上界b的值：');
f = input('请输入函数f(x)的表达式(如1+x^2）：');
x = linspace(a,b,n);
y = subs(f, symvar(f), x);
lagrange_vec(x,y,u);
ans = lagrange_vec(x,y,u);
exact_value = subs(f,symvar(f),u);
fprintf('\t\t\t结果表格\n');
fprintf('--------------------------------------------------------------------------\n');
fprintf('\t    u \t   f(u) \t\t   exact \t\t   error\n');
fprintf('\t %2.3f \t %2.9f \t %2.9f\t %2.9f\n ',[u;ans;exact_value;exact_value-ans]);
