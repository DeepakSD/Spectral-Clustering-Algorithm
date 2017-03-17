# Spectral-Clustering-Algorithm

Author: Deepak Shanmugam

#Dataset Description:

For this, we will use the spam data set provided with this problem set. The data has been divided into three pieces mush_train.data, mush_validation and mush_test.data. These data sets were generated using the UCI Spambase data set (follow the link https://archive.ics.uci.edu/ml/datasets/Spambase for information about the format of the data).

#Problem Description:

The basic approach is as follows, given a collection of n points, x1,...,xn ∈ Rm, we construct a matrix of − 1 ||x −x ||2
A ∈ Rn×n of similarities between them. Here, Aij = Aji = e 2σ2 i j is the similarity between xi andxj for some σ∈R.

The Basic Algorithm is described as

Given the matrix of similarities, performs the following operations.

Step 1: Compute the “Laplacian matrix”, L = D−A, where D is a diagonal matrix with Dii = Summation of Aij wrt j for all i.

Step 2: Compute the eigenvectors of the Laplacian using eig() in MATLAB.

Step 3: Construct a matrix V ∈ Rn×k whose columns are the eigenvectors that correspond to the k smallest eigenvalues of L.

Step 4: Let y1, . . . , yn denote the rows of V. Use the kmeans() algorithm in MATLAB to cluster the rows of V into clusters S1,...,Sk.

Step 5: The final clusters C1, . . . , Ck should be given by assigning vertex i of the input set to cluster Cj if yi ∈ Sj.
