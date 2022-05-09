### A Pluto.jl notebook ###
# v0.14.9

using Markdown
using InteractiveUtils

# ╔═╡ f20eea48-cb08-11ec-0b77-07583ce95553
include("$(@__DIR__())/Check.jl")

# ╔═╡ d8690795-4b2a-4454-a27e-1b2290f471f4
resposta = sum(digits(factorial(BigInt(100))))

# ╔═╡ 045204ea-7f37-4e25-a265-2292dfbaeb22
Check(20, resposta)

# ╔═╡ Cell order:
# ╠═f20eea48-cb08-11ec-0b77-07583ce95553
# ╠═d8690795-4b2a-4454-a27e-1b2290f471f4
# ╠═045204ea-7f37-4e25-a265-2292dfbaeb22
