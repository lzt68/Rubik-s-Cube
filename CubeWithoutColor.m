classdef CubeWithoutColor < handle
   % ���������һ���󳤷��壬����ֻ�����жϵ��Ƿ�ɼ�����ħ���ķ����޹�
   properties
      m_point1,m_point2,m_point3,m_point4,m_point5,m_point6,m_point7,m_point8%����Ӧ���Ǹ�1*8�ṹ�����飬����8����   
   end
   methods
       function CubeWithoutColor = CubeWithoutColor(point1,point2,point3,point4,point5,point6,point7,point8)
           if nargin==8
              CubeWithoutColor.m_point1=point1;
              CubeWithoutColor.m_point2=point2;
              CubeWithoutColor.m_point3=point3;
              CubeWithoutColor.m_point4=point4;
              CubeWithoutColor.m_point5=point5;
              CubeWithoutColor.m_point6=point6;
              CubeWithoutColor.m_point7=point7;
              CubeWithoutColor.m_point8=point8;
           end
           if nargin==4
              CubeWithoutColor.m_point1=point1;
              CubeWithoutColor.m_point2=point2;
              CubeWithoutColor.m_point3=point3;
              CubeWithoutColor.m_point4=point4;
              CubeWithoutColor.m_point5=Point(CubeWithoutColor.m_point1.m_x,CubeWithoutColor.m_point1.m_y,CubeWithoutColor.m_point1.m_z-2);
              CubeWithoutColor.m_point6=Point(CubeWithoutColor.m_point2.m_x,CubeWithoutColor.m_point2.m_y,CubeWithoutColor.m_point2.m_z-2);
              CubeWithoutColor.m_point7=Point(CubeWithoutColor.m_point3.m_x,CubeWithoutColor.m_point3.m_y,CubeWithoutColor.m_point3.m_z-2);
              CubeWithoutColor.m_point8=Point(CubeWithoutColor.m_point4.m_x,CubeWithoutColor.m_point4.m_y,CubeWithoutColor.m_point4.m_z-2);
           end
       end 
   end
end % classdef