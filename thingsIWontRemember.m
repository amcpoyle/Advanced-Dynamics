% I'm not sure what functions I will or will not remember
% So I'm putting them all here
% Also testing a bunch of functions to make sure they work
A = [1 2 3; 4 5 6; 7 8 9];
B = [1 0 1; 0 1 0; 1 0 1];

dot_product = dot(A,B);
cross_product = cross(A,B);
A_norm = norm(A);
element_wise = A .* B; % tbh I never understood this so I hope I don't need it
det_A = det(A);
trace_A = trace(A);

% implementation of radius of curvature
syms a k theta real
r = [a*cos(theta), a*sin(theta), k*theta];
rho = radiusOfCurvature(r, theta);
disp("Radius of curvature: ")
disp(rho)
rho_eval = subs(rho, theta, deg2rad(60));
disp("Evaluated rho: ")
disp(rho_eval)

% torsion test
tau = torsion(r, theta);
disp("Torsion: ");
disp(subs(tau, theta, deg2rad(60)));

% tangent vector
e_t = tangentVector(r, theta);
disp("Tangent Vector: ")
disp(e_t)

% normal vector
e_n = normalVector(r, theta);
disp("Normal vector: ")
disp(e_n)
