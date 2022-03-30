### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ caf3268a-aac0-11ec-31c2-c321daf7b648
include("$(@__DIR__)/Check.jl")

# ╔═╡ a0bdd19a-dde9-4fda-bb59-74875b504e58
#=
	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
   that the 6th prime is 13.

   What is the 10 001st prime number?
=#

# ╔═╡ 7983cc52-87bc-4a6d-a847-64d2a57ca8e0
primeiros_primos =[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97];

# ╔═╡ 64b375dd-5fa3-4b3c-a050-4289e4a7655a
lista = [x for x in 2:1000000 if ! any(x .% primeiros_primos .== 0)];

# ╔═╡ 27aa9c9e-4609-418c-a67d-9a7bccd30edb
c = length(primeiros_primos)

# ╔═╡ 982f2c50-1b42-4b6a-b217-cbfc304c87a7
function primoN(num)
	c=length(primeiros_primos)
	for i in lista
		if ! any(i .% (4:ceil(Int, i/10)) .== 0)
			c += 1
			if c == num
				return i
			end
		end
	end
end

# ╔═╡ 05b4155f-2768-4944-a821-bd9d8de29d58
resposta = primoN(10001)

# ╔═╡ c8f1a376-9fc5-49db-b227-7d52079c5565
Check(7, resposta)

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
# ╠═caf3268a-aac0-11ec-31c2-c321daf7b648
# ╠═a0bdd19a-dde9-4fda-bb59-74875b504e58
# ╠═c8f1a376-9fc5-49db-b227-7d52079c5565
# ╠═7983cc52-87bc-4a6d-a847-64d2a57ca8e0
# ╠═64b375dd-5fa3-4b3c-a050-4289e4a7655a
# ╠═27aa9c9e-4609-418c-a67d-9a7bccd30edb
# ╠═982f2c50-1b42-4b6a-b217-cbfc304c87a7
# ╠═05b4155f-2768-4944-a821-bd9d8de29d58
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
