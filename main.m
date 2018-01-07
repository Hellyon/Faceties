clear all
close all
pkg load image
M = initialiserBanqueImages();
[MJ] = preparerHistogrammes(M);
faceties = figure("numbertitle", "off", "name", "Facéties", "menubar", "none", "resize", "off", "position", [500 250 800 600]);

panel = uipanel(faceties, "position", [0 0 1 0.3]);
boutonCharger = uicontrol(panel, "string","Charger Image", "position",
          [10 120 150 40], "callback", "chargerImage(faceties);");

boutonHisto = uicontrol (faceties, "string", "Reconnaissance Bhattacharrya",
         "position",[530 90 250 20], "callback", "ReconnaissanceBhattacharrya(MJ, M);");       
boutonEucli = uicontrol (faceties, "string", "Reconnaissance Euclidienne",
         "position",[270 60 250 20], "callback", "ReconnaissanceEuclidienne(M);");
boutonChi2 = uicontrol (faceties, "string", "Reconnaissance Chi 2",
         "position",[10 90 250 20], "callback", "ReconnaissanceChi2(MJ,M);");
boutonEigenFaces = uicontrol (faceties, "string", "Reconnaissance avec EigenFaces",
         "position",[10 60 250 20], "callback", "ReconnaissanceEigenFaces(M);");
boutonKullbackLeibler = uicontrol (faceties, "string", "Reconnaissance KullBack-Leibler",
         "position",[270 90 250 20], "callback", "ReconnaissanceKullbackLeibler(MJ, M);");
         
boutonFermer = uicontrol (faceties, "string", "Fermer",
         "position", [10 10 150 40], "callback","delete(gcf)");

#Controle portant l'algorithme sélectionné
selecteurMtd = uicontrol(faceties, "style", "popupmenu", "string", {"Reconnaissance Bhattacharrya",
         "Reconnaissance avec EigenFaces", "Reconnaissance Chi 2", "Reconnaissance Euclidienne", "Reconnaissance KullBack-Leibler"},
         "callback", @choixMtd, "position", [270 60 250 20]);

#Fonction récupérant la méthode choisie par l'utilisateur dans la liste déroulante
function choixMtd(hObj, ~)
  global mtd=get (hObj, "string"){get (hObj, "value")}
endfunction

#Fonction permettant de lancer la reconnaissance avec la méthode choisie par l'utilisateur
ButtonValider= uicontrol (faceties, 'style', 'pushbutton', "string", "valider", 
          "callback", @lancement, "position", [270 60 250 20] 
);

function lancement()
  global mtd;
  switch(mtd)
  
    case "Reconnaissance Bhattacharrya"
      ReconnaissanceBhattacharrya(MJ, M);
    break
    
    case "Reconnaissance avec EigenFaces"
      ReconnaissanceEigenFaces(M);
    break
      
    case "Reconnaissance Euclidienne"
      ReconnaissanceEuclidienne(M);
    break
    
    case "Reconnaissance Chi 2"
      ReconnaissanceChi2(MJ, M);
    break
    
    case "Reconnaissance KullBack-Leibler"
      ReconnaissanceKullbackLeibler(MJ, M);
    break
    
    otherwise
      
    break
  endswitch
endfunction
  