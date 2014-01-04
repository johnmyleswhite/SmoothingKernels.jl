using Base.Test
using SmoothingKernels

for testfile in ["kernels.jl"]
    include(testfile)
end
