classdef Cube
   % �����Ƕ�ħ��ÿһ��С����Ķ��壬����8���㣬6����
   properties
      m_point1,m_point2,m_point3,m_point4,m_point5,m_point6,m_point7,m_point8%����Ӧ���Ǹ�1*8�ṹ�����飬����8����
      m_color1,m_color2,m_color3,m_color4,m_color5,m_color6
      m_face1,m_face2,m_face3,m_face4,m_face5,m_face6%������1*6�ṹ������,6��
   end
   methods
       function Cube = Cube(center,color1,color2,color3,color4,color5,color6)
         % centerӦΪһ��Point�ṹ�����͵ı���
         if nargin==7
            Cube.m_point1=Point(center.m_x+1,center.m_y-1,center.m_z+1);
            %----------------------
            Cube.m_point2=Point(center.m_x+1,center.m_y+1,center.m_z+1);
            %-------------------------
            Cube.m_point3=Point(center.m_x-1,center.m_y+1,center.m_z+1);
            %----------------------
            Cube.m_point4=Point(center.m_x-1,center.m_y-1,center.m_z+1);
            %------------------------
            Cube.m_point5=Point(Cube.m_point1.m_x,Cube.m_point1.m_y,Cube.m_point1.m_z-2);
            Cube.m_point6=Point(Cube.m_point2.m_x,Cube.m_point2.m_y,Cube.m_point2.m_z-2);
            Cube.m_point7=Point(Cube.m_point3.m_x,Cube.m_point3.m_y,Cube.m_point3.m_z-2);
            Cube.m_point8=Point(Cube.m_point4.m_x,Cube.m_point4.m_y,Cube.m_point4.m_z-2);
            %���ʼ�����
            Cube.m_color1=color1;
            Cube.m_color2=color2;
            Cube.m_color3=color3;
            Cube.m_color4=color4;
            Cube.m_color5=color5;
            Cube.m_color6=color6;
            Cube.m_face1=Face(Cube.m_color1,Cube.m_point1,Cube.m_point2,Cube.m_point6,Cube.m_point5);
            Cube.m_face2=Face(Cube.m_color2,Cube.m_point1,Cube.m_point4,Cube.m_point3,Cube.m_point2);
            Cube.m_face3=Face(Cube.m_color3,Cube.m_point2,Cube.m_point3,Cube.m_point7,Cube.m_point6);
            Cube.m_face4=Face(Cube.m_color4,Cube.m_point1,Cube.m_point4,Cube.m_point8,Cube.m_point5);
            Cube.m_face5=Face(Cube.m_color5,Cube.m_point4,Cube.m_point3,Cube.m_point7,Cube.m_point8);
            Cube.m_face6=Face(Cube.m_color6,Cube.m_point5,Cube.m_point8,Cube.m_point7,Cube.m_point6);
         end  
       end
   end
end
   

