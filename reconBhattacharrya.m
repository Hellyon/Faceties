#pr�pare l'histogramme histI et histJ afin de calculer la distance de Bhattacharrya pour chaque visage de la base avec hist.  Renvoie l'id des 5 visages les plus proches
function [idxP] = reconBhattacharrya(MJ,VM)
  tic
  [D n] = size(MJ);
  global histI;
  M=Vector2I(VM);
  ax = 0:5:255;
  [histM ce] = hist(M(:), ax);
  histM = histM/128*128;
  for i=1:1:n
    DM = bhattacharrya(histI, abs(MJ(:,i)-histM));
    proche(i) = DM;
  endfor
  [S R] = sort(proche);
  idxP = R(1:5);
  toc
endfunction