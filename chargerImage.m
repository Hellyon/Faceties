#Charge l'image source puis l'affiche 
function chargerImage(p)
    [fname, fpath, fltidx]=uigetfile(); #Nom et path complet de l'image
    global I;
    I = imread(strcat(fpath, fname));
    I = RGB2Gray(I); #transformation de l'image en niveau de gris
    I = imresize(I, [128 128]); #Redimensionne l'image en 128x128
    #calcul de l'histogramme histI
    global histI;
    ax = 0:5:255;
    [histI ce] = hist(I(:), ax);
    histI = histI/128*128;
    #affichage de l'image  sujet
    subplot(2,2,1);
    imshow(I);
endfunction