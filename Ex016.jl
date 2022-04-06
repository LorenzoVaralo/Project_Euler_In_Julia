### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ e151adb2-10b7-4848-9c0b-a92fdc18858f
include("$(@__DIR__)/Check.jl")

# ╔═╡ 851fe42e-b5d1-11ec-0404-3dad91646192
#=
	2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

    What is the sum of the digits of the number 2^1000?
=#

# ╔═╡ 2124caa7-6126-47b7-a3d0-d23aaa42a1da
resposta = sum(digits(BigInt(2)^1000))

# ╔═╡ 0ebb712b-429e-4353-99fe-69cdcd147b99
Check(16, resposta)

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
# ╠═e151adb2-10b7-4848-9c0b-a92fdc18858f
# ╠═851fe42e-b5d1-11ec-0404-3dad91646192
# ╠═0ebb712b-429e-4353-99fe-69cdcd147b99
# ╠═2124caa7-6126-47b7-a3d0-d23aaa42a1da
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
