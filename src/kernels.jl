uniform(u::Real) = 1//2 * float64(abs(u) <= 1.0)
uniform_unnormalized(u::Real) = 1//2 * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real uniform
Base.@vectorize_1arg Real uniform_unnormalized

triangular(u::Real) = (1 - abs(u)) * float64(abs(u) <= 1.0)
triangular_unnormalized(u::Real) = (1 - abs(u)) * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real triangular
Base.@vectorize_1arg Real triangular_unnormalized

epanechnikov(u::Real) = 3//4 * (1 - u^2) * float64(abs(u) <= 1.0)
epanechnikov_unnormalized(u::Real) = (1 - u^2) * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real epanechnikov
Base.@vectorize_1arg Real epanechnikov_unnormalized

biweight(u::Real) = 15//16 * (1 - u^2)^2 * float64(abs(u) <= 1.0)
biweight_unnormalized(u::Real) = (1 - u^2)^2 * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real biweight
Base.@vectorize_1arg Real biweight_unnormalized

triweight(u::Real) = 35//32 * (1 - u^2)^3 * float64(abs(u) <= 1.0)
triweight_unnormalized(u::Real) = (1 - u^2)^3 * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real triweight
Base.@vectorize_1arg Real triweight_unnormalized

tricube(u::Real) = 70//81 * (1 - abs(u)^3)^3 * float64(abs(u) <= 1.0)
tricube_unnormalized(u::Real) = (1 - abs(u)^3)^3 * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real tricube
Base.@vectorize_1arg Real tricube_unnormalized

gaussian(u::Real) = (1 / sqrt(2 * pi)) *  exp(-1//2 * u^2)
gaussian_unnormalized(u::Real) = exp(-1//2 * u^2)
Base.@vectorize_1arg Real gaussian
Base.@vectorize_1arg Real gaussian_unnormalized

cosine(u::Real) = (pi / 4) * cos((pi / 2) * u) * float64(abs(u) <= 1.0)
cosine_unnormalized(u::Real) = cos((pi / 2) * u) * float64(abs(u) <= 1.0)
Base.@vectorize_1arg Real cosine
Base.@vectorize_1arg Real cosine_unnormalized

logistic(u::Real) = 1 / (exp(u) + 2 + exp(-u))
logistic_unnormalized(u::Real) = 1 / (exp(u) + 2 + exp(-u))
Base.@vectorize_1arg Real logistic
Base.@vectorize_1arg Real logistic_unnormalized
