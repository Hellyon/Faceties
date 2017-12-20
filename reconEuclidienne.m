function [idxP] = reconEuclidienne(M)
  [D n] = size(M);
  global I;
  VI = I2Vector(I);
  for i=1:1:n
    VK = distance(VI, M(:,i));
    proche(i) = VK;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
endfunction