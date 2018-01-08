#Appels des fonctions pour la reconnaissance grâce la distance Euclidienne puis l'affichage des visages les plus proches
function ReconnaissanceEuclidienne(M,VM)
  IDXp = reconEuclidienne(M,VM);
  affichageResultats(M, IDXp);
endfunction