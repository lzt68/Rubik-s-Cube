classdef Point
   % 以下是对空间中每一个点的定义
   properties
      m_x,m_y,m_z 
   end
   methods
      function Point = Point(x,y,z)
         % Construct a dlnode object.
         if nargin==3
          Point.m_x=x;
          Point.m_y=y;
          Point.m_z=z;
         end
         if nargin==1
             Point.m_x=x(1,1);
             Point.m_y=x(1,2);
             Point.m_z=x(1,3);
         end
      end 
   end
end % classdef
