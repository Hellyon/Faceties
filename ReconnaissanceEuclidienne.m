function ReconnaissanceEuclidienne(M)
  k=1;
  IDXp = reconEuclidienne(M)
  subplot(2,3,2);
  imshow(Vector2I(M(:,IDXp(k))));
  for i=3:3:12
    subplot(3,4,i);
    imshow(Vector2I(M(:,IDXp(k))));
    k=k+1;
  endfor
endfunction