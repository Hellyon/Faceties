#Appels des fonctions pour la reconnaissance gr�ce � la divergence de Kullback-Leibler puis l'affichage des visages les plus proches
function ReconnaissanceKullbackLeibler(M)
  IDXp = reconKullbackLeibler(M);
  affichageResultats(M, IDXp);
endfunction