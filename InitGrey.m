function IntegralCube=InitGrey()
   grey=[0.7 0.7 0.7];
   for i=1:1:3
       for j=1:1:3
           for k=1:1:3
               if i==1
                   color5=grey;
               else
                   color5=[0 0 0];
               end
               if i==3
                   color1=grey;
               else
                   color1=[0 0 0];
               end
               if j==1
                   color4=grey;
               else
                   color4=[0 0 0];
               end
               if j==3
                   color3=grey;
               else
                   color3=[0 0 0];
               end
               if k==1
                   color6=grey;
               else
                   color6=[0 0 0];
               end
               if k==3
                   color2=grey;
               else
                   color2=[0 0 0];
               end
               center=Point((i-2)*2,(j-2)*2,(k-2)*2);
               IntegralCube(i,j,k)=Cube(center,color1,color2,color3,color4,color5,color6);
           end
       end
   end
   color=grey;
   IntegralCube(2,2,1)=Cube(Point(0,0,-2),color,color,color,color,color,[1 1 1]);
   IntegralCube(2,2,3)=Cube(Point(0,0,2),color,[1 1 0],color,color,color,color);
   IntegralCube(2,1,2)=Cube(Point(0,-2,0),color,color,color,[1 0.50196 0],color,color);
   IntegralCube(2,3,2)=Cube(Point(0,2,0),color,color,[1 0 0],color,color,color);
   IntegralCube(1,2,2)=Cube(Point(-2,0,0),color,color,color,color,[0 0.8 0.4],color);
   IntegralCube(3,2,2)=Cube(Point(2,0,0),[0 0 1],color,color,color,color,color);
end