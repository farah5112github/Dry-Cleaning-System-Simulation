function dryCleaningSystem1()

maxTime = 720;%12hr = 720minutes;
interArrivalMean = 10;
serviceMean1 = 6;
serviceMean2 = 4;
serviceMean3 = 5;
serviceMean41 = 5;%undamaged;
serviceMean42 = 8;%damaged;
serviceMean5 = 12;

suitInfo = [];%suit_no arrivalTime departureTime
server=[realmax realmax;realmax realmax;realmax realmax;realmax realmax;realmax realmax;]; %suit_no departureTime

queue1 = [];%suit_no
queue2 = [];%suit_no
queue3 = [];%suit_no
queue41 = [];%suit_no
queue42 = [];%suit_no
queue5 = [];%suit_no

server1Busy = 0;
server2Busy = 0;
server3Busy = 0;
server4Busy = 0;
server5Busy = 0;

nextArrival = ceil(exprnd(interArrivalMean));

nextDeparture1 = realmax;  
nextDeparture2 = realmax;
nextDeparture3 = realmax;
nextDeparture4 = realmax;
nextDeparture5 = realmax;

damagedQueue1 = [];
damagedQueue2 = [];

queueLength = zeros(6,2); % total length , max length;
serverUtilization = zeros(1,5);
timeForSuit = zeros(2,3); %time count totalTime maxTime

for time = 0:maxTime
    
    if time == 0
       disp('waiting for the arrival of first suit....'); 
    end    
    
    %arrival at queue1 :::
    if time == nextArrival
       suit_no = size(suitInfo,1) + 1;
       suitInfo = [suitInfo;[suit_no time 0]];
       queue1 = [queue1 suit_no];
       nextArrival = nextArrival + ceil(exprnd(interArrivalMean));
       
       disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(suit_no) blanks(1) 'arrives at queue1']);
       disp(suitInfo);
       
    end    
        
    %arrival at server1 :::
    if server1Busy == 0 && length(queue1) ~= 0
       server(1,1) = queue1(1);%suit_no that goes to the server first,FIFO..... 
       server(1,2) = time + ceil(exprnd(serviceMean1));%time on which suit departs from the server....
       queue1 = queue1(2:length(queue1));
       nextDeparture1 = server(1,2);
       
       server1Busy = 1;
       
       disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(1,1)) blanks(1) 'arrives at server1']);
       %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(1,1)) blanks(10) 'arrives at server1']);  
       
    end
    
    %departure from server1 :::
    if time == nextDeparture1
       queue2 = [queue2 server(1,1)]; % jacket part...
       queue3 = [queue3 server(1,1)]; % pant part...
       
       disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(1,1)) blanks(1) 'departs from server1']);
       %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(1,1)) blanks(10) 'departs from server1']);
       
       server(1,1) = 0;
       server(1,2) = 0;
       server1Busy = 0;
    end
    
    %-----------------end of server1-------------------------------------
    %arrival at server2 :::
    if server2Busy == 0 && length(queue2) ~= 0
       server(2,1) = queue2(1);%suit_no that goes to the server first,FIFO..... 
       server(2,2) = time + ceil(exprnd(serviceMean2));%time on which suit departs from the server....
       queue2 = queue2(2:length(queue2));
       nextDeparture2 = server(2,2);
       
       server2Busy = 1;
       
       disp(['Minute' num2str(time) '::' blanks(1) 'jacket of suit' blanks(1) num2str(server(2,1)) blanks(1) 'arrives at server2']);
       %disp(['Minute:' num2str(time) blanks(10) 'jacket of suit no:' num2str(server(2,1)) blanks(10) 'arrives at server2']);  
       
    end  
    %arrival at server3 :::
    if server3Busy == 0 && length(queue3) ~= 0
       server(3,1) = queue3(1);%suit_no that goes to the server first,FIFO..... 
       server(3,2) = time + ceil(exprnd(serviceMean3));%time on which suit departs from the server....
       queue3 = queue3(2:length(queue3));
       nextDeparture3 = server(3,2);
       
       server3Busy = 1;
       
       disp(['Minute' num2str(time) '::' blanks(1) 'pant of suit' blanks(1) num2str(server(3,1)) blanks(1) 'arrives at server3']);
       %disp(['Minute:' num2str(time) blanks(10) 'pant of suit no:' num2str(server(3,1)) blanks(10) 'arrives at server3']);  
       
    end
    %departure from server2 :::
    if time == nextDeparture2
       queue41 = [queue41 server(2,1)];
       
       if rand<0.05
          damagedQueue1 = [damagedQueue1 server(2,1)];
          disp(['jacket of suit:' blanks(1) num2str(server(2,1)) blanks(1) 'is damaged...']);
       end
       
       disp(['Minute' num2str(time) '::' blanks(1) 'jacket of suit' blanks(1) num2str(server(2,1)) blanks(1) 'departs from server2']);
       %disp(['Minute:' num2str(time) blanks(10) 'jacket of suit no:' num2str(server(2,1)) blanks(10) 'departs from server2']);
       
       server(2,1) = 0;
       server(2,2) = 0;
       server2Busy = 0;
    end
    %departure from server3 :::
    if time == nextDeparture3
       queue42 = [queue42 server(3,1)];
       
       if rand<0.1
          damagedQueue2 = [damagedQueue2 server(3,1)];
          disp(['pant of suit:' blanks(1) num2str(server(3,1)) blanks(1) 'is damaged...']);
       end
       
       disp(['Minute' num2str(time) '::' blanks(1) 'pant of suit' blanks(1) num2str(server(3,1)) blanks(1) 'departs from server3']);
       %disp(['Minute:' num2str(time) blanks(10) 'pant of suit no:' num2str(server(3,1)) blanks(10) 'departs from server3']);
       
       server(3,1) = 0;
       server(3,2) = 0;
       server3Busy = 0;
    end
    %-----------end of server2 and server 3--------------------------
    
    %arrival at server4 :::
    if server4Busy == 0 && length(queue41) ~= 0 && length(queue42) ~= 0 
       server(4,1) = queue41(1);%suit_no that goes to the server first,FIFO..... 
       
       if ismember(server(4,1),damagedQueue1) || ismember(server(4,1),damagedQueue2)
          server(4,2) = time + ceil(exprnd(serviceMean42));%damaged...
       else
          server(4,2) = time + ceil(exprnd(serviceMean41));%undamaged 
       end    
       
       disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(4,1)) blanks(1) 'arrives at server4']);
       %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(4,1)) blanks(10) 'arrives at server4']);
       
       queue41 = queue41(2:length(queue41));
       queue42 = queue42(2:length(queue42));
       
       nextDeparture4 = server(4,2);
       
       server4Busy = 1;
    end
    %departure from server4 :::
    if time == nextDeparture4
       if ismember(server(4,1),damagedQueue1) || ismember(server(4,1),damagedQueue2)
          queue5 = [queue5 server(4,1)];
          disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(4,1)) blanks(1) 'departs from server4']);
          %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(4,1)) blanks(10) 'departs from server4']);
       else
          suitInfo(server(4,1),3) = server(4,2);
          disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(4,1)) blanks(1) 'is returned to the customer....']);
          %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(4,1)) blanks(10) 'is returned to the customer....']);
       end 
       server(4,1) = 0;
       server(4,2) = 0;
       server4Busy = 0;
    end    
    %----------------------end of server4------------------------
    
    %arrival at server5 :::
    if server5Busy == 0 && length(queue5) ~= 0
       server(5,1) = queue5(1);%suit_no that goes to the server first,FIFO..... 
       server(5,2) = time + ceil(exprnd(serviceMean5));%time on which suit departs from the server....
       queue5 = queue5(2:length(queue5));
       nextDeparture5 = server(5,2);
       
       server5Busy = 1;
       
       disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(5,1)) blanks(1) 'arrives at server5']);
       %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(5,1)) blanks(10) 'arrives at server5']);  
       
    end
    
    %departure from server5 :::
    if time == nextDeparture5
       
        suitInfo(server(5,1),3) = server(5,2);
        
        disp(['Minute' num2str(time) '::' blanks(1) 'suit' blanks(1) num2str(server(5,1)) blanks(1) 'is returned to the customer.....']);
        %disp(['Minute:' num2str(time) blanks(10) 'suit no:' num2str(server(5,1)) blanks(10) 'is returned to the customer']);
       
       server(5,1) = 0;
       server(5,2) = 0;
       server5Busy = 0;
    end
    %----------------------end of server5------------------------
    
    %avg and max length of each queue :::
    
    %queue 1:
    if length(queue1) ~= 0
       queueLength(1,1) = queueLength(1,1) + length(queue1); %total
       
       if length(queue1) > queueLength(1,2)
          queueLength(1,2) = length(queue1); %max
       end    
       
    end
       
    %queue 2:
    if length(queue2) ~= 0
       queueLength(2,1) = queueLength(2,1) + length(queue2); %total
       
       if length(queue2) > queueLength(2,2)
          queueLength(2,2) = length(queue2); %max
       end    
       
    end
    
    %queue 3:
    if length(queue3) ~= 0
       queueLength(3,1) = queueLength(3,1) + length(queue3); %total
       
       if length(queue3) > queueLength(3,2)
          queueLength(3,2) = length(queue3); %max
       end    
       
    end
    
    %queue 41:
    if length(queue41) ~= 0
       queueLength(4,1) = queueLength(4,1) + length(queue41); %total
       
       if length(queue41) > queueLength(4,2)
          queueLength(4,2) = length(queue41); %max
       end    
       
    end
    
    %queue 42:
    if length(queue42) ~= 0
       queueLength(5,1) = queueLength(5,1) + length(queue42); %total
       
       if length(queue42) > queueLength(5,2)
          queueLength(5,2) = length(queue42); %max
       end    
       
    end
    
    %queue 5:
    if length(queue5) ~= 0
       queueLength(6,1) = queueLength(6,1) + length(queue5); %total
       
       if length(queue5) > queueLength(6,2)
          queueLength(6,2) = length(queue5); %max
       end    
       
    end
   %avg server utilization:::
   
   %server 1:
   if server1Busy ~= 0
      serverUtilization(1,1) = serverUtilization(1,1) + 1; 
   end 
    
   %server 2:
   if server2Busy ~= 0
      serverUtilization(1,2) = serverUtilization(1,2) + 1; 
   end
   
   %server 3:
   if server3Busy ~= 0
      serverUtilization(1,3) = serverUtilization(1,3) + 1; 
   end
   
   %server 4:
   if server4Busy ~= 0
      serverUtilization(1,4) = serverUtilization(1,4) + 1; 
   end
   
   %server 5:
   if server5Busy ~= 0
      serverUtilization(1,5) = serverUtilization(1,5) + 1; 
   end
   
   if time == maxTime 
   disp('the system is closed .......................................');
   end
   
end
suitInfo

    
%average and maximum time in the system for each type of outcome.....
for i=1:size(suitInfo,1)
    
    if suitInfo(i,2) == 0 || suitInfo(i,3) ==0 
       continue;
    end    
    if ismember(suitInfo(i,1),damagedQueue1) || ismember(suitInfo(i,1),damagedQueue2)
       timeForSuit(1,1) = timeForSuit(1,1) + 1;%time count
       timeForSuit(1,2) = timeForSuit(1,2) + (suitInfo(i,3) - suitInfo(i,2));%total time
       
       if (suitInfo(i,3) - suitInfo(i,2)) > timeForSuit(1,3)
           timeForSuit(1,3) = suitInfo(i,3) - suitInfo(i,2);%max time
       end    
    else    
       timeForSuit(2,1) = timeForSuit(2,1) + 1;%time count
       timeForSuit(2,2) = timeForSuit(2,2) + (suitInfo(i,3) - suitInfo(i,2));%total time
       
       if (suitInfo(i,3) - suitInfo(i,2)) > timeForSuit(2,3)
           timeForSuit(2,3) = suitInfo(i,3) - suitInfo(i,2);%max time
       end
       
    end    
    
end

%performance measure::

% 1...avg and max length of each queue.........

disp('average and maximum length of each queue:');
disp(['average length of queue1=' blanks(1) num2str(queueLength(1,1)/maxTime)]);
disp(['maximum length of queue1=' blanks(1) num2str(queueLength(1,2))]);
fprintf('\n\n');


disp(['average length of queue2=' blanks(1) num2str(queueLength(2,1)/maxTime)]);
disp(['maximum length of queue2=' blanks(1) num2str(queueLength(2,2))]);
fprintf('\n\n');


disp(['average length of queue3=' blanks(1) num2str(queueLength(3,1)/maxTime)]);
disp(['maximum length of queue3=' blanks(1) num2str(queueLength(3,2))]);
fprintf('\n\n');


disp(['average length of queue41=' blanks(1) num2str(queueLength(4,1)/maxTime)]);
disp(['maximum length of queue41=' blanks(1) num2str(queueLength(4,2))]);
fprintf('\n\n');


disp(['average length of queue42=' blanks(1) num2str(queueLength(5,1)/maxTime)]);
disp(['maximum length of queue42=' blanks(1) num2str(queueLength(5,2))]);
fprintf('\n\n');


disp(['average length of queue5=' blanks(1) num2str(queueLength(6,1)/maxTime)]);
disp(['maximum length of queue5=' blanks(1) num2str(queueLength(6,2))]);
fprintf('\n\n');

disp('--------------------------------------------------------------------');
fprintf('\n');
% 2...utilization of each server.........
disp('utilization of each server:');
disp(['utilization of server1=' blanks(1) num2str(serverUtilization(1,1)/maxTime) ]);
disp(['utilization of server2=' blanks(1) num2str(serverUtilization(1,2)/maxTime) ]);
disp(['utilization of server3=' blanks(1) num2str(serverUtilization(1,3)/maxTime) ]);
disp(['utilization of server4=' blanks(1) num2str(serverUtilization(1,4)/maxTime) ]);
disp(['utilization of server5=' blanks(1) num2str(serverUtilization(1,5)/maxTime) ]);
disp('--------------------------------------------------------------------');
fprintf('\n');
%3...avg and max time in the system for each type of outcome.... 
disp('avg and max time in the system for each type of outcome:');
disp(['average time in the system for damaged suits=' blanks(1) num2str(timeForSuit(1,2)/timeForSuit(1,1))]);
disp(['maximum time in the system for damaged suits=' blanks(1) num2str(timeForSuit(1,3))]);
fprintf('\n\n');

disp(['average time in the system for undamaged suits=' blanks(1) num2str(timeForSuit(2,2)/timeForSuit(2,1))]);
disp(['maximum time in the system for undamaged suits=' blanks(1) num2str(timeForSuit(2,3))]);


end

