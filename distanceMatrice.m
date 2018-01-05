#Précédemment utilisé lors des TPS
function distanceMatrice()
  close all
  clear all
  M = zeros(16384,49);
  for i=1:1:50
    J = imread(strcat("images/Visages/ztest",num2str(i),".gif"));
    V = I2Vector(J);
    M(:,i) = V;
  endfor
  IS = imread("images/Visages/ztest50.gif");
  VS = I2Vector(IS);
  for i=1:1:50
    D(:,i) = distance(M(:,i),VS);
  endfor
  [Diff E] = min(D);
  I = Vector2I(M(:,E));
  figure();
  imshow(I);
  figure();
  imshow(IS);
endfunction