% simple rotations about 1 axis
function rotationMatrix = simpleRotation(theta, axis)
    if matches(axis, 'x')
        tempMat = [1 0 0; 0 cos(theta) sin(theta); 0 -sin(theta) cos(theta)];
        if theta < 0
            rotationMatrix = transpose(tempMat);
        else
            rotationMatrix = tempMat;
        end

    elseif matches(axis, 'y')
        tempMat = [cos(theta) 0 -sin(theta); 0 1 0; sin(theta) 0 cos(theta)];
        if theta < 0
            rotationMatrix = transpose(tempMat);
        else
            rotationMatrix = tempMat;
        end
    
    elseif matches(axis, 'z')
        tempMat = [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];
        if theta < 0
            rotationMatrix = transpose(tempMat);
        else
            rotationMatrix = tempMat;
        end
    else
        disp("Accepted axes are 'x', 'y', and 'z'")

    end
    % rotationMatrix = rotationMat; % technically redundant
end

