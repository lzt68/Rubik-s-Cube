function [ checkresult ] = check(  )
%判断一个魔方是否可以复原
global Y
a=0;
b=0;
c=0;
d=0;
e=0;
f=0;

for i=1:6
    for t=1:3
        a=a+sum(Y{i}(t,:)==1);
        b=b+sum(Y{i}(t,:)==2);
        c=c+sum(Y{i}(t,:)==3);
        d=d+sum(Y{i}(t,:)==4);
        e=e+sum(Y{i}(t,:)==5);
        f=f+sum(Y{i}(t,:)==6);
    end
end
   if a~=9
       checkresult=0;
       return;
   end
   if b~=9
       checkresult=0;
       return;
   end
   if c~=9
       checkresult=0;
       return;
   end
   if d~=9
       checkresult=0;
       return;
   end
   if e~=9
       checkresult=0;
       return;
   end
   if f~=9
       checkresult=0;
       return;
   end
   checkresult=1;
end



