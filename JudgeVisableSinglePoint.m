function visable=JudgeVisableSinglePoint(point,camera,m_point1,m_point2,~,m_point4)
   %������ʽ�Ƿ�Ϸ��Ͳ������
   P1=[m_point1.m_x,m_point1.m_y,m_point1.m_z];
   P2=[m_point2.m_x,m_point2.m_y,m_point2.m_z];
   P3=[m_point4.m_x,m_point4.m_y,m_point4.m_z];
   P=[point.m_x  point.m_y  point.m_z];
   %����������P��camera������͹�ı����ϵ�����
   A=[1 0 0 -(P(1,1)-camera(1,1)) 0 0;
      0 1 0 -P(1,2)+camera(1,2) 0 0;
      0 0 1 -P(1,3)+camera(1,3) 0 0;
      1 0 0 0 -(P2(1,1)-P1(1,1)) -(P3(1,1)-P1(1,1));
      0 1 0 0 -(P2(1,2)-P1(1,2)) -(P3(1,2)-P1(1,2));
      0 0 1 0 -(P2(1,3)-P1(1,3)) -(P3(1,3)-P1(1,3))];
   if abs(det(A))<0.001%������۲����뾵ͷ���� �� ƽ��ƽ��
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
   lenda=re(4,1);%�����������ߵĲ���
   if abs(lenda-1)<0.01||lenda>1
       visable=true;
       return;
   end%����ƽ���ϣ����ߵ���camera�߶β���������չ��ƽ���ཻ
   if a<1 && a>0 && b<1 && b>0 && lenda<1 &&lenda>0
      visable=false;
      return;
   end%����ƽ��Ĺ̶�������
   %-----���´���P0�պ��ڹ̶�����߽��ϵ��������ʱҲӦ�㿴����
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
   %������߽��ϵ��жϽ���
   visable=true;
end
