function avgTimeCompareForSuit()
[queueLength1,serverUtilization1,timeForSuit1]=drySystem1(1);
[queueLength2,serverUtilization2,timeForSuit2]=drySystem1(2);
[queueLength3,serverUtilization3,timeForSuit3]=drySystem1(3);
[queueLength4,serverUtilization4,timeForSuit4]=drySystem1(4);
[queueLength5,serverUtilization5,timeForSuit5]=drySystem1(5);
[queueLength6,serverUtilization6,timeForSuit6]=drySystem1(6);
[queueLength7,serverUtilization7,timeForSuit7]=drySystem1(7);
[queueLength8,serverUtilization8,timeForSuit8]=drySystem1(8);
[queueLength9,serverUtilization9,timeForSuit9]=drySystem1(9);
[queueLength10,serverUtilization10,timeForSuit10]=drySystem1(10);
[queueLength11,serverUtilization11,timeForSuit11]=drySystem1(11);
[queueLength12,serverUtilization12,timeForSuit12]=drySystem1(12);
[queueLength13,serverUtilization13,timeForSuit13]=drySystem1(13);
[queueLength14,serverUtilization14,timeForSuit14]=drySystem1(14);
[queueLength15,serverUtilization15,timeForSuit15]=drySystem1(15);
[queueLength16,serverUtilization16,timeForSuit16]=drySystem1(16);



%X1=[1:16];    
%Y1=[queueLength1(1,1)/720 queueLength2(1,1)/720 queueLength3(1,1)/720 queueLength4(1,1)/720 queueLength5(1,1)/720 queueLength6(1,1)/720 queueLength7(1,1)/720 queueLength8(1,1)/720 queueLength9(1,1)/720 queueLength10(1,1)/720 queueLength11(1,1)/720 queueLength12(1,1)/720 queueLength13(1,1)/720 queueLength14(1,1)/720 queueLength15(1,1)/720 queueLength16(1,1)/720];

X1=[1:16];    
Y1=[timeForSuit1(1,2)/timeForSuit1(1,1) timeForSuit2(1,2)/timeForSuit1(1,1) timeForSuit3(1,2)/timeForSuit1(1,1) timeForSuit4(1,2)/timeForSuit1(1,1) timeForSuit5(1,2)/timeForSuit1(1,1) timeForSuit6(1,2)/timeForSuit1(1,1) timeForSuit7(1,2)/timeForSuit1(1,1) timeForSuit8(1,2)/timeForSuit1(1,1) timeForSuit9(1,2)/timeForSuit1(1,1) timeForSuit10(1,2)/timeForSuit1(1,1) timeForSuit11(1,2)/timeForSuit1(1,1) timeForSuit12(1,2)/timeForSuit1(1,1) timeForSuit13(1,2)/timeForSuit1(1,1) timeForSuit14(1,2)/timeForSuit1(1,1) timeForSuit15(1,2)/timeForSuit1(1,1) timeForSuit16(1,2)/timeForSuit1(1,1)];

X2=[1:16];    
Y2=[timeForSuit1(2,2)/timeForSuit1(2,1) timeForSuit2(2,2)/timeForSuit1(2,1) timeForSuit3(2,2)/timeForSuit1(2,1) timeForSuit4(2,2)/timeForSuit1(2,1) timeForSuit5(2,2)/timeForSuit1(2,1) timeForSuit6(2,2)/timeForSuit1(2,1) timeForSuit7(2,2)/timeForSuit1(2,1) timeForSuit8(2,2)/timeForSuit1(2,1) timeForSuit9(2,2)/timeForSuit1(2,1) timeForSuit10(2,2)/timeForSuit1(2,1) timeForSuit11(2,2)/timeForSuit1(2,1) timeForSuit12(2,2)/timeForSuit1(2,1) timeForSuit13(2,2)/timeForSuit1(2,1) timeForSuit14(2,2)/timeForSuit1(2,1) timeForSuit15(2,2)/timeForSuit1(2,1) timeForSuit16(2,2)/timeForSuit1(2,1)];

X3=[1:16];    
Y3=[timeForSuit1(1,3) timeForSuit2(1,3) timeForSuit3(1,3) timeForSuit4(1,3) timeForSuit5(1,3) timeForSuit6(1,3) timeForSuit7(1,3) timeForSuit8(1,3) timeForSuit9(1,3) timeForSuit10(1,3) timeForSuit11(1,3) timeForSuit12(1,3) timeForSuit13(1,3) timeForSuit14(1,3) timeForSuit15(1,3) timeForSuit16(1,3)];

X4=[1:16];    
Y4=[timeForSuit1(2,3) timeForSuit2(2,3) timeForSuit3(2,3) timeForSuit4(2,3) timeForSuit5(2,3) timeForSuit6(2,3) timeForSuit7(2,3) timeForSuit8(2,3) timeForSuit9(2,3) timeForSuit10(2,3) timeForSuit11(2,3) timeForSuit12(2,3) timeForSuit13(2,3) timeForSuit14(2,3) timeForSuit15(2,3) timeForSuit16(2,3)];


subplot(2,1,1);
%plot(X1,Y1,'r--','MarkerSize',10);
plot(X1,Y1,'r','LineWidth',2);
hold on;
plot(X2,Y2,'b','LineWidth',2);
hold on;
xlabel('Interarrival Mean');
ylabel('Average Time');
axis([0 16 0 500]);
legend('damaged suit','undamaged suit');

subplot(2,1,2);
%plot(X3,Y3,'r--','MarkerSize',10);
plot(X3,Y3,'r','LineWidth',2);
hold on;
plot(X4,Y4,'b','LineWidth',2);
hold on;
xlabel('Interarrival Mean');
ylabel('Maximum Time');
axis([0 16 0 600]);
legend('damaged suit','undamaged suit');



end