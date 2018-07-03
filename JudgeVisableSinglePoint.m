function visable=JudgeVisableSinglePoint(point,camera,m_point1,m_point2,~,m_point4)
   %参数格式是否合法就不检查了
   P1=[m_point1.m_x,m_point1.m_y,m_point1.m_z];
   P2=[m_point2.m_x,m_point2.m_y,m_point2.m_z];
   P3=[m_point4.m_x,m_point4.m_y,m_point4.m_z];
   P=[point.m_x  point.m_y  point.m_z];
   %接下来计算P，camera连线在凸四边形上的坐标
   A=[1 0 0 -(P(1,1)-camera(1,1)) 0 0;
      0 1 0 -P(1,2)+camera(1,2) 0 0;
      0 0 1 -P(1,3)+camera(1,3) 0 0;
      1 0 0 0 -(P2(1,1)-P1(1,1)) -(P3(1,1)-P1(1,1));
      0 1 0 0 -(P2(1,2)-P1(1,2)) -(P3(1,2)-P1(1,2));
      0 0 1 0 -(P2(1,3)-P1(1,3)) -(P3(1,3)-P1(1,3))];
   if abs(det(A))<0.001%如果待观察点和与镜头连线 与 平面平行
       visable=true;
       return;
   end 
   B=[camera(1,1)
      camera(1,2)
      camera(1,3)
      P1(1,1)
      P1(1,2)
      P1(1,3)];
   re=A^(-1)*B;
   a=re(5,1);
   b=re(6,1);
   lenda=re(4,1);%用来描述共线的参数
   if abs(lenda-1)<0.01||lenda>1
       visable=true;
       return;
   end%点在平面上，或者点与camera线段不与无限延展的平面相交
   if a<1 && a>0 && b<1 && b>0 && lenda<1 &&lenda>0
      visable=false;
      return;
   end%点在平面的固定区域内
   %-----以下处理P0刚好在固定区域边界上的情况，这时也应算看不到
   if abs(a)<=0.001
       if (b-0.001)*(b-1-0.001)<0
           visable=false;
           return;
       end
   end
   if abs(b)<=0.001
       if (a-0.001)*(a-1-0.001)<0
           visable=false;
           return;
       end
   end
   if abs(b-1)<=0.001
       if (a-0.001)*(a-1-0.001)<0
           visable=false;
           return;
       end
   end
   if abs(a-1)<=0.001
       if (b-0.001)*(b-1-0.001)<0
           visable=false;
           return;
       end
   end
   %在区域边界上的判断结束
   visable=true;
end
