% 定义微分方程
f = @(x, y) -2*y + 2*x.^2 + 2*x;

% 设置初始条件和求解区间
xspan = [0, 0.5]; % 求解区间 [0, 0.5]
y0 = 0;           % 初始条件 y(0)=0

% 使用 ode45 求解数值解
[x, y] = ode45(f, xspan, y0);

% 输出数值解（显示部分结果）
fprintf('在区间 [0, 0.5] 上的数值解：\n');
disp([x, y]);

% 绘制数值解曲线
plot(x, y, 'b-o', 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title('微分方程数值解: dy/dx = -2y + 2x^2 + 2x');
grid on;