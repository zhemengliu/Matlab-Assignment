function y = piecewise_func(x)
    if x < 0 && x ~= -3
        y = x^2 + x - 6;
    elseif x >= 0 && x < 5 && x ~= 2 && x ~= 3
        y = x^2 - 5*x + 6;
    else
        y = x^2 - x - 1;
    end
end

test_points = [-5.0, -3.0, 1.0, 2.0, 2.5];
results = arrayfun(@piecewise_func, test_points);

fprintf('x\t\ty\n');
fprintf('----------------\n');
for i = 1:length(test_points)
    fprintf('%.1f\t%.4f\n', test_points(i), results(i));
end