#Fonction de calcul gr�ce � la distance de Bhattacharrya
function distance = bhattacharrya(H1,H2)
  BC = sum(sqrt(H1.*H2));
  distance = -log(BC);
endfunction