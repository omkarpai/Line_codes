clc
clear all

G = 0:0.01:3

S= G.*exp(-2*G);

plot (G,S);
title('THroughput of pure ALOHA channel');
xlabel('load');
ylabel('througput');