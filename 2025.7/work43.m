% 创建网格
[x, y] = meshgrid(-2:0.05:2);
r = sqrt(x.^2 + y.^2);

% 上半球面 (z >= 0)
z_sphere = sqrt(4 - x.^2 - y.^2);
z_sphere(imag(z_sphere) ~= 0) = NaN; 

% 锥面
z_cone = sqrt(x.^2 + y.^2) - 2;

% 绘制两个曲面
figure;
hold on;
surf(x, y, z_sphere, 'FaceColor', [0, 0.5, 1], 'FaceAlpha', 0.6, 'EdgeColor', 'none');
surf(x, y, z_cone, 'FaceColor', [1, 0.3, 0.2], 'FaceAlpha', 0.6, 'EdgeColor', 'none');

% 绘制交线 (r=2 的圆)
theta = linspace(0, 2*pi, 100);
x_circle = 2 * cos(theta);
y_circle = 2 * sin(theta);
z_circle = zeros(size(theta)); % z=0
plot3(x_circle, y_circle, z_circle, 'k', 'LineWidth', 2);

% 设置图形属性
axis equal;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('上半球面与锥面围成的立体');
legend('上半球面: z = sqrt(4 - x^2 - y^2)', '锥面: z = sqrt(x^2 + y^2) - 2', '交线');
view(-30, 25); % 调整视角
hold off;