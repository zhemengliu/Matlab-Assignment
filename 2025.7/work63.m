%% 3. 找出所有水仙花数
S = []; 
for num = 100:999
    digits = num2str(num) - '0'; 
    if num == sum(digits.^3)
        S = [S, num];
    end
end
fprintf('水仙花数: ');
disp(S);
fprintf('\n');