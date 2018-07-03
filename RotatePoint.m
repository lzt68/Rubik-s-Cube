function after_rotate=RotatePoint(center,point,alpha)
%�������Ϊ��ת���ģ�����ת�㣬��ת�Ƕ�
%���ǹ涨��ת����ֻ��Ϊx,y,z�ϵĵ㣬�ֱ�����x��y��z��ת
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
   if center(1,2)~=0%��ʱ����y��ת
       after_rotate(1,2)=center(1,2);
       temp=[point(1,1);point(1,3)];
       result=rotate*temp;
       after_rotate(1,1)=result(1,1);after_rotate(1,3)=result(2,1);
       return;
   end
   if center(1,3)~=0%��ʱ����z��ת
       after_rotate(1,3)=center(1,3);
       temp=[point(1,1);point(1,2)];
       after_rotate(1,1:2)=(rotate*temp)';
       return;
   end
   
end