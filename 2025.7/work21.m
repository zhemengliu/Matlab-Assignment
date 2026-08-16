% 求解微分方程并验证
% 微分方程: dy/dx + 2xy = x*exp(-x^2)
% 使用 dsolve 函数求解

% 步骤1: 定义符号变量和函数
syms y(x)
ode = diff(y,x) + 2*x*y == x*exp(-x^2);

% 步骤2: 求解微分方程
ySol = dsolve(ode);
disp('微分方程的通解:')
pretty(ySol)

% 步骤3: 验证解满足微分方程
% 计算解的导数
dySol = diff(ySol, x);

% 代入原方程左边
LHS = dySol + 2*x*ySol;  % 左边: dy/dx + 2xy
RHS = x*exp(-x^2);       % 右边: x*exp(-x^2)

% 简化左边表达式并验证是否等于右边
simplified_LHS = simplify(LHS);
disp('验证解代入方程左边后的结果:')
pretty(simplified_LHS)

if isequal(simplified_LHS, RHS)
    disp('验证通过: 解满足微分方程')
else
    % 有时符号简化可能不完全相同，但数学上等价
    % 检查是否等于右边
    check_eq = simplify(simplified_LHS - RHS);
    if check_eq == 0
        disp('验证通过: 解满足微分方程 (经过差值验证)')
    else
        disp('验证失败: 解不满足微分方程')
    end
end

% 步骤4: 数值验证和可视化
% 为了更直观展示，我们选择一个特解（取C1=0）并验证
ySol0 = subs(ySol, sym('C1'), 0);
disp('特解 (C1=0):')
pretty(ySol0)

% 数值验证
x_vals = linspace(-2, 2, 100);
y_vals = double(subs(ySol0, x, x_vals));
dy_vals = double(subs(diff(ySol0, x), x, x_vals));

% 计算方程左边和右边
LHS_vals = dy_vals + 2*x_vals.*y_vals;
RHS_vals = x_vals.*exp(-x_vals.^2);

% 计算误差
error = max(abs(LHS_vals - RHS_vals));
fprintf('最大数值误差: %e\n', error)

if error < 1e-10
    disp('数值验证通过: 解满足微分方程')
else
    disp('数值验证失败')
end

% 可视化
figure
subplot(2,1,1)
plot(x_vals, y_vals, 'b', 'LineWidth', 1.5)
title('微分方程的特解: y = (1/2)exp(-x^2)')
xlabel('x')
ylabel('y(x)')
grid on

subplot(2,1,2)
plot(x_vals, LHS_vals, 'r', 'LineWidth', 1.5)
hold on
plot(x_vals, RHS_vals, 'g--', 'LineWidth', 1.5)
title('方程左边和右边比较')
xlabel('x')
legend('左边: dy/dx + 2xy', '右边: xe^{-x^2}', 'Location', 'best')
grid on