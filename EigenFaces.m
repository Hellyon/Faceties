#Calcule la projection orthogonal de chaque visage de la base M et de l'image source 
#Utilise la distance Euclidienne afin de retourner les 5 visages avec l'expression faciale la plus proche 
#explique pourquoi vous ne trouvez pas forcément toutes les images de la mêem personne avec ce test
function [IDXp] = EigenFaces(M)
  [u, s, v] = svd(M, 'econ');
  [D n] = size(M);
  global I;
  VS = I2Vector(I);
  PS = (VS'*u(:,1))*u(:,1);
  for i=1:1:n
    VP = (M(:,i)'*u(:,1))*u(:,1);
    P(:,i) = VP;
    DM = distance(PS, P(:,i));
    proche(i) = DM;
  endfor
  [S R] = sort(proche);
  IDXp = R(1:5)
endfunction

  #for i=1:1:1
    #imshow(Vector2I(P(:,i)));
  #endfor