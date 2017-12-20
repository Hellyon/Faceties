function chargerImage(p)
    [fname, fpath, fltidx]=uigetfile();
    global I = imread(strcat(fpath, fname));
    subplot(2,3,1);
    imshow(I);
endfunction