function TimerStopFcnL(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(1,1,1);
   integralcube(1,1,1)=integralcube(3,1,1);
   integralcube(3,1,1)=integralcube(3,1,3);
   integralcube(3,1,3)=integralcube(1,1,3);
   integralcube(1,1,3)=cube;
   cube=integralcube(3,1,2);
   integralcube(3,1,2)=integralcube(2,1,3);
   integralcube(2,1,3)=integralcube(1,1,2);
   integralcube(1,1,2)=integralcube(2,1,1);
   integralcube(2,1,1)=cube;
end