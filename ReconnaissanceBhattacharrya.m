#Appels des fonctions pour la reconnaissance gr�ce � la distance de Bhattacharrya puis l'affichage des visages les plus proches
function ReconnaissanceBhattacharrya(MJ, M, VM)
  IDXp = reconBhattacharrya(MJ,VM)
  affichageResultats(M, IDXp);
endfunction