module SmoothingKernels
    include("kernels.jl")

    kernels = [
                :uniform => uniform,
                :triangular => triangular,
                :epanechnikov => epanechnikov,
                :biweight => biweight,
                :triweight => triweight,
                :tricube => tricube,
                :gaussian => gaussian,
                :cosine => cosine,
                :logistic => logistic
              ]

    unnormalized_kernels = [
                             :uniform => uniform_unnormalized,
                             :triangular => triangular_unnormalized,
                             :epanechnikov => epanechnikov_unnormalized,
                             :biweight => biweight_unnormalized,
                             :triweight => triweight_unnormalized,
                             :tricube => tricube_unnormalized,
                             :gaussian => gaussian_unnormalized,
                             :cosine => cosine_unnormalized,
                             :logistic => logistic_unnormalized
                           ]
end
