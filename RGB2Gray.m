function [J] = RGB2Gray(I)
  [i, j, n] = size(I)
  J = round(0.3.*I(:, :,1)+0.59.*I(:, :,2)+0.11.*I(:, :,3));
endfunction