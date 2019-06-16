clc
clear all
 g= 0:0.01:3
 
 s=g.*exp(-g)
 
 plot (g,s);
 title('throughput of slooted aloha channel');
 xlabel('load');
 ylabel('throughput');