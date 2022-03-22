### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 0d3c83a0-4322-43fe-b36f-f7baaa0b7607
include("/home/lorenzovaralo/Documentos/ProjetosPython/Project_Euler/Check.jl")

# ╔═╡ 53edf68d-108e-44fc-bc7a-5db3501d969c
#=
   The prime factors of 13195 are 5, 7, 13 and 29.

   What is the largest prime factor of the number 600851475143 ?
=#

# ╔═╡ 9cb55381-b2d9-49ec-bda6-80d10db088e0
target = 600851475143

# ╔═╡ 7e221eac-d1c8-4473-b378-2437b109e3ae
function Prime(num)
	lista = range(2, step=1, stop= num-1)
	leng = length(lista)
	for i in lista
		if num % i == 0
			#Check if number num/i is prime
			if any(num/i .% lista[1: floor(Int, length(lista)/i)-1] .== 0)
				continue
			else
				return Int(num/i)
			end
		end
	end
end

# ╔═╡ 3ed12a53-a01e-490d-bd85-489aa3e6663c
resposta = Prime(target)

# ╔═╡ bd255cbb-a6af-46f2-9931-dd8bf962b2f1
Check(3, resposta)

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
# ╠═0d3c83a0-4322-43fe-b36f-f7baaa0b7607
# ╠═53edf68d-108e-44fc-bc7a-5db3501d969c
# ╠═bd255cbb-a6af-46f2-9931-dd8bf962b2f1
# ╠═9cb55381-b2d9-49ec-bda6-80d10db088e0
# ╠═7e221eac-d1c8-4473-b378-2437b109e3ae
# ╠═3ed12a53-a01e-490d-bd85-489aa3e6663c
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
