function graphQueue4()
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
Y1=[serverUtilization1(1,1)/720 serverUtilization2(1,1)/720 serverUtilization3(1,1)/720 serverUtilization4(1,1)/720 serverUtilization5(1,1)/720 serverUtilization6(1,1)/720 serverUtilization7(1,1)/720 serverUtilization8(1,1)/720 serverUtilization9(1,1)/720 serverUtilization10(1,1)/720 serverUtilization11(1,1)/720 serverUtilization12(1,1)/720 serverUtilization13(1,1)/720 serverUtilization14(1,1)/720 serverUtilization15(1,1)/720 serverUtilization16(1,1)/720];

X2=[1:16];    
Y2=[serverUtilization1(1,2)/720 serverUtilization2(1,2)/720 serverUtilization3(1,2)/720 serverUtilization4(1,2)/720 serverUtilization5(1,2)/720 serverUtilization6(1,2)/720 serverUtilization7(1,2)/720 serverUtilization8(1,2)/720 serverUtilization9(1,2)/720 serverUtilization10(1,2)/720 serverUtilization11(1,2)/720 serverUtilization12(1,2)/720 serverUtilization13(1,2)/720 serverUtilization14(1,2)/720 serverUtilization15(1,2)/720 serverUtilization16(1,2)/720];


X3=[1:16];    
Y3=[serverUtilization1(1,3)/720 serverUtilization2(1,3)/720 serverUtilization3(1,3)/720 serverUtilization4(1,3)/720 serverUtilization5(1,3)/720 serverUtilization6(1,3)/720 serverUtilization7(1,3)/720 serverUtilization8(1,3)/720 serverUtilization9(1,3)/720 serverUtilization10(1,3)/720 serverUtilization11(1,3)/720 serverUtilization12(1,3)/720 serverUtilization13(1,3)/720 serverUtilization14(1,3)/720 serverUtilization15(1,3)/720 serverUtilization16(1,3)/720];

X4=[1:16];    
Y4=[serverUtilization1(1,4)/720 serverUtilization2(1,4)/720 serverUtilization3(1,4)/720 serverUtilization4(1,4)/720 serverUtilization5(1,4)/720 serverUtilization6(1,4)/720 serverUtilization7(1,4)/720 serverUtilization8(1,4)/720 serverUtilization9(1,4)/720 serverUtilization10(1,4)/720 serverUtilization11(1,4)/720 serverUtilization12(1,4)/720 serverUtilization13(1,4)/720 serverUtilization14(1,4)/720 serverUtilization15(1,4)/720 serverUtilization16(1,4)/720];

X5=[1:16];    
Y5=[serverUtilization1(1,5)/720 serverUtilization2(1,5)/720 serverUtilization3(1,5)/720 serverUtilization4(1,5)/720 serverUtilization5(1,5)/720 serverUtilization6(1,5)/720 serverUtilization7(1,5)/720 serverUtilization8(1,5)/720 serverUtilization9(1,5)/720 serverUtilization10(1,5)/720 serverUtilization11(1,5)/720 serverUtilization12(1,5)/720 serverUtilization13(1,5)/720 serverUtilization14(1,5)/720 serverUtilization15(1,5)/720 serverUtilization16(1,5)/720];

%subplot(2,1,1);
plot(X1,Y1,'r','LineWidth',2);
hold on;


%legend('queue1');

%title('Utilization of server1');
%xlabel('Interarrival Mean');
%ylabel('Server Utilization');
%axis([0 16 0 1]);


%subplot(2,1,2);
plot(X2,Y2,'b','LineWidth',3);
hold on;
plot(X3,Y3,'-ko');
hold on;
plot(X4,Y4,'m','LineWidth',4);
hold on;
plot(X5,Y5,'c','LineWidth',2);
hold on;



legend('server1','server2','server3','server4','server5');

title('Utilization of servers');
xlabel('Interarrival Mean');
ylabel('Server Utilization');
axis([0 16 0 1]);



end