### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 98d3ba34-794d-4d65-adf2-2b0e042e7cb4
include("$(@__DIR__)/Check.jl")

# ╔═╡ a8cc0ab1-65f1-4a38-acf5-b125e38b8117
#=
   A Pythagorean triplet is a set of three natural numbers, a < b < c, for
   which,

                                a^2 + b^2 = c^2

   For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

   There exists exactly one Pythagorean triplet for which a + b + c = 1000.
   Find the product abc.
=#

# ╔═╡ aef3aded-2c74-45c9-b943-064f89906e1b
begin
	v = []
	c = []
	for i in 1:1:1000
		for j in 1:1:1000
			append!(v, i)
			append!(c, j)
		end
	end
end

# ╔═╡ 405fce57-1e21-4f6f-8732-f50f2fba852e
index = (c .+ v .+ sqrt.(c.^2 .+ v.^2)) .== 1000

# ╔═╡ 4bbf22ac-4ff3-45f0-9053-710a1eda9840
c[index]

# ╔═╡ 3f95386e-9f7a-4906-8042-495967683a39
v[index]

# ╔═╡ fb97973b-4bff-4246-a3c2-4275e532e792
resposta = BigInt((c[index].*v[index].* sqrt.(c[index].^2 + v[index].^2))[1])

# ╔═╡ 56dedb86-6616-47fa-b12b-2e89d3b83286
Check(9, resposta)

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
# ╠═98d3ba34-794d-4d65-adf2-2b0e042e7cb4
# ╠═a8cc0ab1-65f1-4a38-acf5-b125e38b8117
# ╠═56dedb86-6616-47fa-b12b-2e89d3b83286
# ╠═aef3aded-2c74-45c9-b943-064f89906e1b
# ╠═405fce57-1e21-4f6f-8732-f50f2fba852e
# ╠═4bbf22ac-4ff3-45f0-9053-710a1eda9840
# ╠═3f95386e-9f7a-4906-8042-495967683a39
# ╠═fb97973b-4bff-4246-a3c2-4275e532e792
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
