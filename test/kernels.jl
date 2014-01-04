module TestKernels
    using Base.Test
    using SmoothingKernels
    ks = SmoothingKernels.kernels

    for k in keys(ks)
        kernel = ks[k]
        for u in [0.0, 0.00001, 0.0001, 0.001, 0.01, 0.1, 1.0, 10.0]
            @test isapprox(kernel(-u), kernel(u))
        end
        integral, approxerr = quadgk(kernel, -Inf, Inf)
        @test abs(integral - 1.0) < approxerr
    end
end
