#Charge les images et les mets dans la banque d'images M M
function [M] = initialiserBanqueImages()
  for i=1:1:53 #A modifier en fonction du nombre d'images � lire
    J = imread(strcat("images/Visages/ztest",num2str(i),".gif"));
    J = RGB2Gray(J); 
    #J = imresize(J, [128 128]);  d�commenter si les images ne sont pas en 128x128 --Ne marche pas en salle de TP ?
    V = I2Vector(J);
    M(:,i) = V;
  endfor
  M;
endfunction