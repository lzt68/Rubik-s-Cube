function n=SwitchColor(color)
   if all(color==[1 1 0])
           n=1;
           return;
   end
   if all(color==[1 1 1])
           n=2;
           return;
   end
   if all(color==[0 0 1])
           n=3;
           return;
   end
   if all(color==[1 0 0])
           n=4;
           return;
   end
   if all(color==[0 0.8 0.4])
           n=5;
           return;
   end
   if all(color==[1 0.50196 0])
           n=6;
           return;
   end
   n=0;
   disp('´íÎó');
end