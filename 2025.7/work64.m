%% 4. 三角恒等式证明
syms a;
left_side = cos(4*a) - 4*cos(2*a) + 3;
right_side = 8*sin(a)^4;
difference = simplify(left_side - right_side);

fprintf('三角恒等式证明:\n');
fprintf('左边表达式: ');
disp(left_side);
fprintf('右边表达式: ');
disp(right_side);
fprintf('差值: ');
disp(difference);

if difference == 0
    fprintf('证明成功! 两边相等\n\n');
else
    fprintf('证明失败! 两边不相等\n\n');
end