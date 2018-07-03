function DrawCube(camera,integralcube,wholecube)
   for i=1:1:3
      for j=1:1:3
         for k=1:1:3
            DrawSingleCube(camera,integralcube(i,j,k),wholecube);
         end
      end
  end
  axis([-2 2 -2 2]);
  axis square;
  axis off;
end
