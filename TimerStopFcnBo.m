function TimerStopFcnBo(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(1,1,1);
   integralcube(1,1,1)=integralcube(1,3,1);
   integralcube(1,3,1)=integralcube(1,3,3);
   integralcube(1,3,3)=integralcube(1,1,3);
   integralcube(1,1,3)=cube;
   cube=integralcube(1,1,2);
   integralcube(1,1,2)=integralcube(1,2,1);
   integralcube(1,2,1)=integralcube(1,3,2);
   integralcube(1,3,2)=integralcube(1,2,3);
   integralcube(1,2,3)=cube;
end