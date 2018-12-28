function [ numNeighbors ] = checkNeighbors( row, col, map )

numNeighbors = 0;
[rwMax, clMax] = size(map);

if (row > rwMax) || (row < 1) || (col > clMax) || (col < 1)
    % accessing not available index
    warning('checkNeighbors: accessing invalid index!')
    numNeighbors = 0;
    
else

    for i = -1:1 
        for j = -1:1
            if ~(i == 0 && j == 0) && inBounds(row+i,col+j, [rwMax, clMax])
                numNeighbors = numNeighbors + map(row+i,col+j);
            end
        end
    end
    
end


end