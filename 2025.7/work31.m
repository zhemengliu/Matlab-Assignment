% 初始化
a = zeros(1, 200);
a(1) = 1;
a(2) = 1;

% 迭代计算Fibonacci数列
for k = 3:200
    a(k) = a(k-1) + a(k-2);
end

% 输出结果
fprintf('Fibonacci数列在n=200处的值为: %d\n', a(200));