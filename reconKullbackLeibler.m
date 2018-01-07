#prépare le vecteur VI afin d'effectuer la divergence de Kullback-Leibler pour chaque visage de la base M avec VI.  Renvoie l'id des 5 visages les plus proches
function [idxP] = reconKullbackLeibler(M)
  [D n] = size(M);
  global I;
  VI = I2Vector(I);
  for i=1:1:n
    divergence = KullbackLeibler(VI, M(:,i));
    proche(i) = divergence;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
endfunction