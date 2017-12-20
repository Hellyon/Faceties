function [idxP] = reconHistogramme(R, M)
  [n D] = size(M);
  for i=1:1:n
    DM = bhattacharyya(R, M(i,:));
    proche(i) = DM;
  endfor
  [S I] = sort(proche);
  idxP = I(1:5);
endfunction