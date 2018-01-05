#Transforme une Image en un vecteur colonne de taille HxL
function [V] = I2Vector(I)
  I = double(I);
  [H, L, N] = size(I);
  V = reshape(I,[H*L, N]);
endfunction