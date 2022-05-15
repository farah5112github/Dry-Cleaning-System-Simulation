# Dry-Cleaning-System-Simulation
Two-piece suits are processed by a dry cleaner as follows. Suits arrive with geometric interarrival times having mean 10 minutes, and all are initially served by server 1, perhaps after a wait in a FIFO queue.Upon completion of service at server 1, one piece of the suit goes to the server 2, and the other part to server 3. During service at server 2, the jacket has a probability of 0.05 of being damaged, and while at server 3 the probability of a pair of pants being damaged is 0.10. Upon leaving server 2, the jackets go into a queue for server 4;upon leaving server 3, the pants go into a different queue for server 4.Server 4 matches and reassembles suit parts, initiating this when he is idle and two parts from the same suit are available. If bothe parts of the reassembled suit are undamaged, the suit is returned to the customer. If either(or both) of the parts is(are) damaged, the suit goes to customer relations(server5). Assume that all service times are geometric, with the following means(in minutes) and use the indicated stream assignments :

| Server Number | Mean service time, in minutes | Stream |
| ------------- | ----------------------------- | ------ |
| 1             | 6                             | 1      |
| 2             | 4                             | 2      |
| 3             | 5                             | 3      |
| 4             | 5(undamaged)                  | 4      |
| 4             | 8(damaged)                    | 5      |
| 5             | 12                            | 6      |

## Output :
- Average time on system [Damaged suits]
- Average time on system [Undamaged suits]
- Average queue length of arrival
- Average queue length of each server
- Maximum queue length of each server
- Utilization of each server


## Codes :
**dryCleaningSystem1.m :** this .m file is used to implement the dry cleaning system. <br />
**system performance comparison :** this .zip file contains serveral codes to observe the system performance.

## Environment Setup :
**Programming language :** MATLAB <br/>
**Operating System :** Windows 8.1 <br/>
**Processor :** Intel core i5 CPU 2.40GHz <br/>
**RAM :** 8GB, System Type: 64 bit operating system <br/>

