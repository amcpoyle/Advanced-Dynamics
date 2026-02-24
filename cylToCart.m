% convert cylindrical coordinates to cartesian
function r = cylToCart(R, theta, z)
    x = R*cos(theta);
    y = R*sin(theta);
    r = [x; y; z];
end