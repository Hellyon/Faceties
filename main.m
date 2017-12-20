clear all
close all
M = initialiserBanqueImages();
#h = dialog ("name", "Dialog Example");
f = figure("numbertitle", "off", "name", "Facéties", "menubar", "none");
boutonHisto = uicontrol (f, "string", "Reconnaissance Histogramme",
         "position",[10 90 250 20], "callback", "reconHistogramme(M);");       
boutonEucli = uicontrol (f, "string", "Reconnaissance Euclidienne",
         "position",[10 120 250 20], "callback", "ReconnaissanceEuclidienne(M);");
boutonFermer = uicontrol (f,"string", "Fermer", "position",[10 10 150 40],
          "callback","delete(gcf)");
boutonCharger = uicontrol(f, "string","Charger Image", "position",
          [10 150 150 40], "callback", "chargerImage(f);");
            