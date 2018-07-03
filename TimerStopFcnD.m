function TimerStopFcnD(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(3,3,1);
   integralcube(3,3,1)=integralcube(3,1,1);
   integralcube(3,1,1)=integralcube(1,1,1);
   integralcube(1,1,1)=integralcube(1,3,1);
   integralcube(1,3,1)=cube;

   cube=integralcube(2,1,1);
   integralcube(2,1,1)=integralcube(1,2,1);
   integralcube(1,2,1)=integralcube(2,3,1);
   integralcube(2,3,1)=integralcube(3,2,1);
   integralcube(3,2,1)=cube;
  
end