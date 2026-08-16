%% 例2：矩阵分解
% 问题描述：对给定矩阵进行多种分解
A = [9, 1, 2; 5, 6, 3; 8, 2, 7];
disp(' ');
disp('例2结果:');

% 1. 特征值分解
[V, D] = eig(A);
disp('特征值分解 - 特征值:');
disp(diag(D)');

% 2. 奇异值分解
[U, S, V_svd] = svd(A);
disp('奇异值分解 - 奇异值:');
disp(diag(S)');

% 3. LU分解
[L, U_lu, P] = lu(A);
disp('LU分解 - L矩阵:');
disp(L);
disp('U矩阵:');
disp(U_lu);

% 4. QR分解
[Q, R] = qr(A);
disp('QR分解 - Q矩阵(前3列):');
disp(Q(:,1:3));
disp('R矩阵:');
disp(R);

% 5. Cholesky分解
% 检查矩阵是否对称正定
if all(eig(A) > 0) && isequal(A, A')
    R_chol = chol(A);
    disp('Cholesky分解 - R矩阵:');
    disp(R_chol);
else
    disp('矩阵不是对称正定矩阵，无法进行Cholesky分解');
end

% 重构误差计算
recon_err_eig = norm(A - V*D*V', 'fro');
recon_err_svd = norm(A - U*S*V_svd', 'fro');
recon_err_lu = norm(P'*L*U_lu - A, 'fro');
recon_err_qr = norm(Q*R - A, 'fro');

disp('重构误差:');
fprintf('特征值分解: %.4e\n', recon_err_eig);
fprintf('奇异值分解: %.4e\n', recon_err_svd);
fprintf('LU分解: %.4e\n', recon_err_lu);
fprintf('QR分解: %.4e\n', recon_err_qr);