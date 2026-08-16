% 计算表达式：sum_{k=1}^{100} k + sum_{k=1}^{50} k^2 + sum_{k=1}^{100} 1/k

% 第一部分：∑_{k=1}^{100} k (m=1)
part1 = sum_power(100, 1);

% 第二部分：∑_{k=1}^{50} k^2 (m=2)
part2 = sum_power(50, 2);

% 第三部分：∑_{k=1}^{100} 1/k (m=-1)
part3 = sum_power(100, -1);

% 总和
result = part1 + part2 + part3;

% 显示结果
fprintf('计算结果：%.6f\n', result);
fprintf('分解结果：\n');
fprintf('∑_{k=1}^{100} k = %.0f\n', part1);
fprintf('∑_{k=1}^{50} k^2 = %.0f\n', part2);
fprintf('∑_{k=1}^{100} 1/k = %.6f\n', part3);
fprintf('总和 = %.6f\n', result);
