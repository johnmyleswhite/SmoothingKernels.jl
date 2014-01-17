SmoothingKernels.jl
===================

These kernels are designed for use in smoothing algorithms such as kernel regression and kernel density estimation. They are implemented in both unnormalized and normalized form.

# Mathematical Form of Implemented Kernels

Currently, the kernels implemented are those found in the [Wikipedia article on kernels in statistics](http://en.wikipedia.org/wiki/Kernel_(statistics)).

In normalized form, the kernels are:

* Uniform: $K(u) = \frac{1}{2} I(|u| \leq 1)$
* Triangular: $K(u) = (1 - |u|) I(|u| \leq 1)$
* Epanechnikov: $K(u) = \frac{3}{4} (1 - |u|^2) I(|u| \leq 1)$
* Biweight (Quartic): $K(u) = \frac{15}{16} (1 - |u|^2)^2 I(|u| \leq 1)$
* Triweight: $K(u) = \frac{35}{32} (1 - |u|^2)^3 I(|u| \leq 1)$
* Tricube: $K(u) = \frac{70}{81} (1 - |u|^3)^3 I(|u| \leq 1)$
* Gaussian: $K(u) = \frac{1}{\sqrt{2 \pi}} e^{-\frac{1}{2}u^2}$
* Cosine: $K(u) = \frac{\pi}{4} \cos(\frac{\pi}{2} u) I(|u| \leq 1)$
* Logistic: $K(u) = \frac{1}{e^u + 2 + e^{-u}}$

# Usage Example

    using SmoothingKernels, StatsBase

    x = randn(100)

    h = StatsBase.bandwidth(x)

    λ = 1 / h

    kval = λ * SmoothingKernels.kernels[:uniform](λ * (x - 0))
    kval = λ * SmoothingKernels.unnormalized_kernels[:uniform](λ * (x - 0))

    kval = λ * SmoothingKernels.kernels[:gaussian](λ * (x - 0))
    kval = λ * SmoothingKernels.unnormalized_kernels[:gaussian](λ * (x - 0))

# To Do

Extend these kernels to work with data points in $\mathbb{R}^k$ and not just $\mathbb{R}$.
