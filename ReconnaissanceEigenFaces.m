#Appels des fonctions pour la reconnaissance gr�ce � EIgenFaces puis l'affichage des visages les plus proches
function ReconnaissanceEigenFaces(M)
  IDXp = EigenFaces(M);
  affichageResultats(M, IDXp);
endfunction