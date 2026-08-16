% if语句实现
function grade = score_to_grade_if(score)
    if score >= 90 && score <= 100
        grade = 'A';
    elseif score >= 80 && score < 90
        grade = 'B';
    elseif score >= 70 && score < 80
        grade = 'C';
    elseif score >= 60 && score < 70
        grade = 'D';
    elseif score >= 0 && score < 60
        grade = 'E';
    else
        grade = '无效分数';
    end
end

% switch语句实现
function grade = score_to_grade_switch(score)
    switch fix(score/10)
        case {10, 9}
            grade = 'A';
        case 8
            grade = 'B';
        case 7
            grade = 'C';
        case 6
            grade = 'D';
        case {5,4,3,2,1,0}
            grade = 'E';
        otherwise
            grade = '无效分数';
    end
end

% 测试
score = input('请输入成绩（0-100）：');
fprintf('if语句结果：%s\n', score_to_grade_if(score));
fprintf('switch语句结果：%s\n', score_to_grade_switch(score));