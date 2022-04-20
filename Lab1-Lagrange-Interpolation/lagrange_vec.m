%-----------------------file name: Lagrange_vec--------------------
function v = lagrange_vec(x_in, y_in, u)
n = length(x_in);
v = zeros(size(u));
for k = 1:n
    w = ones(size(u));
    for j = [1:k-1 k+1:n] %除去它自己不要乘
        w = (u-x_in(j))./(x_in(k)-x_in(j)).*w;  %Lagrange多项式
    end
    v = v + w*y_in(k);
end