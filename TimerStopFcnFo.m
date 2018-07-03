function TimerStopFcnFo(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(3,1,3);
   integralcube(3,1,3)=integralcube(3,3,3);
   integralcube(3,3,3)=integralcube(3,3,1);
   integralcube(3,3,1)=integralcube(3,1,1);
   integralcube(3,1,1)=cube;

   cube=integralcube(3,2,3);
   integralcube(3,2,3)=integralcube(3,3,2);
   integralcube(3,3,2)=integralcube(3,2,1);
   integralcube(3,2,1)=integralcube(3,1,2);
   integralcube(3,1,2)=cube;
end