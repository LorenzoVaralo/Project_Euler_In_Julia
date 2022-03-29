### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 668f893c-af7e-11ec-1e74-0353ad82f4df
include("$(@__DIR__)/Check.jl")

# ╔═╡ e383230a-1e99-4817-839c-247fb752b778
#=
   The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

   Find the sum of all the primes below two million.
=#

# ╔═╡ 6ec78311-baa3-4588-a285-b9de8b703b84
function findPrimes(n)
	A = BitArray(ones(n))
	for i in 2:1:n
		if (i^2) >= n
			return range(1, step=1, stop=n)[A]
		end
		for j in (i^2):i:n
			if A[j] == true
				A[j] = false
			end
		end
	end
end

# ╔═╡ 449cc6d0-57e4-4eba-b1bb-c89f0fcc3318
resposta = sum(findPrimes(2_000_000))-1

# ╔═╡ 3dadf3bb-f161-44ee-983d-b8cd4021f15a
Check(10, resposta)

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
# ╠═668f893c-af7e-11ec-1e74-0353ad82f4df
# ╠═3dadf3bb-f161-44ee-983d-b8cd4021f15a
# ╠═e383230a-1e99-4817-839c-247fb752b778
# ╠═6ec78311-baa3-4588-a285-b9de8b703b84
# ╠═449cc6d0-57e4-4eba-b1bb-c89f0fcc3318
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
