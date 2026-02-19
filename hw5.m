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

% 3.20
D_init = [-400 200 0];
alpha = 50;
phi - -70;
theta = 120;

R_alpha = simpleRotation(alpha, 'z');
R_phi = simpleRotation(phi, 'x')*R_alpha;
R_theta = simpleRotation(theta, 'x');

disp("R_alpha:")
disp(R_alpha)
disp("R_phi:")
disp(R_phi)
disp("R_theta:")
disp(R_theta) 

D_1 = D_init*R_phi;
D_final = D_1*R_theta;

disp("Final D coordinates: ")
disp(D_final);