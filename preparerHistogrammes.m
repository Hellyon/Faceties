function MJ = preparerHistogrammes(M)
  ax = 0:5:255;
    for i=1:1:53
     [histJ ce] = hist(M(:,i), ax);
     MJ(:,i) = histJ/(128*128);
   endfor
endfunction