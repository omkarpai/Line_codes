clc
clear all
s = [1 0 1 0 0 0 1 1 1];
s(length(s)+1)=0;
y=[];
prev = 0;
for (x=1:1:length(s))
    if(s(x)==1 && prev == 0)
        y = [y,5];
        y = [y,5];
        prev = 5;
    elseif(s(x)==1 && prev == 5)
        y = [y,0];
        y = [y,0];
        prev = 0;
    elseif(s(x)==0 && prev == 0)
        y =[y,5];
        y =[y,0];
        prev =0;
    else
        y =[y,0];
        y =[y,5];
        prev = 5;
    end
end

s = repelem(s,2);
subplot (2,1,1)
stairs(s);
title('bits');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis ([0 20 -10 10]);

subplot (2,1,2)
stairs(y);
title('biphases');
set(gca,'Xgrid','on');
set(gca,'Xtick',[1:2:length(s)]);
axis ([0 20 -10 10]);