### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 58f51d6a-aabe-11ec-08bd-fb8ec8807ac0
include("$(@__DIR__)/Check.jl")

# ╔═╡ ce10c056-750b-4825-8d3c-268896c2e4d7
#=
	The sum of the squares of the first ten natural numbers is,

                          1^2 + 2^2 + ... + 10^2 = 385

   The square of the sum of the first ten natural numbers is,

                       (1 + 2 + ... + 10)^2 = 55^2 = 3025

   Hence the difference between the sum of the squares of the first ten
   natural numbers and the square of the sum is 3025 − 385 = 2640.

   Find the difference between the sum of the squares of the first one
   hundred natural numbers and the square of the sum.
=#

# ╔═╡ 67952960-3bc0-4e24-85df-b5d1bb387276
resposta = sum((1:100))^2 - sum((1:100).^2)

# ╔═╡ 69e8d6be-1bfe-45d1-bef2-e5630ae1b9b5
Check(6, resposta)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╠═58f51d6a-aabe-11ec-08bd-fb8ec8807ac0
# ╠═ce10c056-750b-4825-8d3c-268896c2e4d7
# ╠═69e8d6be-1bfe-45d1-bef2-e5630ae1b9b5
# ╠═67952960-3bc0-4e24-85df-b5d1bb387276
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
