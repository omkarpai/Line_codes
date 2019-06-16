clc
clear all
s =[1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 1 1 0];
s(length(s)+1) = 0;
y = [];
clk = [];
counter=0
prev =-5
for (x=1:1:length(s))
    if (counter == 8)
        y(x-8)=0
        y(x-7)=0
        y(x-6)=0
        y(x-5)=prev
        y(x-4)=-1*prev
        y(x-3)=0
        y(x-2)=-1*prev
        y(x-1)=prev
        counter = 0;
    end
        if (s(x)==1 && prev==-5)
            y=[y,5];
            prev=5;
            counter=0;
        elseif(s(x)==1 && prev==5)
            y=[y,-5];
            prev=-5;
            counter=0;
        else
            y=[y,0];
            counter = counter+1;
        end
    
end

for(x=1:1:length(s))
    clk = [clk,1];
    clk = [clk,0];
end

s = repelem(s,2);
y = repelem(y,2);
subplot(3,1,1);
stairs(clk);
title('clk');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 65 -3 3]);

subplot(3,1,2);
stairs(s);
title('bits');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 65 -10 10]);

subplot(3,1,3);
stairs(y);
title('b8zs');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis([0 65 -10 10]);
    
