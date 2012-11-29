function P = numeriekBayesian( F, a, c )

data = importdata('iris.txt');

C1 = data(1:49,:);
C2 = data(50:98,:);
C3 = data(99:147,:);

C1A1 = C1(:,1);
C1A2 = C1(:,2);
C1A3 = C1(:,3);
C1A4 = C1(:,4);

C2A1 = C2(:,1);
C2A2 = C2(:,2);
C2A3 = C2(:,3);
C2A4 = C2(:,4);

C3A1 = C3(:,1);
C3A2 = C3(:,2);
C3A3 = C3(:,3);
C3A4 = C3(:,4);


if a == 1
    if c == 1
        P = normpdf((F-mean(C1A1))/sqrt(var(C1A1)));
    elseif c == 2
        P = normpdf((F-mean(C2A1))/sqrt(var(C2A1)));        
    elseif c == 3
        P = normpdf((F-mean(C3A1))/sqrt(var(C3A1)));    
    end
elseif a == 2
    if c == 1
        P = normpdf((F-mean(C1A2))/sqrt(var(C1A2)));        
    elseif c == 2
        P = normpdf((F-mean(C2A2))/sqrt(var(C2A2)));        
    elseif c == 3
        P = normpdf((F-mean(C3A2))/sqrt(var(C3A2)));    
    end
elseif a == 3
    if c == 1
        P = normpdf((F-mean(C1A3))/sqrt(var(C1A3)));        
    elseif c == 2
        P = normpdf((F-mean(C2A3))/sqrt(var(C2A3)));        
    elseif c == 3
        P = normpdf((F-mean(C3A3))/sqrt(var(C3A3)));    
    end
elseif a == 4
    if c == 1
        P = normpdf((F-mean(C1A4))/sqrt(var(C1A4)));        
    elseif c == 2
        P = normpdf((F-mean(C2A4))/sqrt(var(C2A4)));        
    elseif c == 3
        P = normpdf((F-mean(C3A4))/sqrt(var(C3A4)));    
    end
end


end

