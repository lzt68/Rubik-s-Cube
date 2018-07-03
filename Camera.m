function [x_P_Mir_Inv,y_P_Mir_Inv]=Camera(camera,x_P,y_P,z_P)
   if ([1,3]~=size(camera))
       fprintf('��ͷ�������');
       return;
   end
   mirror=size(1,3);%board���������ճ��������
   d=5;%d��ʾ�������������ľ���
   mirror(1,1)=(d+norm(camera))*camera(1,1)/norm(camera);
   mirror(1,2)=(d+norm(camera))*camera(1,2)/norm(camera);
   mirror(1,3)=(d+norm(camera))*camera(1,3)/norm(camera);
   %mirror
   %�������������Է��������p_first������
   A=[1,             0,           0,      -(camera(1,1)-x_P);
      0,             1,           0,      -(camera(1,2)-y_P);
      0,             0,           1,      -(camera(1,3)-z_P);
      camera(1,1),camera(1,2),camera(1,3),      0];
   B=[camera(1,1);
      camera(1,2);
      camera(1,3);
      camera(1,1)*mirror(1,1)+camera(1,2)*mirror(1,2)+camera(1,3)*mirror(1,3)];
   P_first=A^(-1)*B;
   P_first= (P_first(1:3,1))';%p_first�������4*1�ľ��󣬵�����Ԫ���Ǹ����̻��������ߵĲ�����Ҫ����
   P_second=2*mirror-P_first;%��mirrorΪԭ�㣬��p_first��ת180�ȵõ�p_second
   %����������p_second�����mirror���λ��
   y_P_Mir_Inv=(P_second(1,3)-mirror(1,3))*norm(mirror)/norm(mirror(1,1:2));
   if abs(mirror(1,2))<0.000000001%����ͷ����xozƽ����ʱ
      x_P_Mir_Inv=(P_second(1,2)-mirror(1,2))*norm(mirror(1,1:2))/mirror(1,1)+(P_second(1,3)-mirror(1,3))*mirror(1,3)*mirror(1,2)/mirror(1,1)/norm(mirror(1,1:2));
      return;
   end
   %����ͷ������xozƽ����ʱ
   x_P_Mir_Inv=-(P_second(1,1)-mirror(1,1))*norm(mirror(1,1:2))/mirror(1,2)-(P_second(1,3)-mirror(1,3))*mirror(1,3)*mirror(1,1)/mirror(1,2)/norm(mirror(1,1:2));
end