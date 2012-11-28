% 5.1,3.5,1.4,0.2,1
% 7.0,3.2,4.7,1.4,2
% 6.3,3.3,6.0,2.5,3

function class = numeriekBayes( f1, f2, f3, f4 )
PC1A1 = numeriekBayesian(f1, 1, 1);
PC1A2 = numeriekBayesian(f2, 2, 1);
PC1A3 = numeriekBayesian(f3, 3, 1);
PC1A4 = numeriekBayesian(f4, 4, 1);
 
PC2A1 = numeriekBayesian(f1, 1, 2);
PC2A2 = numeriekBayesian(f2, 2, 2);
PC2A3 = numeriekBayesian(f3, 3, 2);
PC2A4 = numeriekBayesian(f4, 4, 2);

PC3A1 = numeriekBayesian(f1, 1, 3);
PC3A2 = numeriekBayesian(f2, 2, 3);
PC3A3 = numeriekBayesian(f3, 3, 3);
PC3A4 = numeriekBayesian(f4, 4, 3);

Y1 = PC1A1*PC1A2*PC1A3*PC1A4;
Y2 = PC2A1*PC2A2*PC2A3*PC2A4;
Y3 = PC3A1*PC3A2*PC3A3*PC3A4;
Y = [Y1, Y2, Y3];

Max = max(Y);

if Max == Y1
    class = 1;
elseif Max == Y2
    class = 2;
elseif Max == Y3
    class = 3;
end

end

