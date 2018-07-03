function MarkStableCube(camera,cube,wholecube)
  global stablecubenumber;
  global stablecube;
  visable=zeros(1,8,'single');%存放8个点是否可见的信息
  [X1,Y1]=Camera(camera, cube.m_point1.m_x, cube.m_point1.m_y, cube.m_point1.m_z);
  [X2,Y2]=Camera(camera,cube.m_point2.m_x,cube.m_point2.m_y,cube.m_point2.m_z);
  [X3,Y3]=Camera(camera,cube.m_point3.m_x,cube.m_point3.m_y,cube.m_point3.m_z);
  [X4,Y4]=Camera(camera,cube.m_point4.m_x,cube.m_point4.m_y,cube.m_point4.m_z);
  [X5,Y5]=Camera(camera,cube.m_point5.m_x,cube.m_point5.m_y,cube.m_point5.m_z);
  [X6,Y6]=Camera(camera,cube.m_point6.m_x,cube.m_point6.m_y,cube.m_point6.m_z);
  [X7,Y7]=Camera(camera,cube.m_point7.m_x,cube.m_point7.m_y,cube.m_point7.m_z);
  [X8,Y8]=Camera(camera,cube.m_point8.m_x,cube.m_point8.m_y,cube.m_point8.m_z);
%开始判断每一个点是否都可见
  %之所以-2不-3的原因有二：1为了避免3~=3的情况，2是在旋转过程中一部分点确实会进入“内部”
  edge=2;
  if (cube.m_point1.m_x-edge)*(cube.m_point1.m_x+edge)<0&&(cube.m_point1.m_y-edge)*(cube.m_point1.m_y+edge)<0&&(cube.m_point1.m_z-edge)*(cube.m_point1.m_z+edge)<0
      visable(1,1)=false;
  else
      visable(1,1)=JudgeVisableAllPoint(camera,cube.m_point1,wholecube);
  end
  if (cube.m_point2.m_x-edge)*(cube.m_point2.m_x+edge)<0&&(cube.m_point2.m_y-edge)*(cube.m_point2.m_y+edge)<0&&(cube.m_point2.m_z-edge)*(cube.m_point2.m_z+edge)<0
      visable(1,2)=false;
  else
      visable(1,2)=JudgeVisableAllPoint(camera,cube.m_point2,wholecube);
  end
  if (cube.m_point3.m_x-edge)*(cube.m_point3.m_x+edge)<0&&(cube.m_point3.m_y-edge)*(cube.m_point3.m_y+edge)<0&&(cube.m_point3.m_z-edge)*(cube.m_point3.m_z+edge)<0
      visable(1,3)=false;
  else
      visable(1,3)=JudgeVisableAllPoint(camera,cube.m_point3,wholecube);
  end
  if (cube.m_point4.m_x-edge)*(cube.m_point4.m_x+edge)<0&&(cube.m_point4.m_y-edge)*(cube.m_point4.m_y+edge)<0&&(cube.m_point4.m_z-edge)*(cube.m_point4.m_z+edge)<0
      visable(1,4)=false;
  else
      visable(1,4)=JudgeVisableAllPoint(camera,cube.m_point4,wholecube);
  end
  if (cube.m_point5.m_x-edge)*(cube.m_point5.m_x+edge)<0&&(cube.m_point5.m_y-edge)*(cube.m_point5.m_y+edge)<0&&(cube.m_point5.m_z-edge)*(cube.m_point5.m_z+edge)<0
      visable(1,5)=false;
  else
      visable(1,5)=JudgeVisableAllPoint(camera,cube.m_point5,wholecube);
  end
  if (cube.m_point6.m_x-edge)*(cube.m_point6.m_x+edge)<0&&(cube.m_point6.m_y-edge)*(cube.m_point6.m_y+edge)<0&&(cube.m_point6.m_z-edge)*(cube.m_point6.m_z+edge)<0
      visable(1,6)=false;
  else
      visable(1,6)=JudgeVisableAllPoint(camera,cube.m_point6,wholecube);
  end
  if (cube.m_point7.m_x-edge)*(cube.m_point7.m_x+edge)<0&&(cube.m_point7.m_y-edge)*(cube.m_point7.m_y+edge)<0&&(cube.m_point7.m_z-edge)*(cube.m_point7.m_z+edge)<0
      visable(1,7)=false;
  else
      visable(1,7)=JudgeVisableAllPoint(camera,cube.m_point7,wholecube);
  end
  if (cube.m_point8.m_x-edge)*(cube.m_point8.m_x+edge)<0&&(cube.m_point8.m_y-edge)*(cube.m_point8.m_y+edge)<0&&(cube.m_point8.m_z-edge)*(cube.m_point8.m_z+edge)<0
      visable(1,8)=false;
  else
      visable(1,8)=JudgeVisableAllPoint(camera,cube.m_point8,wholecube);
  end
  if any(cube.m_color1~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,5)&&visable(1,6)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X1 X2 X6 X5;Y1 Y2 Y6 Y5];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color1;
  end    
  %----------------第1个面记录完成
  if any(cube.m_color2~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,3)&&visable(1,4)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X1 X2 X3 X4;Y1 Y2 Y3 Y4];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color2;
  end  

  %----------------第2个面记录完成
  if any(cube.m_color3~=[0 0 0])&&visable(1,2)&&visable(1,3)&&visable(1,6)&&visable(1,7)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X2 X3 X7 X6;Y2 Y3 Y7 Y6];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color3;
  end
 
  %----------------第3个面记录完成
  if any(cube.m_color4~=[0 0 0])&&visable(1,1)&&visable(1,4)&&visable(1,5)&&visable(1,8)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X1 X4 X8 X5;Y1 Y4 Y8 Y5];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color4;
  end

  %----------------第4个面记录完成
  if any(cube.m_color5~=[0 0 0])&&visable(1,4)&&visable(1,3)&&visable(1,8)&&visable(1,7)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X4 X3 X7 X8;Y4 Y3 Y7 Y8];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color5;
  end

  %----------------第5个面记录完成
  if any(cube.m_color6~=[0 0 0])&&visable(1,5)&&visable(1,6)&&visable(1,7)&&visable(1,8)
     stablecubenumber=stablecubenumber+1;
     stablecube{stablecubenumber}(1:2,1:4)=[X8 X5 X6 X7;Y8 Y5 Y6 Y7];
     stablecube{stablecubenumber}(3,1:3)=cube.m_color6;
  end 
  %----------------第6个面记录完成
  %如果要想自定义颜色，可以先在画图里画出一种颜色，查看RGB值，然后每个位置除以255，就得到表示颜色的矩阵
end
