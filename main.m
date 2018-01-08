clear all
close all
pkg load image
M = initialiserBanqueImages();
[MJ] = preparerHistogrammes(M);
VM = visageMoyen(M);
faceties = figure("numbertitle", "off", "name", "Facéties", "menubar", "none", "resize", "off", "position", [500 250 800 600]);

panel = uipanel(faceties, "position", [0 0 1 0.3]);
boutonCharger = uicontrol(panel, "string","Charger Image", "position",
          [10 120 150 40], "callback", "chargerImage(faceties);");

boutonHisto = uicontrol (faceties, "string", "Reconnaissance Bhattacharrya",
         "position",[270 90 250 20], "callback", "ReconnaissanceBhattacharrya(MJ, M, VM);");       
boutonEucli = uicontrol (faceties, "string", "Reconnaissance Euclidienne",
         "position",[270 60 250 20], "callback", "ReconnaissanceEuclidienne(M,VM);");
boutonChi2 = uicontrol (faceties, "string", "Reconnaissance Chi 2",
         "position",[10 90 250 20], "callback", "ReconnaissanceChi2(MJ,M,VM);");
boutonEigenFaces = uicontrol (faceties, "string", "Reconnaissance avec EigenFaces",
         "position",[10 60 250 20], "callback", "ReconnaissanceEigenFaces(M);");
         
boutonFermer = uicontrol (faceties, "string", "Fermer",
         "position", [10 10 150 40], "callback","delete(gcf)");

