% Conway's Game of Life
% Chad Serba 
% 10/15/2017

close all; clear all; 

%%%%%%%%%%%%%%%%%%%
% CONWAY SETTINGS %
%%%%%%%%%%%%%%%%%%%

% maximum number of generations
con.maxItr = 29;

% choose starting shape
con.gamePlot = getStartShape('shuttle28');


%%%%%%%%%%%%%%
% BEGIN LOOP %
%%%%%%%%%%%%%%

itr = 0;
while itr < con.maxItr
   
    plotConway(con.gamePlot)
    
    con.gamePlot = evalConway(con.gamePlot);
    
       
    con.frame = getframe(gcf);
    con.image{itr+1} = frame2im(con.frame);
    
    itr = itr + 1;   
    
end
%close all


%%%%%%%%%%%%
% MAKE GIF %
%%%%%%%%%%%%

filename = 'conway.gif';
for kk = 1:con.maxItr
    [A, map] = rgb2ind(con.image{kk},256);
    if kk == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.25);
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.25);
    end
end
