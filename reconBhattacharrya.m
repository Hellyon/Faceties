#prépare le vecteur VI afin de calculer la distance de Bhattacharrya pour chaque visage de la base avec VI.  Renvoie l'id des 5 visages les plus proches
function [idxP] = reconBhattacharrya(M)
  tic
  [D n] = size(M);
  global I;
  VI = I2Vector(I);
  for i=1:1:n
    DM = bhattacharrya(VI, M(:,i));
    proche(i) = DM;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
  toc
endfunction