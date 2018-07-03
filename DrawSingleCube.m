function DrawSingleCube(camera,cube,wholecube,isrotate,~,~)
%camera镜头坐标;cube要画的cube;wholecube不透明的cube;isrotate标明要画的这个cube是否是旋转状态
%isrotate为真，说明这个方块不在旋转；为假，说明在旋转
%isjudge,nonrotatecube作用未知
  %global canvashandle;
  %figure(canvashandle);
  if nargin==3
      isrotate=false;
  end
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
      %{
      if isjudege
          visable(1,1)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point2.m_x-edge)*(cube.m_point2.m_x+edge)<0&&(cube.m_point2.m_y-edge)*(cube.m_point2.m_y+edge)<0&&(cube.m_point2.m_z-edge)*(cube.m_point2.m_z+edge)<0
      visable(1,2)=false;
  else
      visable(1,2)=JudgeVisableAllPoint(camera,cube.m_point2,wholecube);
      %{
      if isjudege
          visable(1,2)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point3.m_x-edge)*(cube.m_point3.m_x+edge)<0&&(cube.m_point3.m_y-edge)*(cube.m_point3.m_y+edge)<0&&(cube.m_point3.m_z-edge)*(cube.m_point3.m_z+edge)<0
      visable(1,3)=false;
  else
      visable(1,3)=JudgeVisableAllPoint(camera,cube.m_point3,wholecube);
      %{
      if isjudege
          visable(1,3)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point4.m_x-edge)*(cube.m_point4.m_x+edge)<0&&(cube.m_point4.m_y-edge)*(cube.m_point4.m_y+edge)<0&&(cube.m_point4.m_z-edge)*(cube.m_point4.m_z+edge)<0
      visable(1,4)=false;
  else
      visable(1,4)=JudgeVisableAllPoint(camera,cube.m_point4,wholecube);
      %{
      if isjudege
          visable(1,4)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point5.m_x-edge)*(cube.m_point5.m_x+edge)<0&&(cube.m_point5.m_y-edge)*(cube.m_point5.m_y+edge)<0&&(cube.m_point5.m_z-edge)*(cube.m_point5.m_z+edge)<0
      visable(1,5)=false;
  else
      visable(1,5)=JudgeVisableAllPoint(camera,cube.m_point5,wholecube);
      %{
      if isjudege
          visable(1,5)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point6.m_x-edge)*(cube.m_point6.m_x+edge)<0&&(cube.m_point6.m_y-edge)*(cube.m_point6.m_y+edge)<0&&(cube.m_point6.m_z-edge)*(cube.m_point6.m_z+edge)<0
      visable(1,6)=false;
  else
      visable(1,6)=JudgeVisableAllPoint(camera,cube.m_point6,wholecube);
      %{
      if isjudege
          visable(1,6)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point7.m_x-edge)*(cube.m_point7.m_x+edge)<0&&(cube.m_point7.m_y-edge)*(cube.m_point7.m_y+edge)<0&&(cube.m_point7.m_z-edge)*(cube.m_point7.m_z+edge)<0
      visable(1,7)=false;
  else
      visable(1,7)=JudgeVisableAllPoint(camera,cube.m_point7,wholecube);
      %{
      if isjudege
          visable(1,7)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  if (cube.m_point8.m_x-edge)*(cube.m_point8.m_x+edge)<0&&(cube.m_point8.m_y-edge)*(cube.m_point8.m_y+edge)<0&&(cube.m_point8.m_z-edge)*(cube.m_point8.m_z+edge)<0
      visable(1,8)=false;
  else
      visable(1,8)=JudgeVisableAllPoint(camera,cube.m_point8,wholecube);
      %{
      if isjudege
          visable(1,8)=JudgeVisableAllPoint(camera,cube.m_point1,nonrotatecube);
      end
      %}
  end
  hold on;
  
  if visable(1,1)&&visable(1,5)
     h=plot([X1 X5 ],[Y1 Y5 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,2)&&visable(1,6)
     h=plot([X2 X6 ],[Y2 Y6 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,3)&&visable(1,7)
     h=plot([X3 X7 ],[Y3 Y7 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,4)&&visable(1,8)
     h=plot([X4 X8 ],[Y4 Y8 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  %---------------------方向与x轴一致的线画完了
  if visable(1,1)&&visable(1,2)
     h=plot([X1 X2 ],[Y1 Y2 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,4)&&visable(1,3)
     h=plot([X4 X3 ],[Y4 Y3 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,5)&&visable(1,6)
     h=plot([X5 X6 ],[Y5 Y6 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,8)&&visable(1,7)
     h=plot([X8 X7 ],[Y8 Y7 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  %---------------------方向与y轴一致的线画完了
  if visable(1,1)&&visable(1,4)
     h=plot([X1 X4 ],[Y1 Y4 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,2)&&visable(1,3)
     h=plot([X2 X3 ],[Y2 Y3 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,5)&&visable(1,8)
     h=plot([X5 X8 ],[Y5 Y8 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  if visable(1,6)&&visable(1,7)
     h=plot([X6 X7 ],[Y6 Y7 ],'k');
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  %---------------------方向与z轴一致的线画完了
  %接下来画面
 
  if any(cube.m_color1~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,5)&&visable(1,6)
      h=fill([X1 X2 X6 X5],[Y1 Y2 Y6 Y5],cube.m_color1);
      if isrotate
         h.HandleVisibility = 'callback';
     end
  end    
  %----------------第1个面作图完成
  if any(cube.m_color2~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,3)&&visable(1,4)
      h=fill([X1 X2 X3 X4],[Y1 Y2 Y3 Y4],cube.m_color2);
      if isrotate
         h.HandleVisibility = 'callback';
     end
  end  
  %----------------第2个面作图完成
  if any(cube.m_color3~=[0 0 0])&&visable(1,2)&&visable(1,3)&&visable(1,6)&&visable(1,7)
     h=fill([X2 X3 X7 X6],[Y2 Y3 Y7 Y6],cube.m_color3);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
 
  %----------------第3个面作图完成
  if any(cube.m_color4~=[0 0 0])&&visable(1,1)&&visable(1,4)&&visable(1,5)&&visable(1,8)
     h=fill([X1 X4 X8 X5],[Y1 Y4 Y8 Y5],cube.m_color4);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end

  %----------------第4个面作图完成
  if any(cube.m_color5~=[0 0 0])&&visable(1,4)&&visable(1,3)&&visable(1,8)&&visable(1,7)
     h=fill([X4 X3 X7 X8],[Y4 Y3 Y7 Y8],cube.m_color5);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  %----------------第5个面作图完成
  if any(cube.m_color6~=[0 0 0])&&visable(1,5)&&visable(1,6)&&visable(1,7)&&visable(1,8)
     h=fill([X8 X5 X6 X7],[Y8 Y5 Y6 Y7],cube.m_color6);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end 
  %----------------第6个面作图完成
  %如果要想自定义颜色，可以先在画图里画出一种颜色，查看RGB值，然后每个位置除以255，就得到表示颜色的矩阵
end