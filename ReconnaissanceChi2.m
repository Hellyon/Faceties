#Appels des fonctions pour la reconnaissance gr�ce au test de Chi2 puis l'affichage des visages les plus proches
function ReconnaissanceChi2(MJ, M, VM)
  IDXp = reconChi2(MJ)
  affichageResultats(M, IDXp);
endfunction