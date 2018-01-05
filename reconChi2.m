#prépare le vecteur VI afin d'effectuer le test de Chi2 pour chaque visage de la base M avec VI.  Renvoie l'id des 5 visages les plus proches
function [idxP] = reconChi2(M)
  [D n] = size(M);
  global I;
  VI = I2Vector(I);
  for i=1:1:n
    distance = testChi2(VI, M(:,i));
    proche(i) = distance;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
endfunction