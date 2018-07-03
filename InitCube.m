function IntegralCube=InitCube()
   load color.mat
   for i=1:1:3
       for j=1:1:3
           for k=1:1:3
               if i==1
                   color5=green;
               else
                   color5=[0 0 0];
               end
               if i==3
                   color1=blue;
               else
                   color1=[0 0 0];
               end
               if j==1
                   color4=orange;
               else
                   color4=[0 0 0];
               end
               if j==3
                   color3=red;
               else
                   color3=[0 0 0];
               end
               if k==1
                   color6=[1 1 1];%°×É«
               else
                   color6=[0 0 0];
               end
               if k==3
                   color2=yellow;
               else
                   color2=[0 0 0];
               end
               center=Point((i-2)*2,(j-2)*2,(k-2)*2);
               IntegralCube(i,j,k)=Cube(center,color1,color2,color3,color4,color5,color6);
           end
       end
   end
end