% simple rotations about 1 axis
function rotationMatrix = simpleRotation(theta, axis)
    if matches(axis, 'x')
        rotationMat = [1 0 0; 0 cosd(theta) sind(theta); 0 -sind(theta) cosd(theta)];

    elseif matches(axis, 'y')
        rotationMat = [cosd(theta) 0 -sind(theta); 0 1 0; sind(theta) 0 cosd(theta)];
    
    elseif matches(axis, 'z')
        rotationMat = [cosd(theta) sind(theta) 0; -sind(theta) cosd(theta) 0; 0 0 1];
    else
        disp("Accepted axes are 'x', 'y', and 'z'")

    end
    rotationMatrix = rotationMat; % technically redundant
end

