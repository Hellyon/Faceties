#Fonction de calcul grâce au test Chi2
function distance = testChi2(H1,H2)
  chi1 = chi2cdf(H1, 1);  
  chi2 = chi2cdf(H2, 1);
  Dchi2 = sum(sqrt(H1.-H2));
  distance = sum(-log(Dchi2));
endfunction