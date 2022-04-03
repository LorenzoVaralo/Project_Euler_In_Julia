### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 7641c8fe-b1e0-11ec-3d52-439b3080709a
include("$(@__DIR__)/Check.jl")

# ╔═╡ 81ed16f3-a5e2-46e1-9136-59e453cdd2a7
#=
   The following iterative sequence is defined for the set of positive
   integers:

   n → n/2 (n is even)
   n → 3n + 1 (n is odd)

   Using the rule above and starting with 13, we generate the following
   sequence:

                   13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

   It can be seen that this sequence (starting at 13 and finishing at 1)
   contains 10 terms. Although it has not been proved yet (Collatz Problem),
   it is thought that all starting numbers finish at 1.

   Which starting number, under one million, produces the longest chain?

   NOTE: Once the chain starts the terms are allowed to go above one million.
=#

# ╔═╡ 6b0dabb6-caf8-4ac8-b1a9-c4171693b2d2
function collatz(num)
	c = 0
	while num != 1
		if num % 2 == 0
			num = num/2
			c += 1
		else
			num = 3 * num + 1
			c += 1
		end
	end
	return c
end	

# ╔═╡ 17a4f071-0717-4ba5-bc71-81ca928a4980
lista = []

# ╔═╡ b2dcd234-fab7-44e4-a16f-f9418ac8e392
@time for i in 1:1_000_000
	append!(lista, collatz(i))
end

# ╔═╡ 102ce731-261f-4bc4-a908-87d99c116bca
resposta = argmax(lista)

# ╔═╡ a35c1d5c-ef34-4aa5-9db8-dcf7841bf62d
Check(14, resposta)

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
# ╠═7641c8fe-b1e0-11ec-3d52-439b3080709a
# ╠═81ed16f3-a5e2-46e1-9136-59e453cdd2a7
# ╠═6b0dabb6-caf8-4ac8-b1a9-c4171693b2d2
# ╠═17a4f071-0717-4ba5-bc71-81ca928a4980
# ╠═b2dcd234-fab7-44e4-a16f-f9418ac8e392
# ╠═102ce731-261f-4bc4-a908-87d99c116bca
# ╠═a35c1d5c-ef34-4aa5-9db8-dcf7841bf62d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
