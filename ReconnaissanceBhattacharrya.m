#Appels des fonctions pour la reconnaissance grâce à la distance de Bhattacharrya puis l'affichage des visages les plus proches
function ReconnaissanceBhattacharrya(M)
  IDXp = reconBhattacharrya(M)
  affichageResultats(M, IDXp);
endfunction