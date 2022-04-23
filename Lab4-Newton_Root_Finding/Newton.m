function Newton(alpha,eps1,eps2,N)

syms x;
f(x) = x^2-2*x*exp(-x)+ exp(-2*x);

display('The equation to be solved is：f(x) = x - exp(-x) ')

n = 1;
x0 = alpha;
while(n<=N)
    F = double(subs(f(x),x,x0));
    Diif_F = double(subs(diff(f(x)),x,x0)); 
    if(abs(F)<eps1)
        fprintf('The root is: %f\n',x0)
        return;
    end
    if(abs(Diif_F)<eps2) % 寻找失败了，停机输出
        disp("Not found");
        return;
    end
    x1 = double(x0 - F/Diif_F);
    Tol = double(abs(x1-x0));
    if(Tol<eps1)
        fprintf('The root is: %f\n',x0)
        return;
    end
    n = n+1;
    x0 = x1;
end
disp("Not found");
end