using BenchmarkTools
using CSV
using PythonCall
using PythonCall: pydel!

const py_random = pyimport("random")
const py_pyperf = pyimport("pyperf")