### A Pluto.jl notebook ###
# v0.19.4

using Markdown
using InteractiveUtils

# ╔═╡ f3efc0f8-d08a-11ec-3968-3b40277554db
include("$(@__DIR__())/Check.jl")

# ╔═╡ a22fe831-f650-4d23-b41e-e989998d13bb
#=
   Using [1]names.txt, a 46K text file containing over five-thousand first
   names, begin by sorting it into alphabetical order. Then working out the
   alphabetical value for each name, multiply this value by its alphabetical
   position in the list to obtain a name score.

   For example, when the list is sorted into alphabetical order, COLIN, which
   is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So,
   COLIN would obtain a score of 938 × 53 = 49714.

   What is the total of all the name scores in the file?
=#

# ╔═╡ 15431822-52bb-4c47-8e35-a239996fc350
names = read("$(@__DIR__())/names.txt", String)

# ╔═╡ b0613622-0d31-4cdf-985c-226003faf33e
names2 = replace(names, "\""=>"")

# ╔═╡ 936e7bf8-af50-4ca1-801f-4977fe1114b0
nms = sort(split(names2, ","))

# ╔═╡ edd55a50-9472-41e9-ac0a-c4ed076e36a4
letter_index = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

# ╔═╡ 4bdb36cf-e46c-4fda-b902-08a7d93525de
function prob22()
	resposta = 0
	for (i, n) in enumerate(nms)
		name_sum = 0
		for ch in n
			name_sum += findfirst(ch, letter_index)
		end
		resposta += name_sum* i
	end
	return resposta
end

# ╔═╡ f47e5236-f5a6-4787-b404-0d69fe99e74b
resp = prob22()

# ╔═╡ d02e86d6-b48e-47c4-aacb-c5cb2bb325c5
Check(22, resp)

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
# ╠═f3efc0f8-d08a-11ec-3968-3b40277554db
# ╠═a22fe831-f650-4d23-b41e-e989998d13bb
# ╠═15431822-52bb-4c47-8e35-a239996fc350
# ╠═b0613622-0d31-4cdf-985c-226003faf33e
# ╠═936e7bf8-af50-4ca1-801f-4977fe1114b0
# ╠═edd55a50-9472-41e9-ac0a-c4ed076e36a4
# ╠═4bdb36cf-e46c-4fda-b902-08a7d93525de
# ╠═f47e5236-f5a6-4787-b404-0d69fe99e74b
# ╠═d02e86d6-b48e-47c4-aacb-c5cb2bb325c5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
