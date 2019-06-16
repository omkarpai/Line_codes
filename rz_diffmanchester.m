clc
clear all
s =[1 0 0 0 1 1 1 0 1 1 0];
s(length(s)+1)=0;
clk=[]
for(x=1:1:length(s))
    clk = [clk,1];
    clk = [clk,0];
end

y=[];
prev = 0;
for(x=1:1:length(s))
    if (s(x)==1 && prev ==0)
        y = [y,0];
        y = [y,5];
        prev =5;
    elseif(s(x)==1 && prev == 5)
        y =[y,5];
        y =[y,0];
        prev = 0;
    elseif(s(x)==0 && prev == 0)
        y =[y,5];
        y =[y,0];
        prev =0;
    else
        y = [y,0];
        y = [y,5];
        prev =5;
    end
end

s = repelem(s,2);
subplot(3,1,1);
stairs(clk);
title('clk');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 15 -3 3]);

subplot(3,1,2);
stairs(s);
title('bits');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 15 -10 10]);

subplot(3,1,3);
stairs(y);
title('diffmanchester');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 15 -10 10]);

   