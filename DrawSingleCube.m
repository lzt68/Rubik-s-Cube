function DrawSingleCube(camera,cube,wholecube,isrotate,~,~)
%camera��ͷ����;cubeҪ����cube;wholecube��͸����cube;isrotate����Ҫ�������cube�Ƿ�����ת״̬
%isrotateΪ�棬˵��������鲻����ת��Ϊ�٣�˵������ת
%isjudge,nonrotatecube����δ֪
  %global canvashandle;
  %figure(canvashandle);
  if nargin==3
      isrotate=false;
  end
  visable=zeros(1,8,'single');%���8�����Ƿ�ɼ�����Ϣ
  [X1,Y1]=Camera(camera, cube.m_point1.m_x, cube.m_point1.m_y, cube.m_point1.m_z);
  [X2,Y2]=Camera(camera,cube.m_point2.m_x,cube.m_point2.m_y,cube.m_point2.m_z);
  [X3,Y3]=Camera(camera,cube.m_point3.m_x,cube.m_point3.m_y,cube.m_point3.m_z);
  [X4,Y4]=Camera(camera,cube.m_point4.m_x,cube.m_point4.m_y,cube.m_point4.m_z);
  [X5,Y5]=Camera(camera,cube.m_point5.m_x,cube.m_point5.m_y,cube.m_point5.m_z);
  [X6,Y6]=Camera(camera,cube.m_point6.m_x,cube.m_point6.m_y,cube.m_point6.m_z);
  [X7,Y7]=Camera(camera,cube.m_point7.m_x,cube.m_point7.m_y,cube.m_point7.m_z);
  [X8,Y8]=Camera(camera,cube.m_point8.m_x,cube.m_point8.m_y,cube.m_point8.m_z);
  %��ʼ�ж�ÿһ�����Ƿ񶼿ɼ�
  %֮����-2��-3��ԭ���ж���1Ϊ�˱���3~=3�������2������ת������һ���ֵ�ȷʵ����롰�ڲ���
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
  %---------------------������x��һ�µ��߻�����
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
  %---------------------������y��һ�µ��߻�����
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
  %---------------------������z��һ�µ��߻�����
  %����������
 
  if any(cube.m_color1~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,5)&&visable(1,6)
      h=fill([X1 X2 X6 X5],[Y1 Y2 Y6 Y5],cube.m_color1);
      if isrotate
         h.HandleVisibility = 'callback';
     end
  end    
  %----------------��1������ͼ���
  if any(cube.m_color2~=[0 0 0])&&visable(1,1)&&visable(1,2)&&visable(1,3)&&visable(1,4)
      h=fill([X1 X2 X3 X4],[Y1 Y2 Y3 Y4],cube.m_color2);
      if isrotate
         h.HandleVisibility = 'callback';
     end
  end  
  %----------------��2������ͼ���
  if any(cube.m_color3~=[0 0 0])&&visable(1,2)&&visable(1,3)&&visable(1,6)&&visable(1,7)
     h=fill([X2 X3 X7 X6],[Y2 Y3 Y7 Y6],cube.m_color3);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
 
  %----------------��3������ͼ���
  if any(cube.m_color4~=[0 0 0])&&visable(1,1)&&visable(1,4)&&visable(1,5)&&visable(1,8)
     h=fill([X1 X4 X8 X5],[Y1 Y4 Y8 Y5],cube.m_color4);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end

  %----------------��4������ͼ���
  if any(cube.m_color5~=[0 0 0])&&visable(1,4)&&visable(1,3)&&visable(1,8)&&visable(1,7)
     h=fill([X4 X3 X7 X8],[Y4 Y3 Y7 Y8],cube.m_color5);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end
  %----------------��5������ͼ���
  if any(cube.m_color6~=[0 0 0])&&visable(1,5)&&visable(1,6)&&visable(1,7)&&visable(1,8)
     h=fill([X8 X5 X6 X7],[Y8 Y5 Y6 Y7],cube.m_color6);
     if isrotate
         h.HandleVisibility = 'callback';
     end
  end 
  %----------------��6������ͼ���
  %���Ҫ���Զ�����ɫ���������ڻ�ͼ�ﻭ��һ����ɫ���鿴RGBֵ��Ȼ��ÿ��λ�ó���255���͵õ���ʾ��ɫ�ľ���
end