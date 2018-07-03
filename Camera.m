function [x_P_Mir_Inv,y_P_Mir_Inv]=Camera(camera,x_P,y_P,z_P)
   if ([1,3]~=size(camera))
       fprintf('镜头坐标错误');
       return;
   end
   mirror=size(1,3);%board是用来接收成相的坐标
   d=5;%d表示接收屏到成相点的距离
   mirror(1,1)=(d+norm(camera))*camera(1,1)/norm(camera);
   mirror(1,2)=(d+norm(camera))*camera(1,2)/norm(camera);
   mirror(1,3)=(d+norm(camera))*camera(1,3)/norm(camera);
   %mirror
   %接下来根据线性方程组求解p_first的坐标
   A=[1,             0,           0,      -(camera(1,1)-x_P);
      0,             1,           0,      -(camera(1,2)-y_P);
      0,             0,           1,      -(camera(1,3)-z_P);
      camera(1,1),camera(1,2),camera(1,3),      0];
   B=[camera(1,1);
      camera(1,2);
      camera(1,3);
      camera(1,1)*mirror(1,1)+camera(1,2)*mirror(1,2)+camera(1,3)*mirror(1,3)];
   P_first=A^(-1)*B;
   P_first= (P_first(1:3,1))';%p_first解出来是4*1的矩阵，第四行元素是辅助刻画向量共线的参数，要舍弃
   P_second=2*mirror-P_first;%以mirror为原点，将p_first旋转180度得到p_second
   %接下来计算p_second相对于mirror点的位置
   y_P_Mir_Inv=(P_second(1,3)-mirror(1,3))*norm(mirror)/norm(mirror(1,1:2));
   if abs(mirror(1,2))<0.000000001%当镜头处于xoz平面上时
      x_P_Mir_Inv=(P_second(1,2)-mirror(1,2))*norm(mirror(1,1:2))/mirror(1,1)+(P_second(1,3)-mirror(1,3))*mirror(1,3)*mirror(1,2)/mirror(1,1)/norm(mirror(1,1:2));
      return;
   end
   %当镜头不处于xoz平面上时
   x_P_Mir_Inv=-(P_second(1,1)-mirror(1,1))*norm(mirror(1,1:2))/mirror(1,2)-(P_second(1,3)-mirror(1,3))*mirror(1,3)*mirror(1,1)/mirror(1,2)/norm(mirror(1,1:2));
end