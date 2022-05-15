function performanceMeasure()
queueLength=[];
serverUtilization=[];
timeForSuit=[];



disp('average length of each queue:');
disp('-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp(['interarrival mean' blanks(10) 'queue 1' blanks(10) 'queue 2' blanks(10) 'queue 3' blanks(10) 'queue 41' blanks(10) 'queue 42' blanks(10) 'queue 5']);
disp('------------------------------------------------------------------------------------------------------------------------------------------------------------------');

[queueLength1,serverUtilization1,timeForSuit1] = drySystem1(12);
disp(['12' blanks(26) num2str(queueLength1(1,1)/720) blanks(10) num2str(queueLength1(2,1)/720) blanks(10) num2str(queueLength1(3,1)/720) blanks(10) num2str(queueLength1(4,1)/720) blanks(13) num2str(queueLength1(5,1)/720) blanks(13) num2str(queueLength1(6,1)/720)]);

[queueLength2,serverUtilization2,timeForSuit2] = drySystem1(10);
disp(['10' blanks(26) num2str(queueLength2(1,1)/720) blanks(10) num2str(queueLength2(2,1)/720) blanks(10) num2str(queueLength2(3,1)/720) blanks(10) num2str(queueLength2(4,1)/720) blanks(13) num2str(queueLength2(5,1)/720) blanks(13) num2str(queueLength2(6,1)/720)]);

[queueLength3,serverUtilization3,timeForSuit3] = drySystem1(7);
disp(['7' blanks(26) num2str(queueLength3(1,1)/720) blanks(10) num2str(queueLength3(2,1)/720) blanks(10) num2str(queueLength3(3,1)/720) blanks(10) num2str(queueLength3(4,1)/720) blanks(13) num2str(queueLength3(5,1)/720) blanks(13) num2str(queueLength3(6,1)/720)]);

[queueLength4,serverUtilization4,timeForSuit4] = drySystem1(5);
disp(['5' blanks(26) num2str(queueLength4(1,1)/720) blanks(10) num2str(queueLength4(2,1)/720) blanks(10) num2str(queueLength4(3,1)/720) blanks(10) num2str(queueLength4(4,1)/720) blanks(13) num2str(queueLength4(5,1)/720) blanks(13) num2str(queueLength4(6,1)/720)]);

[queueLength5,serverUtilization5,timeForSuit5] = drySystem1(2);
disp(['2' blanks(26) num2str(queueLength5(1,1)/720) blanks(10) num2str(queueLength5(2,1)/720) blanks(10) num2str(queueLength5(3,1)/720) blanks(10) num2str(queueLength5(4,1)/720) blanks(13) num2str(queueLength5(5,1)/720) blanks(13) num2str(queueLength5(6,1)/720)]);

disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp('maximum length of each queue:');
disp('-----------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp(['interarrival mean' blanks(10) 'queue 1' blanks(10) 'queue 2' blanks(10) 'queue 3' blanks(10) 'queue 41' blanks(10) 'queue 42' blanks(10) 'queue 5']);
disp('------------------------------------------------------------------------------------------------------------------------------------------------------------------');


disp(['12' blanks(26) num2str(queueLength1(1,2)) blanks(16) num2str(queueLength1(2,2)) blanks(16) num2str(queueLength1(3,2)) blanks(16) num2str(queueLength1(4,2)) blanks(16) num2str(queueLength1(5,2)) blanks(16) num2str(queueLength1(6,2))]);
disp(['10' blanks(26) num2str(queueLength2(1,2)) blanks(16) num2str(queueLength2(2,2)) blanks(16) num2str(queueLength2(3,2)) blanks(16) num2str(queueLength2(4,2)) blanks(16) num2str(queueLength2(5,2)) blanks(16) num2str(queueLength2(6,2))]);
disp(['7' blanks(26) num2str(queueLength3(1,2)) blanks(16) num2str(queueLength3(2,2)) blanks(16) num2str(queueLength3(3,2)) blanks(16) num2str(queueLength3(4,2)) blanks(16) num2str(queueLength3(5,2)) blanks(16) num2str(queueLength3(6,2))]);
disp(['5' blanks(26) num2str(queueLength4(1,2)) blanks(16) num2str(queueLength4(2,2)) blanks(16) num2str(queueLength4(3,2)) blanks(16) num2str(queueLength4(4,2)) blanks(16) num2str(queueLength4(5,2)) blanks(16) num2str(queueLength4(6,2))]);
disp(['2' blanks(26) num2str(queueLength5(1,2)) blanks(16) num2str(queueLength5(2,2)) blanks(16) num2str(queueLength5(3,2)) blanks(16) num2str(queueLength5(4,2)) blanks(16) num2str(queueLength5(5,2)) blanks(16) num2str(queueLength5(6,2))]);

disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp('server utilization::');
disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp(['interarrival mean' blanks(10) 'server1' blanks(10) 'server2' blanks(10) 'server3'  blanks(10) 'server4' blanks(10) 'server5']);
disp(['12' blanks(26) num2str(serverUtilization1(1,1)/720) blanks(9) num2str(serverUtilization1(1,2)/720) blanks(9) num2str(serverUtilization1(1,3)/720) blanks(9) num2str(serverUtilization1(1,4)/720) blanks(9) num2str(serverUtilization1(1,5)/720)]);
disp(['10' blanks(26) num2str(serverUtilization2(1,1)/720) blanks(9) num2str(serverUtilization2(1,2)/720) blanks(9) num2str(serverUtilization2(1,3)/720) blanks(9) num2str(serverUtilization2(1,4)/720) blanks(9) num2str(serverUtilization2(1,5)/720)]);
disp(['7' blanks(26) num2str(serverUtilization3(1,1)/720) blanks(9) num2str(serverUtilization3(1,2)/720) blanks(9) num2str(serverUtilization3(1,3)/720) blanks(9) num2str(serverUtilization3(1,4)/720) blanks(9) num2str(serverUtilization3(1,5)/720)]);
disp(['5' blanks(26) num2str(serverUtilization4(1,1)/720) blanks(9) num2str(serverUtilization4(1,2)/720) blanks(9) num2str(serverUtilization4(1,3)/720) blanks(9) num2str(serverUtilization4(1,4)/720) blanks(9) num2str(serverUtilization4(1,5)/720)]);
disp(['2' blanks(26) num2str(serverUtilization5(1,1)/720) blanks(9) num2str(serverUtilization5(1,2)/720) blanks(9) num2str(serverUtilization5(1,3)/720) blanks(9) num2str(serverUtilization5(1,4)/720) blanks(9) num2str(serverUtilization5(1,5)/720)]);

disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp('avg time in the system for damaged suit and undamaged suit::');
disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp(['interarrival mean' blanks(10) 'damaged suit' blanks(10) 'undamaged suit']);
disp(['12' blanks(26) num2str(timeForSuit1(1,2)/timeForSuit1(1,1)) blanks(20) num2str(timeForSuit1(2,2)/timeForSuit1(2,1))]);
disp(['10' blanks(26) num2str(timeForSuit2(1,2)/timeForSuit2(1,1)) blanks(20) num2str(timeForSuit2(2,2)/timeForSuit2(2,1))]);
disp(['7' blanks(26) num2str(timeForSuit3(1,2)/timeForSuit3(1,1)) blanks(20) num2str(timeForSuit3(2,2)/timeForSuit3(2,1))]);
disp(['5' blanks(26) num2str(timeForSuit4(1,2)/timeForSuit4(1,1)) blanks(20) num2str(timeForSuit4(2,2)/timeForSuit4(2,1))]);
disp(['2' blanks(26) num2str(timeForSuit5(1,2)/timeForSuit5(1,1)) blanks(20) num2str(timeForSuit5(2,2)/timeForSuit5(2,1))]);

disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp('max time in the system for damaged suit and undamaged suit::');
disp('-------------------------------------------------------------------------------------------------------------------------------------------------------------------');
disp(['interarrival mean' blanks(10) 'damaged suit' blanks(10) 'undamaged suit']);
disp(['12' blanks(26) num2str(timeForSuit1(1,3)) blanks(20) num2str(timeForSuit1(2,3))]);
disp(['10' blanks(26) num2str(timeForSuit2(1,3)) blanks(20) num2str(timeForSuit2(2,3))]);
disp(['7' blanks(26) num2str(timeForSuit3(1,3)) blanks(20) num2str(timeForSuit3(2,3))]);
disp(['5' blanks(26) num2str(timeForSuit4(1,3)) blanks(20) num2str(timeForSuit4(2,3))]);
disp(['2' blanks(26) num2str(timeForSuit5(1,3)) blanks(20) num2str(timeForSuit5(2,3))]);



end