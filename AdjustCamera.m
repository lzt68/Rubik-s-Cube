function camera=AdjustCamera(camera_past,direction,r)
%其实这个参数r有点废，本身可以用norm(camera_past)计算r
   if isempty(direction)
       camera=camera_past;
       return;
   end   
   alpha=pi/6;%每次视野调整的弧度
   camera=zeros(1,3);
   %这里本来应该用switch case，写的时候没注意，这次就算了
   if direction=='w'||direction=='W' 
       if camera_past(1,3)<=r*0.85
           camera(1,1)=(norm(camera_past(1,1:2))*cos(alpha)-camera_past(1,3)*sin(alpha))*camera_past(1,1)/norm(camera_past(1,1:2));
           camera(1,2)=(norm(camera_past(1,1:2))*cos(alpha)-camera_past(1,3)*sin(alpha))*camera_past(1,2)/norm(camera_past(1,1:2));
           camera(1,3)=camera_past(1,3)*cos(alpha)+norm(camera_past(1,1:2))*sin(alpha);
           return;
       end
       disp('镜头已经到最顶端，无法上升了');
       camera=camera_past;
       return;
   end
   if direction=='s'||direction=='S'
       if camera_past(1,3)>=-r*0.85
           camera(1,1)=(norm(camera_past(1,1:2))*cos(alpha)+camera_past(1,3)*sin(alpha))*camera_past(1,1)/norm(camera_past(1,1:2));
           camera(1,2)=(norm(camera_past(1,1:2))*cos(alpha)+camera_past(1,3)*sin(alpha))*camera_past(1,2)/norm(camera_past(1,1:2));
           camera(1,3)=camera_past(1,3)*cos(alpha)-norm(camera_past(1,1:2))*sin(alpha);
           return;
       end
       disp('镜头已经到最底端，无法下降了');
       camera=camera_past;
       return;
   end
   %以上是处理上下移动镜头的例子。由于我规定mirror点的二维坐标系中，y轴的方向向量与三维空间z轴的夹角要小于90度
   %所以不管是上移还是下移镜头都是由极限的
   %下面是处理左右移动镜头的，由于我没有规定mirror二维坐标系x轴的指向，所以怎么移都没问题
   if direction=='d'||direction=='D'
       camera(1,3)=camera_past(1,3);
       camera(1,1)=camera_past(1,1)*cos(alpha)-camera_past(1,2)*sin(alpha);
       camera(1,2)=camera_past(1,2)*cos(alpha)+camera_past(1,1)*sin(alpha);
       return;
   end
   if direction=='a'||direction=='A'
       camera(1,3)=camera_past(1,3);
       camera(1,1)=camera_past(1,1)*cos(alpha)+camera_past(1,2)*sin(alpha);
       camera(1,2)=camera_past(1,2)*cos(alpha)-camera_past(1,1)*sin(alpha);
       return;
   end
   disp('输入字符不是wasd');
   camera=camera_past;
end