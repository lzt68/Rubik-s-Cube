function [thisstep,shortsol]=ReadSolution(sol)
   %global sol;
   [~,stringlens]=size(sol);
   if stringlens<=1
       shortsol='';
       thisstep='';
       return;
   end
   thisstep='';
   for i=1:3
       if sol(i)==','
           thisstep=sol(1,1:i-1);
           if i==stringlens
               shortsol='';
           else
               shortsol=sol(1,i+1:stringlens);
           end
           break;
       end
   end
end