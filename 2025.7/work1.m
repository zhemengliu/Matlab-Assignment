% (1) 生成100行200列的随机数组
A = rand(100, 200);

% (2) 找出满足条件的单下标
indices = find(A > 0.49 & A < 0.51);

% (3) 统计满足条件的元素个数
count = numel(indices);
fprintf('满足条件的元素个数为: %d\n', count);

% (4) 计算满足条件的元素和与平均值
sum_values = sum(A(indices));
mean_value = sum_values / count;
fprintf('满足条件的元素和为: %.4f\n', sum_values);
fprintf('满足条件的元素平均值为: %.4f\n', mean_value);

% (5) 将平均值赋给满足条件的元素
A(indices) = mean_value;