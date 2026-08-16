function pi_approx = calc_pi(n)
    sum_val = 0;
    for k = 1:n
        sum_val = sum_val + 1/k^2;
    end
    pi_approx = sqrt(6 * sum_val);
end

% 计算不同n值的π近似
n_values = [100, 1000, 10000];
results = arrayfun(@calc_pi, n_values);

% 显示结果
fprintf('n\t\tπ近似值\t\t误差\n');
fprintf('--------------------------------\n');
for i = 1:length(n_values)
    error = abs(pi - results(i));
    fprintf('%d\t%.8f\t%.8f\n', n_values(i), results(i), error);
end