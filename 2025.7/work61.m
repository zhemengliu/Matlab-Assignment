%% 1. 斐波那契数列递归实现及性质验证
function fib_sum = fibonacci(n)
    if n <= 2
        fib_sum = 1;
    else
        fib_sum = fibonacci(n-1) + fibonacci(n-2);
    end
end

% 验证性质 f^2(1)+f^2(2)+...+f^2(n) = f(n)*f(n+1)
n = 10; 
sum_squares = 0;
for k = 1:n
    fk = fibonacci(k);
    sum_squares = sum_squares + fk^2;
end

fn = fibonacci(n);
fn1 = fibonacci(n+1);
product = fn * fn1;

fprintf('斐波那契数列性质验证 (n=%d):\n', n);
fprintf('平方和 = %d\n', sum_squares);
fprintf('f(n)*f(n+1) = %d\n', product);
if sum_squares == product
    fprintf('验证成功!\n\n');
else
    fprintf('验证失败!\n\n');
end