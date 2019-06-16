clc 
clear all
s = [1 0 1 1 1 1 1 0 0 0];
s(length(s)+1)=0;
y=[];
for (x=1:1:length(s))
    if (s(x)==1)
        y = [y,5];
        y = [y,0];
    else
        y = [y,0];
        y = [y,5];
    end
end

s = repelem(s,2); %repeats every value of s 2 times.
subplot (2,1,1)
stairs(s)
title('bits');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)])
axis([0 20 -10 10]);

subplot (2,1,2)
stairs(y);
title('manchester');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)])
grid on;
axis([0 20 -10 10]);
