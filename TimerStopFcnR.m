function TimerStopFcnR(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(1,3,3);
   integralcube(1,3,3)=integralcube(3,3,3);
   integralcube(3,3,3)=integralcube(3,3,1);
   integralcube(3,3,1)=integralcube(1,3,1);
   integralcube(1,3,1)=cube;
   cube=integralcube(2,3,1);
   integralcube(2,3,1)=integralcube(1,3,2);
   integralcube(1,3,2)=integralcube(2,3,3);
   integralcube(2,3,3)=integralcube(3,3,2);
   integralcube(3,3,2)=cube;
end