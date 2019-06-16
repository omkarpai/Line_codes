clc;
clear all;
s = [1 0 0 0 1 0 1 0 1 0 ];

s(length(s)+1)=0;
y =[];

for (x=1:1:length(s))
    if (s(x)==1)
        y=[y,5];
    else
        y=[y,0];
    end
end
subplot (2,1,1);
stairs (s)
title('bits');
set (gca,'Xgrid','on');
set (gca,'Xtick',[1:1:length(s)]);
axis ([0 15 -10 10]);

subplot (2,1,2);
stairs (y);
set (gca,'Xgrid','on');
set (gca,'Xtick',[1:1:length(s)]);
axis ([0 15 -10 10]);
title ('NRZ-L');