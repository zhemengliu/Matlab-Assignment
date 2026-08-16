[x, y] = meshgrid(-10:0.2:10);
r = sqrt(x.^2 + y.^2);
z = sin(r) ./ r;
z(r == 0) = 1; 

% Mesh 绘图
figure;
mesh(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Mesh 绘图: z = sin(r)/r, r = sqrt(x^2 + y^2)');
colormap jet;
colorbar;

% Surf 绘图
figure;
surf(x, y, z, 'EdgeColor', 'none');
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Surf 绘图: z = sin(r)/r, r = sqrt(x^2 + y^2)');
colormap parula;
shading interp; 
colorbar;