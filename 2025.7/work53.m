function calculate_salary()
    id = input('请输入员工工号：');
    hours = input('请输入工作时数：');
    
    if hours > 120
        salary = 120*84 + (hours-120)*84*1.15;
    elseif hours < 60
        salary = hours*84 - 700;
        if salary < 0
            salary = 0; % 工资不能为负数
        end
    else
        salary = hours*84;
    end
    
    fprintf('员工%d的应发工资为：%.2f元\n', id, salary);
end

% 调用函数
calculate_salary();