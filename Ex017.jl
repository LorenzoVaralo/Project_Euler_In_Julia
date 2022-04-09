### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 4061be5f-d0a0-4f96-ae52-9f12c5eccea4
include("$(@__DIR__)/Check.jl")

# ╔═╡ 713d46b2-b695-11ec-0c7e-d3eadb737f78
#=
   If the numbers 1 to 5 are written out in words: one, two, three, four,
   five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

   If all the numbers from 1 to 1000 (one thousand) inclusive were written
   out in words, how many letters would be used?

   NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
   forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
   20 letters. The use of "and" when writing out numbers is in compliance
   with British usage.
=#

# ╔═╡ f56c6107-040e-4024-8140-6f43db9d4083
units = ["","one","two","three","four","five","six","seven","eight","nine"];

# ╔═╡ 8ad91d77-e7f7-43c5-9dd3-cdde9cd797ca
teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"];

# ╔═╡ 2f415d03-d738-47a6-8105-dbc9f6dd2b2f
decs = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"];

# ╔═╡ 799ba3b7-5305-4a7f-a9bb-e74906b73f63
function num_escritos()
	soma = 0
	for c in 0:9
		if c == 0
			hundred = ""
		else
			hundred = "hundred"
		end
		for d in 0:9
			for u in 0:9
				if u + d != 0 && c > 0 # NÃO em centenas completas (100, 200, 300...)
					and = "and"
				else
					and = ""
				end
				if d != 1
					number = units[c+1] * hundred * and * decs[d+1] * units[u+1]
				else
					number = units[c+1] * hundred * and * teens[u+1]
				end
				soma += length(number)
				#println(number)
				#println(soma)
			end
		end
	end
	return soma + length("onethousand")
end

# ╔═╡ 558964c5-4665-441e-906c-cefb63229752
resposta = num_escritos()

# ╔═╡ 9dc5db58-e015-46ad-9617-c17103230275
Check(17, resposta)

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
# ╠═4061be5f-d0a0-4f96-ae52-9f12c5eccea4
# ╠═713d46b2-b695-11ec-0c7e-d3eadb737f78
# ╠═f56c6107-040e-4024-8140-6f43db9d4083
# ╠═8ad91d77-e7f7-43c5-9dd3-cdde9cd797ca
# ╠═2f415d03-d738-47a6-8105-dbc9f6dd2b2f
# ╠═799ba3b7-5305-4a7f-a9bb-e74906b73f63
# ╠═558964c5-4665-441e-906c-cefb63229752
# ╠═9dc5db58-e015-46ad-9617-c17103230275
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
