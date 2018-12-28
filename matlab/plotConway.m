function plotConway( matrix )
%PLOTCONWAY will take in a matrix representing the conway game and plot it

% flip the matrix so it is the right orientation
matrix = flip(matrix, 1);

% how many elements are in the matrix?
% each element takes up a 1x1 block in the plot
[row, col] = size(matrix);

sze = 0.95; % recrangle side length

figure;
hold on
axis([0 col 0 row])
for jj = 0:row-1
    for ii = 0:col-1
        
        if (matrix(jj+1,ii+1) == 1)
            % plot the block
            pos = [ii,jj] + 0.01;
            fig = rectangle('Position', [pos sze sze], 'FaceColor', 'k');
            %set(findobj(fig, 'type','axes'), 'Visible', 'off')
            axis off 
        else
            % do nothing
        end
        
    end
end


end

