#Fonction de calcul grâce à la distance de Bhattacharrya
function distance = bhattacharyya(H1,H2)
  BC = sum(sqrt(H1.*H2));
  distance = -log(BC);
endfunction