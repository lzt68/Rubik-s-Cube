function after_rotate=RotatePoint(center,point,alpha)
%输入参数为旋转中心，待旋转点，旋转角度
%我们规定旋转中心只能为x,y,z上的点，分别绕着x轴y轴z轴转
   if ~all(size(center)==[1,3])||~all(size(point)==[1,3])
       after_rotate=[];
       return;
   end
   rotate=[ cos(alpha) sin(alpha);
            -sin(alpha) cos(alpha)];
   after_rotate=size(1,3);
   if center(1,1)~=0
       after_rotate(1,1)=center(1,1);
       temp=[point(1,2);point(1,3)];
       after_rotate(1,2:3)=(rotate*temp)';
       return;
   end
   if center(1,2)~=0%此时绕着y轴转
       after_rotate(1,2)=center(1,2);
       temp=[point(1,1);point(1,3)];
       result=rotate*temp;
       after_rotate(1,1)=result(1,1);after_rotate(1,3)=result(2,1);
       return;
   end
   if center(1,3)~=0%此时绕着z轴转
       after_rotate(1,3)=center(1,3);
       temp=[point(1,1);point(1,2)];
       after_rotate(1,1:2)=(rotate*temp)';
       return;
   end
   
end