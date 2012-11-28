function [b] = B( q )
b = -(q*log2(q) + (1-q)*log2(1-q))
end

