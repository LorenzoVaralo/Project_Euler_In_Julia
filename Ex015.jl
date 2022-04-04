### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 5c9ff236-b354-11ec-0757-63b652e6c1c7
include("$(@__DIR__)/Check.jl")

# ╔═╡ 18f0f807-202a-4cd8-8a1a-fe47212e601a
#=
   Starting in the top left corner of a 2×2 grid, and only being able to move
   to the right and down, there are exactly 6 routes to the bottom right
   corner.

   How many such routes are there through a 20×20 grid?
=#

# ╔═╡ 4149fe73-d675-4225-a06c-970be74c1f43
X = BigInt(20)

# ╔═╡ b96121f9-76e7-474d-a3d1-29dabd84aa6e
md"""$$\frac{(2*20)!}{20!20!}$$"""

# ╔═╡ b7b34a21-db0c-4241-8ec0-6df9696ecb84
resposta = BigInt(factorial(2X)/(factorial(X)^2))

# ╔═╡ 1c916c87-6632-4e2b-932e-725a28e4780f
Check(15, resposta)

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
# ╠═5c9ff236-b354-11ec-0757-63b652e6c1c7
# ╠═18f0f807-202a-4cd8-8a1a-fe47212e601a
# ╠═1c916c87-6632-4e2b-932e-725a28e4780f
# ╠═4149fe73-d675-4225-a06c-970be74c1f43
# ╟─b96121f9-76e7-474d-a3d1-29dabd84aa6e
# ╠═b7b34a21-db0c-4241-8ec0-6df9696ecb84
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
