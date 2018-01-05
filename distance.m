#Fonction de calcul de la distance Euclidienne
function VK = distance(VI, VJ)
  VK = norm(double(VI.-VJ));
endfunction
  