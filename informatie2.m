function [info2] = informatie2( kansen )
informatie = 0;
for i = 1:length(kansen)
    kans = kansen(i);
    informatie = informatie + kans*log2(kans);
end 
info2 = informatie*-1;
end

