#prépare le vecteur VI afin de calculer la distance Euclidienne pour chaque visage de la base M avec VI.  Renvoie l'id des 5 visages les plus proches
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