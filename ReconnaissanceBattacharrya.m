#Appels des fonctions pour la reconnaissance gr�ce � la distance de Bhattacharrya puis l'affichage des visages les plus proches
function ReconnaissanceHistogramme(M)
  IDXp = reconHistogramme(M);
  affichageResultats(M, IDXp);
endfunction