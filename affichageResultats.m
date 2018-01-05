#affiche les visages les plus proches depuis la base M grâce aux ID calculéées précédemment
function affichageResultats(M,IDXp)
  k = 1;
  subplot(2,2,2);
  imshow(Vector2I(M(:,IDXp(k))));
  for i=9:1:12
    k=k+1;
    subplot(4,4,i);
    imshow(Vector2I(M(:,IDXp(k))));
  endfor
endfunction