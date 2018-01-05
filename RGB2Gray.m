#Transforme une Image RGB en niveau de Gris
function [J] = RGB2Gray(I)
  [i, j, n] = size(I);
  if(n == 3) #Si l'image est en 3 dimensions (RGB)
    J = round(0.3.*I(:, :,1)+0.59.*I(:, :,2)+0.11.*I(:, :,3));
  else #Sinon
    J = I;
  endif
endfunction