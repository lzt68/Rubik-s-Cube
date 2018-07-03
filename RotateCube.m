function recube=RotateCube(cube,rotatedirect)
%���ڴ��������۵����⣬���һ����ת��ʱ��Ӧ�ü���ֱ����ת90�ȵ����������������һ��ת��pi/6�������תpi/6
   P1=[cube.m_point1.m_x,cube.m_point1.m_y,cube.m_point1.m_z]; 
   P2=[cube.m_point2.m_x,cube.m_point2.m_y,cube.m_point2.m_z];
   P3=[cube.m_point3.m_x,cube.m_point3.m_y,cube.m_point3.m_z];
   P4=[cube.m_point4.m_x,cube.m_point4.m_y,cube.m_point4.m_z];
   P5=[cube.m_point5.m_x,cube.m_point5.m_y,cube.m_point5.m_z];
   P6=[cube.m_point6.m_x,cube.m_point6.m_y,cube.m_point6.m_z];
   P7=[cube.m_point7.m_x,cube.m_point7.m_y,cube.m_point7.m_z];
   P8=[cube.m_point8.m_x,cube.m_point8.m_y,cube.m_point8.m_z];
   recube=cube;
   
   if rotatedirect=='f'
      %��ʡ����P��1,1����ʱ��
      alpha=pi/12;
      P1=RotatePoint([P1(1,1) 0 0],P1,alpha);
      P2=RotatePoint([P2(1,1) 0 0],P2,alpha);
      P3=RotatePoint([P3(1,1) 0 0],P3,alpha);
      P4=RotatePoint([P4(1,1) 0 0],P4,alpha);
      P5=RotatePoint([P5(1,1) 0 0],P5,alpha);
      P6=RotatePoint([P6(1,1) 0 0],P6,alpha);
      P7=RotatePoint([P7(1,1) 0 0],P7,alpha);
      P8=RotatePoint([P8(1,1) 0 0],P8,alpha);
   end
   if rotatedirect=='r'
      %��ʡ����P��1,1����ʱ��
      alpha=pi/12;
      P1=RotatePoint([0 P1(1,2) 0],P1,alpha);
      P2=RotatePoint([0 P2(1,2) 0],P2,alpha);
      P3=RotatePoint([0 P3(1,2) 0],P3,alpha);
      P4=RotatePoint([0 P4(1,2) 0],P4,alpha);
      P5=RotatePoint([0 P5(1,2) 0],P5,alpha);
      P6=RotatePoint([0 P6(1,2) 0],P6,alpha);
      P7=RotatePoint([0 P7(1,2) 0],P7,alpha);
      P8=RotatePoint([0 P8(1,2) 0],P8,alpha);
   end
   if rotatedirect=='u'
      alpha=pi/12;
      P1=RotatePoint([0 0 P1(1,3)],P1,alpha);
      P2=RotatePoint([0 0 P2(1,3)],P2,alpha);
      P3=RotatePoint([0 0 P3(1,3)],P3,alpha);
      P4=RotatePoint([0 0 P4(1,3)],P4,alpha);
      P5=RotatePoint([0 0 P5(1,3)],P5,alpha);
      P6=RotatePoint([0 0 P6(1,3)],P6,alpha);
      P7=RotatePoint([0 0 P7(1,3)],P7,alpha);
      P8=RotatePoint([0 0 P8(1,3)],P8,alpha);
   end
   %cla;
   if rotatedirect=='uo'
      alpha=-pi/12;
      P1=RotatePoint([0 0 P1(1,3)],P1,alpha);
      P2=RotatePoint([0 0 P2(1,3)],P2,alpha);
      P3=RotatePoint([0 0 P3(1,3)],P3,alpha);
      P4=RotatePoint([0 0 P4(1,3)],P4,alpha);
      P5=RotatePoint([0 0 P5(1,3)],P5,alpha);
      P6=RotatePoint([0 0 P6(1,3)],P6,alpha);
      P7=RotatePoint([0 0 P7(1,3)],P7,alpha);
      P8=RotatePoint([0 0 P8(1,3)],P8,alpha);
   end
   if rotatedirect=='fo'
      %��ʡ����P��1,1����ʱ��
      alpha=-pi/12;
      P1=RotatePoint([P1(1,1) 0 0],P1,alpha);
      P2=RotatePoint([P2(1,1) 0 0],P2,alpha);
      P3=RotatePoint([P3(1,1) 0 0],P3,alpha);
      P4=RotatePoint([P4(1,1) 0 0],P4,alpha);
      P5=RotatePoint([P5(1,1) 0 0],P5,alpha);
      P6=RotatePoint([P6(1,1) 0 0],P6,alpha);
      P7=RotatePoint([P7(1,1) 0 0],P7,alpha);
      P8=RotatePoint([P8(1,1) 0 0],P8,alpha);
   end
   if rotatedirect=='ro'
      %��ʡ����P��1,1����ʱ��
      alpha=-pi/12;
      P1=RotatePoint([0 P1(1,2) 0],P1,alpha);
      P2=RotatePoint([0 P2(1,2) 0],P2,alpha);
      P3=RotatePoint([0 P3(1,2) 0],P3,alpha);
      P4=RotatePoint([0 P4(1,2) 0],P4,alpha);
      P5=RotatePoint([0 P5(1,2) 0],P5,alpha);
      P6=RotatePoint([0 P6(1,2) 0],P6,alpha);
      P7=RotatePoint([0 P7(1,2) 0],P7,alpha);
      P8=RotatePoint([0 P8(1,2) 0],P8,alpha);
   end
   recube.m_point1=Point(P1);recube.m_point2=Point(P2);recube.m_point3=Point(P3);
   recube.m_point4=Point(P4);recube.m_point5=Point(P5);recube.m_point6=Point(P6);
   recube.m_point7=Point(P7);recube.m_point8=Point(P8);  
end