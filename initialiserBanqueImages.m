function [M] = initialiserBanqueImages()
  for i=1:1:53
    J = imread(strcat("images/Visages/ztest",num2str(i),".gif"));
    V = I2Vector(J);
    M(:,i) = V;
  endfor
  M;
endfunction