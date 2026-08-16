function y = piecewise_func(x)
    y = zeros(size(x));  % 预分配输出数组
    
    % 分段条件判断
    idx1 = (x < 1);         % x < 1
    idx2 = (x >= 1 & x <= 2); % 1 ≤ x ≤ 2
    idx3 = (x > 2);          % x > 2
    
    % 计算各分段函数值
    y(idx1) = x(idx1).^2;
    y(idx2) = 2 * x(idx2) - 1;
    y(idx3) = x(idx3).^2 - 1;
end