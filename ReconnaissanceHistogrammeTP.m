function ReconnaissanceBattacharrya()
tic
  close all
  clear all
  ax = 0:5:255;
  I = imread("images/Visages/ilyace2.png");
  [histI ce] = hist(I(:), ax);
  for i=1:1:53
    J = imread(strcat("images/Visages/ztest",num2str(i),".gif"));
    V(:,i) = I2Vector(J);
    [histJ ce] = hist(V(:,i), ax);
    M(i,:) = histJ/(128*128);
  endfor
  IDXp = reconHistogramme(histI, M)
  figure();
  subplot(2,1,1);
  imshow(I);
  for i=6:1:10
      subplot(2,5,i);
      imshow(Vector2I(V(:,IDXp(i-5))));
  endfor
toc
endfunction