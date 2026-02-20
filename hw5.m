% 3.17
% syms L H real;
% y_init = [-L H 0];
disp("3.17")
y_init = [0 1 0];

theta = 30; % degrees, this will be auto converted in simple rotation
psi = 75;
phi = 115;

R1 = simpleRotation(psi, 'y');
R2 = simpleRotation(phi, 'z');
R_f = R2*R1;

y_final = y_init*R_f;
y_final = vpa(y_final, 4);
disp("R_f:")
disp(R_f)
disp("y final orientation:")
disp(y_final);

disp("Angle between initial and final orientation:")
disp(angleBetweenVectors(y_init, y_final))

% 3.18
disp("3.18")
L = 250
H = 120;
theta = 120;
beta = 30;
gamma = -90;

C_init = [0 L H];

R1 = simpleRotation(theta, 'z');
R2 = simpleRotation(beta, 'x');
R3 = simpleRotation(gamma, 'y');
R_f = R3*R2*R1;
disp("R_f:")
disp(R_f);

L_elongate = 250;

C_new = C_init*R_f;
C_f = C_new + [0 L_elongate 0];
disp("C new (after rotations): ")
disp(C_new)
disp("C final:")
disp(C_f)

disp("Displacement:")
displacement = C_f - C_init;
disp(displacement)

% % 3.20
% D_init = [-400 200 0];
% alpha = 50;
% phi - -70;
% theta = 120;
% 
% R_alpha = simpleRotation(alpha, 'z');
% R_phi = simpleRotation(phi, 'x')*R_alpha;
% R_theta = simpleRotation(theta, 'x');
% 
% disp("R_alpha:")
% disp(R_alpha)
% disp("R_phi:")
% disp(R_phi)
% disp("R_theta:")
% disp(R_theta) 
% 
% D_1 = D_init*R_phi;
% D_final = D_1*R_theta;
% 
% disp("Final D coordinates: ")
% disp(D_final);

% 3.20
disp("3.20")
D = [257.115 506.4178 0];
theta = 120;
phi = -70;

R_prime = simpleRotation(50, 'z');
disp('R_prime:')
disp(R_prime)
R_theta = simpleRotation(theta, 'x');
disp('R_theta:')
disp(R_theta)
R_phi = transpose(R_prime)*simpleRotation(phi, 'x')*R_prime;
disp('R_phi:')
disp(R_phi)

D_1 = D*R_theta;
disp('D_1:')
disp(D_1)
D_2 = D_1*R_phi;
disp('D_2:')
disp(D_2)
displacement = D_2 - D;
disp('Displacement: ')
disp(displacement)

% RT 1
disp("RT 1")
syms theta phi alpha real;
Rx = [1 0 0; 0 cos(theta) sin(theta); 0 -sin(theta) cos(theta)];
Ry = [cos(phi) 0 -sin(phi); 0 1 0; sin(phi) 0 cos(phi)];
Rz = [cos(alpha) sin(alpha) 0; -sin(alpha) cos(alpha) 0; 0 0 1];
RxRyRz = Rz*Ry*Rx;
disp("x-y-z composition:")
disp(RxRyRz)

% RT 2
disp("RT 2")
RzRyRx = Rx*Ry*Rz;
disp("z-y-x composition:")
disp(RzRyRx)

% RT 3 and RT4
% see iPad, easier to do by hand

%%%%%%

% DISP 1
disp("DISP 1")
theta = 40;
alpha = 45;
phi = 25;
varphi = 30;

R_theta = simpleRotation(theta, 'z');
disp("R_theta:")
disp(R_theta)
R_prime = simpleRotation(varphi, 'x');
disp("R_prime:")
disp(R_prime)
R_alpha = transpose(R_prime)*simpleRotation(alpha, 'y')*R_prime; % 2
disp("R_alpha:")
disp(R_alpha)
R_phi = transpose(R_prime)*simpleRotation(phi, 'z')*R_prime; % 3
disp("R_phi:")
disp(R_phi)
delta_r = [0 0.1 0]; % 4

B = [0 0.53 0.25];
B_1 = B*R_theta;
disp("B_1:")
disp(B_1)
B_2 = B_1*R_alpha;
disp("B_2:")
disp(B_2)
B_3 = B_2*R_phi;
disp("B_3:")
disp(B_3)
B_f = B_3 + delta_r;
disp("B_f:")
disp(B_f)

displacement = B_f - B;
disp("Displacement:")
disp(displacement)