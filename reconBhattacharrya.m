#prépare l'histogramme histI et histJ afin de calculer la distance de Bhattacharrya pour chaque visage de la base avec hist.  Renvoie l'id des 5 visages les plus proches
function [idxP] = reconBhattacharrya(MJ)
  tic
  [D n] = size(MJ);
  global histI;
  for i=1:1:n
    DM = bhattacharrya(histI, MJ(:,i));
    proche(i) = DM;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
  toc
endfunction