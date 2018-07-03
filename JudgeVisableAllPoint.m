function visable=JudgeVisableAllPoint(camera,point,wholecube)
%参数格式就不检查了
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point1,wholecube.m_point2,wholecube.m_point6,wholecube.m_point5);
   if visable==false
       return;
   end
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point1,wholecube.m_point2,wholecube.m_point3,wholecube.m_point4);
   if visable==false
       return;
   end
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point2,wholecube.m_point3,wholecube.m_point7,wholecube.m_point6);
   if visable==false
       return;
   end
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point1,wholecube.m_point4,wholecube.m_point8,wholecube.m_point5);
   if visable==false
       return;
   end
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point3,wholecube.m_point4,wholecube.m_point8,wholecube.m_point7);
   if visable==false
       return;
   end
   visable=JudgeVisableSinglePoint(point,camera,wholecube.m_point5,wholecube.m_point6,wholecube.m_point7,wholecube.m_point8);
   if visable==false
       return;
   end
   visable=true;
end