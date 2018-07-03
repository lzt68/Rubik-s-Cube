function camera=AdjustCamera(camera_past,direction,r)
%��ʵ�������r�е�ϣ����������norm(camera_past)����r
   if isempty(direction)
       camera=camera_past;
       return;
   end   
   alpha=pi/6;%ÿ����Ұ�����Ļ���
   camera=zeros(1,3);
   %���ﱾ��Ӧ����switch case��д��ʱ��ûע�⣬��ξ�����
   if direction=='w'||direction=='W' 
       if camera_past(1,3)<=r*0.85
           camera(1,1)=(norm(camera_past(1,1:2))*cos(alpha)-camera_past(1,3)*sin(alpha))*camera_past(1,1)/norm(camera_past(1,1:2));
           camera(1,2)=(norm(camera_past(1,1:2))*cos(alpha)-camera_past(1,3)*sin(alpha))*camera_past(1,2)/norm(camera_past(1,1:2));
           camera(1,3)=camera_past(1,3)*cos(alpha)+norm(camera_past(1,1:2))*sin(alpha);
           return;
       end
       disp('��ͷ�Ѿ�����ˣ��޷�������');
       camera=camera_past;
       return;
   end
   if direction=='s'||direction=='S'
       if camera_past(1,3)>=-r*0.85
           camera(1,1)=(norm(camera_past(1,1:2))*cos(alpha)+camera_past(1,3)*sin(alpha))*camera_past(1,1)/norm(camera_past(1,1:2));
           camera(1,2)=(norm(camera_past(1,1:2))*cos(alpha)+camera_past(1,3)*sin(alpha))*camera_past(1,2)/norm(camera_past(1,1:2));
           camera(1,3)=camera_past(1,3)*cos(alpha)-norm(camera_past(1,1:2))*sin(alpha);
           return;
       end
       disp('��ͷ�Ѿ�����׶ˣ��޷��½���');
       camera=camera_past;
       return;
   end
   %�����Ǵ��������ƶ���ͷ�����ӡ������ҹ涨mirror��Ķ�ά����ϵ�У�y��ķ�����������ά�ռ�z��ļн�ҪС��90��
   %���Բ��������ƻ������ƾ�ͷ�����ɼ��޵�
   %�����Ǵ��������ƶ���ͷ�ģ�������û�й涨mirror��ά����ϵx���ָ��������ô�ƶ�û����
   if direction=='d'||direction=='D'
       camera(1,3)=camera_past(1,3);
       camera(1,1)=camera_past(1,1)*cos(alpha)-camera_past(1,2)*sin(alpha);
       camera(1,2)=camera_past(1,2)*cos(alpha)+camera_past(1,1)*sin(alpha);
       return;
   end
   if direction=='a'||direction=='A'
       camera(1,3)=camera_past(1,3);
       camera(1,1)=camera_past(1,1)*cos(alpha)+camera_past(1,2)*sin(alpha);
       camera(1,2)=camera_past(1,2)*cos(alpha)-camera_past(1,1)*sin(alpha);
       return;
   end
   disp('�����ַ�����wasd');
   camera=camera_past;
end