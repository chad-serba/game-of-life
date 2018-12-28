function [ inBound ] = inBounds( rw, cl, mpSize )

if (rw > 0 && rw < mpSize(1)) && (cl > 0 && cl < mpSize(2))
    inBound = 1;
else
    inBound = 0;
end

end

