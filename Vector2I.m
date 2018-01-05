#Transforme un Vector colonne de taille H² en une image de taille HxH
function I = Vector2I(V)
    [H, L] = size(V);
    H = sqrt(H);
    I = uint8(reshape(V,[H, H, L]));
endfunction