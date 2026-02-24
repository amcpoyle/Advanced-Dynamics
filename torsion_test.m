% HW3 PCP2
%{
syms t real;
x = 4*t + 2*(t^2);
y = cos(t) + 0.2*(t^3);
z = 3*t;
r = [x y z];

rho = radiusOfCurvature(r); % matches with solution
tau = torsion(r); % does not match with solution
tau_solutions = torsionSolutions(r);

rho = double(subs(rho, t, 0));
tau = double(subs(tau, t, 0));
tau_solutions = double(subs(tau_solutions, t, 0));

% comparing torsion values
disp("rho (matches with solutions): ")
disp(rho)

disp("my torsion value: ")
disp(tau)

disp("solutions torsion value: ")
disp(tau_solutions)

%}


% comparing way of multiplying rotation matrices
R_prime = simpleRotation(deg2rad(-50), 'z'); % Rz1 % NOTE: it says 40 in solns, maybe supposed to be -50?
R_theta = simpleRotation(deg2rad(120), 'x'); % Rx1
R_phi = simpleRotation(deg2rad(70), 'y'); % Ry, NOTE: sign swap on 70 compared to solutions

% the following is from the solutions code:
pointB = [400 0 0];
pointC = [0 400 0];
pointD = [200 0 0];

origLoc = pointB' + R_prime'*pointC' + R_prime'*pointD';
newLoc = R_theta'*pointB' + R_theta'*R_prime'*pointC' + R_theta'*R_prime'*R_phi'*pointD';
displacement = newLoc - origLoc;
% disp(displacement);

disp("origLoc FROM SOLUTIONS: ")
disp(origLoc)

% what we discussed at the end of class?
origLoc_test1 = transpose(pointB) + R_prime*transpose(pointC) + R_prime*transpose(pointD); % incorrect answer

% my calculation of origLoc
origLoc_test2 = pointB + pointC*R_prime + pointD*R_prime; % correct answer

disp("discussed at end of class: ")
disp(origLoc_test1)

disp('my calculation: ')
disp(origLoc_test2)
