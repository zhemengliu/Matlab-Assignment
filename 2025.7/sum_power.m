function s = sum_power(n, m)

if n < 1 || fix(n) ~= n
    error('n必须是正整数');
end

s = 0;
for i = 1:n
    s = s + i^m;
end
end