function avgTimeQueueCompare()
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

X1=[1:16];    
Y1=[queueLength1(1,1)/720 queueLength2(1,1)/720 queueLength3(1,1)/720 queueLength4(1,1)/720 queueLength5(1,1)/720 queueLength6(1,1)/720 queueLength7(1,1)/720 queueLength8(1,1)/720 queueLength9(1,1)/720 queueLength10(1,1)/720 queueLength11(1,1)/720 queueLength12(1,1)/720 queueLength13(1,1)/720 queueLength14(1,1)/720 queueLength15(1,1)/720 queueLength16(1,1)/720];

X2=[1:16];    
Y2=[queueLength1(2,1)/720 queueLength2(2,1)/720 queueLength3(2,1)/720 queueLength4(2,1)/720 queueLength5(2,1)/720 queueLength6(2,1)/720 queueLength7(2,1)/720 queueLength8(2,1)/720 queueLength9(2,1)/720 queueLength10(2,1)/720 queueLength11(2,1)/720 queueLength12(2,1)/720 queueLength13(2,1)/720 queueLength14(2,1)/720 queueLength15(2,1)/720 queueLength16(2,1)/720];

X3=[1:16];    
Y3=[queueLength1(3,1)/720 queueLength2(3,1)/720 queueLength3(3,1)/720 queueLength4(3,1)/720 queueLength5(3,1)/720 queueLength6(3,1)/720 queueLength7(3,1)/720 queueLength8(3,1)/720 queueLength9(3,1)/720 queueLength10(3,1)/720 queueLength11(3,1)/720 queueLength12(3,1)/720 queueLength13(3,1)/720 queueLength14(3,1)/720 queueLength15(3,1)/720 queueLength16(3,1)/720];

X4=[1:16];    
Y4=[queueLength1(4,1)/720 queueLength2(4,1)/720 queueLength3(4,1)/720 queueLength4(4,1)/720 queueLength5(4,1)/720 queueLength6(4,1)/720 queueLength7(4,1)/720 queueLength8(4,1)/720 queueLength9(4,1)/720 queueLength10(4,1)/720 queueLength11(4,1)/720 queueLength12(4,1)/720 queueLength13(4,1)/720 queueLength14(4,1)/720 queueLength15(4,1)/720 queueLength16(4,1)/720];

X5=[1:16];    
Y5=[queueLength1(5,1)/720 queueLength2(5,1)/720 queueLength3(5,1)/720 queueLength4(5,1)/720 queueLength5(5,1)/720 queueLength6(5,1)/720 queueLength7(5,1)/720 queueLength8(5,1)/720 queueLength9(5,1)/720 queueLength10(5,1)/720 queueLength11(5,1)/720 queueLength12(5,1)/720 queueLength13(5,1)/720 queueLength14(5,1)/720 queueLength15(5,1)/720 queueLength16(5,1)/720];

X6=[1:16];    
Y6=[queueLength1(6,1)/720 queueLength2(6,1)/720 queueLength3(6,1)/720 queueLength4(6,1)/720 queueLength5(6,1)/720 queueLength6(6,1)/720 queueLength7(6,1)/720 queueLength8(6,1)/720 queueLength9(6,1)/720 queueLength10(6,1)/720 queueLength11(6,1)/720 queueLength12(6,1)/720 queueLength13(6,1)/720 queueLength14(6,1)/720 queueLength15(6,1)/720 queueLength16(6,1)/720];

subplot(2,1,1);
plot(X1,Y1,'r','LineWidth',2);
hold on;


legend('queue1');

title('Average length of queue1');
xlabel('Interarrival Mean');
ylabel('Average Length of queue1');
axis([0 16 0 200]);


%hold on;

subplot(2,1,2);
plot(X2,Y2,'b','LineWidth',3);
hold on;
plot(X3,Y3,'-ko');
hold on;
plot(X4,Y4,'m','LineWidth',4);
hold on;
plot(X5,Y5,'r','LineWidth',2);
hold on;
plot(X6,Y6,'c-','LineWidth',3);


legend('queue2','queue3','queue41','queue42','queue5');

title('Average length of each queue');
xlabel('Interarrival Mean');
ylabel('Average Length of each Queue');
axis([0 16 0 9]);




end