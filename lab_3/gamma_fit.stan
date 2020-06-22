functions {
  vector gamma_fun(vector y, vector theta, real[] x_r, int[] x_i) {
    vector[2] deltas;
    
    deltas[1] = gamma_cdf(theta[1], y[1], y[2]);
    deltas[2] = gamma_cdf(theta[2], y[1], y[2]) - 0.98;
    
    return deltas;
  }
}

data {
  vector[3] params;
  vector[2] theta;     
  vector[2] y_guess;
}

transformed data {
  vector[2] y;
  real x_r[0];
  int x_i[0];
  
  y = algebra_solver(gamma_fun, y_guess, theta, x_r, x_i, params[1], params[2], params[3]);
}

generated quantities {
    real gamma = gamma_rng(y[1],y[2]);
    real alpha = y[1];
    real beta = y[2];
}