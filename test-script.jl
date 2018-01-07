# test script to be run on Travis
Pkg.clone(pwd())
# NOTE remove when ContinuousTransformations.jl is registered
Pkg.clone("https://github.com/tpapp/ContinuousTransformations.jl.git")
Pkg.build("DiffWrappers")
Pkg.test("DiffWrappers"; coverage=true)
