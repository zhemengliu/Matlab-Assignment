%% 2. 计算公元1-9999年间的闰年数量
leap_year_count = 0;
for year = 1:9999
    if (mod(year, 4) == 0 && mod(year, 100) ~= 0) || mod(year, 400) == 0
        leap_year_count = leap_year_count + 1;
    end
end
fprintf('公元1年到公元9999年间的闰年数量: %d\n\n', leap_year_count);

