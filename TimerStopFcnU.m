function TimerStopFcnU(~,~)
   global on_off;
   on_off=false;
   global integralcube;
   cube=integralcube(1,3,3);
   integralcube(1,3,3)=integralcube(1,1,3);
   integralcube(1,1,3)=integralcube(3,1,3);
   integralcube(3,1,3)=integralcube(3,3,3);
   integralcube(3,3,3)=cube;
   cube=integralcube(3,2,3);
   integralcube(3,2,3)=integralcube(2,3,3);
   integralcube(2,3,3)=integralcube(1,2,3);
   integralcube(1,2,3)=integralcube(2,1,3);
   integralcube(2,1,3)=cube;

end
