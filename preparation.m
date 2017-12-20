function preparation()
  for i=51:1:53
    J = imread(strcat("images/Visages/test",num2str(i),".png"));
    [h l n] = size(J);
    if n == 3
      J = RGB2Gray(J);
    endif
    imwrite(J,strcat("images/Visages/ztest",num2str(i),".gif"));
  endfor
endfunction