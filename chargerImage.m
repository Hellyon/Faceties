#Charge l'image source puis l'affiche 
function chargerImage(p)
    [fname, fpath, fltidx]=uigetfile();
    global I;
    I = imread(strcat(fpath, fname));
    I = RGB2Gray(I);
    I = imresize(I, [128 128]);
    subplot(2,2,1);
    imshow(I);
endfunction