#Fonction de calcul gr�ce au test Chi2
function distance = testChi2(H1,H2)
  chi1 = chi2cdf(H1, 1);
  chi2 = chi2cdf(H2, 1);
  Dchi2 = sum(sqrt(chi1.-chi2));
  distance = sum(Dchi2);
endfunction