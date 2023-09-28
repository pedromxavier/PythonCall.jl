using PythonCall
const PYTHON_EXE = joinpath(ENV["CONDA_PREFIX"], "bin", "python")

const py_pyperf = pyimport("pyperf")

let 
    script_path = joinpath(@__DIR__, "benchmark.py")
    output_path = joinpath(@__DIR__, "results.json")

    run(`$PYTHON_EXE $script_path -o $output_path`)

end