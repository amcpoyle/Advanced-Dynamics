%{
% 3.20
fprintf("PROBLEM 3.20\n");
A = [0 0 0];
B = [400 0 0];
BA = B - A;

bc_rotation = deg2rad(-50);
R_prime = simpleRotation(bc_rotation, 'z');
% bc_test1 = R_prime*BA
bc_test2 = BA*R_prime;
D = bc_test2 + [0 200 0];

disp(D)

theta = deg2rad(120);
phi = deg2rad(-70);
R_theta = simpleRotation(theta, 'x');
R_phi = transpose(R_prime)*simpleRotation(phi, 'x')*R_prime;
% D_f = R_phi*R_theta*transpose(D);
D_f = D*R_phi*R_theta;
% is this what prof was talking about? I actually just do this
% to not throw an error though...
displacement = D_f - D;
disp(displacement)
% fprintf("Displacement = %d\n", transpose(displacement));
%}

% 3.20 FROM SOLUTIONS:
R_prime = simpleRotation(deg2rad(-50), 'z'); % Rz1 % NOTE: maybe supposed to be -50?
R_theta = simpleRotation(deg2rad(120), 'x'); % Rx1
R_phi = simpleRotation(deg2rad(70), 'y'); % Ry, NOTE: sign swap on 70

pointB = [400 0 0];
pointC = [0 400 0];
pointD = [200 0 0];

origLoc = pointB' + R_prime'*pointC' + R_prime'*pointD';
newLoc = R_theta'*pointB' + R_theta'*R_prime'*pointC' + R_theta'*R_prime'*R_phi'*pointD';
displacement = newLoc - origLoc;
disp(displacement);
