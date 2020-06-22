data {
  vector[3] mu;
  matrix[3,3] sigma;
}

generated quantities {
    vector[3] y = multi_normal_rng(mu,sigma);
}