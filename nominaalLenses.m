function nominaalLenses( a )
Class = a(1:24,5);
unqClass = unique(Class);
freqClass = histc(Class,unqClass);
Class1 = freqClass(1,1);
Class2 = freqClass(2,1);
Class3 = freqClass(3,1);
totalClass = Class1+Class2+Class3;

A1E1= a(1:8,1);
A1E2= a(9:16,1);
A1E3= a(17:24,1);

ClassA1E1 = a(1:8,5);
ClassA1E2 = a(9:16,5);
ClassA1E3 = a(17:24,5);

A2E1 = a([1:4;9:12;17:20],2);
A2E2 = a([5:8;13:16;21:24],2);

ClassA2E1 = a([1:4;9:12;17:20],5);
ClassA2E2 = a([5:8;13:16;21:24],5);

A3E1 = a([1:2;5:6;9:10;13:14;17:18;21:22],3);
A3E2 = a([3:4;7:8;11:12;15:16;19:20;23:24],3);

ClassA3E1 = a([1:2;5:6;9:10;13:14;17:18;21:22],5);
ClassA3E2 = a([3:4;7:8;11:12;15:16;19:20;23:24],5);

A4E1 = a([1;3;5;7;9;11;13;15;17;19;21;23],4)
A4E2 = a([2;4;6;8;10;12;14;16;18;20;22;24],4)

ClassA4E1 = a([1;3;5;7;9;11;13;15;17;19;21;23],5)
ClassA4E2 = a([2;4;6;8;10;12;14;16;18;20;22;24],5)


unqA1E1 = unique(A1E1);
unqA1E2 = unique(A1E2);
unqA1E3 = unique(A1E3);


unqClassA1E1 = unique(ClassA1E1);
unqClassA1E2 = unique(ClassA1E2);
unqClassA1E3 = unique(ClassA1E3);

unqClassA2E1 = unique(ClassA2E1);
unqClassA2E2 = unique(ClassA2E2);

unqClassA3E1 = unique(ClassA3E1);
unqClassA3E2 = unique(ClassA3E2);

unqClassA4E1 = unique(ClassA4E1);
unqClassA4E2 = unique(ClassA4E2);


freqClassA1E1 = histc(ClassA1E1,unqClassA1E1);
freqClassA1E2 = histc(ClassA1E2,unqClassA1E2);
freqClassA1E3 = histc(ClassA1E3,unqClassA1E3);

freqClassA2E1 = histc(ClassA2E1, unqClassA2E1);
freqClassA2E2 = histc(ClassA2E2, unqClassA2E2);

freqClassA3E1 = histc(ClassA3E1, unqClassA3E1);
freqClassA3E2 = histc(ClassA3E2, unqClassA3E2);

freqClassA4E1 = histc(ClassA4E1, unqClassA4E1)
freqClassA4E2 = histc(ClassA4E2, unqClassA4E2)

totalFreqA1E1 = freqClassA1E1(1,1)+freqClassA1E1(2,1)+freqClassA1E1(3,1);
totalFreqA1E2 = freqClassA1E2(1,1)+freqClassA1E2(2,1)+freqClassA1E2(3,1);
totalFreqA1E3 = freqClassA1E3(1,1)+freqClassA1E3(2,1)+freqClassA1E3(3,1);
totalFreqA1 = totalFreqA1E1 + totalFreqA1E2 + totalFreqA1E3;

totalFreqA2E1 = freqClassA2E1(1,1)+freqClassA2E1(2,1)+freqClassA2E1(3,1);
totalFreqA2E2 = freqClassA2E2(1,1)+freqClassA2E2(2,1)+freqClassA2E2(3,1);
totalFreqA2 = totalFreqA2E1 + totalFreqA2E2;

totalFreqA3E1 = freqClassA3E1(1,1)+freqClassA3E1(2,1);
totalFreqA3E2 = freqClassA3E2(1,1)+freqClassA3E2(2,1);
totalFreqA3 = totalFreqA3E1 + totalFreqA3E2;

totalFreqA4E1 = freqClassA4E1(1,1);
totalFreqA4E2 = freqClassA4E2(1,1)+freqClassA4E2(2,1)+freqClassA4E2(3,1);
totalFreqA4 = totalFreqA4E1 + totalFreqA4E2;

E1A1 = informatie2([(freqClassA1E1(1,1)/totalFreqA1E1),(freqClassA1E1(2,1)/totalFreqA1E1),(freqClassA1E1(3,1)/totalFreqA1E1)]);
E2A1 = informatie2([(freqClassA1E2(1,1)/totalFreqA1E2),(freqClassA1E2(2,1)/totalFreqA1E2),(freqClassA1E2(3,1)/totalFreqA1E2)]);
E3A1 = informatie2([(freqClassA1E3(1,1)/totalFreqA1E3),(freqClassA1E3(2,1)/totalFreqA1E3),(freqClassA1E3(3,1)/totalFreqA1E3)]);

E1A2 = informatie2([(freqClassA2E1(1,1)/totalFreqA2E1),(freqClassA2E1(2,1)/totalFreqA2E1),(freqClassA2E1(3,1)/totalFreqA2E1)]);
E2A2 = informatie2([(freqClassA2E2(1,1)/totalFreqA2E2),(freqClassA2E2(2,1)/totalFreqA2E2),(freqClassA2E2(3,1)/totalFreqA2E2)]);

E1A3 = informatie2([(freqClassA3E1(1,1)/totalFreqA3E1),(freqClassA3E1(2,1)/totalFreqA3E1)]);
E2A3 = informatie2([(freqClassA3E2(1,1)/totalFreqA3E2),(freqClassA3E2(2,1)/totalFreqA3E2)]);

E1A4 = informatie2([freqClassA4E1(1,1)/totalFreqA4E1]);
E2A4 =informatie2([(freqClassA4E2(1,1)/totalFreqA4E2),(freqClassA4E2(2,1)/totalFreqA4E2),(freqClassA4E2(3,1)/totalFreqA4E2)]);

A1Enew = ((totalFreqA1E1/totalFreqA1)*E1A1 + (totalFreqA1E2/totalFreqA1)*E2A1 + (totalFreqA1E3/totalFreqA1)*E3A1)
A2Enew = ((totalFreqA2E1/totalFreqA2)*E1A2 + (totalFreqA2E2/totalFreqA2)*E2A2)
A3Enew = ((totalFreqA3E1/totalFreqA3)*E1A3 + (totalFreqA3E2/totalFreqA3)*E2A3)
A4Enew = ((totalFreqA4E1/totalFreqA4)*E1A4 + (totalFreqA4E2/totalFreqA4)*E2A4)


StartEntropy = informatie2([(Class1/totalClass),(Class2/totalClass),(Class3/totalClass)])

InfoGainA1 = StartEntropy - A1Enew
InfoGainA2 = StartEntropy - A2Enew
InfoGainA3 = StartEntropy - A3Enew
InfoGainA4 = StartEntropy - A4Enew

infoGains = [InfoGainA1, InfoGainA2, InfoGainA3, InfoGainA4];
BestSplit = max(infoGains)

% a = [1,  1,  1,  1,  3;
% 1,  1,  1,  2,  2;
% 1,  1,  2,  1,  3;
% 1,  1,  2,  2,  1;
% 1,  2,  1,  1,  3;
% 1,  2,  1,  2,  2;
% 1,  2,  2,  1,  3;
% 1,  2,  2,  2,  1;
% 2,  1,  1,  1,  3;
% 2,  1,  1,  2,  2;
% 2,  1,  2,  1,  3;
% 2,  1,  2,  2,  1;
% 2,  2,  1,  1,  3;
% 2,  2,  1,  2,  2;
% 2,  2,  2,  1,  3;
% 2,  2,  2,  2,  3;
% 3,  1,  1,  1,  3;
% 3,  1,  1,  2,  3;
% 3,  1,  2,  1,  3;
% 3,  1,  2,  2,  1;
% 3,  2,  1,  1,  3;
% 3,  2,  1,  2,  2;
% 3,  2,  2,  1,  3;
% 3,  2,  2,  2,  3]
end

