function Hw = threshold( X, W )
threshold = X*W;
if threshold < 0
    Hw = -1;
else
    Hw = 1;
end
    
end


