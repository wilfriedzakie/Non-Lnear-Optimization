# Non-Lnear-Optimization
Implementation of non linear optimization algorithm using MatLab 

During our deterministic and stochastic optimization classes, we have studied 4 different
optimization algorithms. These algorithms were applied on the RosenBrock and Himmelblau
functions. The objective is to find the minima of these functions using as parameters the
direction dk and, for some algorithms, the step tk.
The direction dk is a vector defined by the gradient of the function. As to the step tk it’s a
constant obtained mostly using the Hessian matrix if the function.


The algorithms studied are listed below:
- Steepest descent algorithm
- Newton algorithm
- Quasi Newton algorithm
- Quasi-Newton algorithm using Wolf algorithm

The report file ([report.pdf](https://github.com/wilfriedzakie/Non-Lnear-Optimization/blob/master/report.pdf)) gives comparison of the performance of each algorithm to optimize the Rosenbrock and
Himmelblau functions
