% PCP1
% calculating torsion, radius of curvature
syms x_ theta real;
y = 3*x_^2;
x = sin(theta);
y = subs(y, x_, x);
disp("y: ")
disp(y)
r = [x y];
disp("r: ")
disp(r)

roc = radiusOfCurvature(r);
rho = double(subs(roc, theta, pi/6));
disp("rho: ")
disp(rho)

% PCP 2
syms t real
x = 4*t + 2*(t^2);
y = cos(t) + 0.2*(t^3);
z = 3*t;
r = [x y z];
roc = radiusOfCurvature(r);
rho = double(subs(roc, t, 0));
disp("rho: ")
disp(rho)

tor = torsion(r);
tau = double(subs(tor, t, 0));
disp("tau: ")
disp(tau)
