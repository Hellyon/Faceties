#Appels des fonctions pour la reconnaissance grâce à la distance de Bhattacharrya puis l'affichage des visages les plus proches
function ReconnaissanceBhattacharrya(MJ, M, VM)
  IDXp = reconBhattacharrya(MJ,VM)
  affichageResultats(M, IDXp);
endfunction