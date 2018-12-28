function [ nextConway ] = evalConway( conway )
%evaluate the conway graph to make the next iteration

% RULES:
% 1. any cell with < two neighbors dies
% 2. any cell with 2 < num < 4 the cell lives
% 3. any cell with > 3 neighbors dies
% 4. any dead cell with 3 neighbors becomes living


[row, col] = size(conway);

for ii = row:-1:1
    for jj = 1:col
        
        % check neighbors if cell will die
        livingCell = conway(ii,jj);
        numNeighbors = checkNeighbors(ii,jj,conway);
        
        if (livingCell == 1) && (numNeighbors < 2)
            nextConway(ii,jj) = 0; % the cell dies from underpopulation
        elseif (livingCell == 1) && (numNeighbors < 4)
            nextConway(ii,jj) = 1; % the cell lives
        elseif (livingCell == 1) && (numNeighbors >= 4)
            nextConway(ii,jj) = 0; % the cell dies from overpopulation
        elseif (livingCell == 0) && (numNeighbors == 3)
            nextConway(ii,jj) = 1; % cell becomes living from reproduction
        else
            nextConway(ii,jj) = 0;
        end
        
    end
end

end

