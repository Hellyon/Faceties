#Fonction de calcul grâce à la distance de Bhattacharrya
function divergence = KullbackLeibler(H1,H2)
  PQ = H1./H2;
  LPQ = log(PQ);
  divergence = sum(H1.*LPQ);
endfunction