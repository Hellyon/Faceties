function VM = visageMoyen(M)
  [n,m] = size(M);
  V = sum(M,2);
  VM=Vector2I(V/m);
endfunction