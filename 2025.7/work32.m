% 原始数据
x = 1:10;
y = [1.2, 3, 4, 4, 5, 4.7, 5, 5.2, 6, 7.2];

% 一次多项式拟合
p1 = polyfit(x, y, 1);
y1 = polyval(p1, x);

% 三次多项式拟合
p3 = polyfit(x, y, 3);
y3 = polyval(p3, x);

% 绘图
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', '原始数据'); hold on;
plot(x, y1, 'b--', 'LineWidth', 1.5, 'DisplayName', '一次拟合');
plot(x, y3, 'r-', 'LineWidth', 1.5, 'DisplayName', '三次拟合');
hold off;

% 图表修饰
xlabel('x'); ylabel('y');
title('实验数据拟合对比');
legend('Location', 'northwest');
grid on;