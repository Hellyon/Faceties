function [V] = I2Vector(I)
  I = double(I);
  [H, L, N] = size(I);
  V = reshape(I,[H*L, N]);
endfunction