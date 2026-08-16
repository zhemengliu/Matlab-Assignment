t = linspace(0, 6*pi, 1000);
x = exp(0.3*t) .* sin(t);
y = exp(0.3*t) .* cos(t);
z = exp(0.3*t);

plot3(x, y, z, 'b', 'LineWidth', 1.5);
grid on;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('空间曲线: x = e^{0.3t} \sin t, y = e^{0.3t} \cos t, z = e^{0.3t}');
axis equal;
view(45, 30); 