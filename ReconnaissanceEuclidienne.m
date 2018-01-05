#Appels des fonctions pour la reconnaissance grâce la distance Euclidienne puis l'affichage des visages les plus proches
function ReconnaissanceEuclidienne(M)
  IDXp = reconEuclidienne(M)
  affichageResultats(M, IDXp);
endfunction