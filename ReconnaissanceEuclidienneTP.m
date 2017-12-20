function ReconnaissanceEuclidienne()
  clear all
  close all
  I = imread("images/Visages/ilyace2.png");
  for i=1:1:53
    J = imread(strcat("images/Visages/ztest",num2str(i),".gif"));
    V = I2Vector(J);
    M(:,i) = V;
  endfor
  IDXp = reconEuclidienne(I, M)
  figure();
  subplot(2,1,1)
  imshow(I);
  for i=6:1:10
    subplot(2,5,i);
    imshow(Vector2I(M(:,IDXp(i-5))));
  endfor
endfunction