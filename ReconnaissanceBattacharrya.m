#Appels des fonctions pour la reconnaissance grâce à la distance de Bhattacharrya puis l'affichage des visages les plus proches
function ReconnaissanceHistogramme(M)
  IDXp = reconHistogramme(M);
  affichageResultats(M, IDXp);
endfunction