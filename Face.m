classdef Face 
   %�����Ƕ�ÿһ��С������Ķ��壬�����ĸ��㣬�Լ���������ɫ
   properties
      m_point1,m_point2,m_point3,m_point4,
      m_color%colorӦ���þ���ֵ�ȽϺ���
      m_h%����ʱ�����Ӧ�ľ��
   end
   methods
      function Face = Face(color,point1,point2,point3,point4)
         % Construct a dlnode object.
          Face.m_point1=Point(point1.m_x,point1.m_y,point1.m_z);
          Face.m_point2=Point(point2.m_x,point2.m_y,point2.m_z);
          Face.m_point3=Point(point3.m_x,point3.m_y,point3.m_z);
          Face.m_point4=Point(point4.m_x,point4.m_y,point4.m_z);
          Face.m_color=color;
      end 
   end
end % classdef
