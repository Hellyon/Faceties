#Appels des fonctions pour la reconnaissance grâce à la divergence de Kullback-Leibler puis l'affichage des visages les plus proches
function ReconnaissanceKullbackLeibler(M)
  IDXp = reconKullbackLeibler(M);
  affichageResultats(M, IDXp);
endfunction