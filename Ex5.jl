### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 883609a2-aa2f-11ec-0393-696071fead30
include("$(@__DIR__)/Check.jl")

# ╔═╡ 95390b97-0e44-49e2-bcce-bc1a18dbe8ff
#=
   2520 is the smallest number that can be divided by each of the numbers
   from 1 to 10 without any remainder.

   What is the smallest positive number that is evenly divisible by all of
   the numbers from 1 to 20?
=#

# ╔═╡ f017bbdd-3227-4342-a4fb-e080fb94c102
#= Raciocínio desenvolvido por conta própria para chegar na solução:

	1. É feito uma lista crescente de numeros, de 1:N
	2. Os números divisíveis por 1 número primo são subsituídos por esse numero primo.
	3. Os divisíveis por 2 ou mais números primos são removídos ou substituídos por 1.
	4. Fazer cada numero vezes o resto. [1 * 2 * 3 * 4 * ...]
=#

# ╔═╡ 58bf35e7-1caa-4da1-be38-cdf60a5e3758
function divisibleUntil(num)
	# pode registrar mais numeros primos se quiser, para mim não é necessário
	primos = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31] 
	lista = collect(range(1, step=1, stop=num)) # 1.
	for (ind, i) in enumerate(lista)
		diviz = (i .% primos .== 0) # 2.
		if sum(diviz) == 1 
			lista[ind] = primos[findmax(diviz)[2]]
		elseif sum(diviz) > 1 # 3.
			lista[ind] = 1 
		end
	end
	return prod(lista) # 4.
end
			

# ╔═╡ 70b26226-35d7-4d19-a64f-d51822bc85ba
resposta = divisibleUntil(20)

# ╔═╡ 40e9c64f-78af-4d42-96d5-32cce7b4e7f4
Check(5, resposta)

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
# ╠═883609a2-aa2f-11ec-0393-696071fead30
# ╠═95390b97-0e44-49e2-bcce-bc1a18dbe8ff
# ╠═40e9c64f-78af-4d42-96d5-32cce7b4e7f4
# ╠═f017bbdd-3227-4342-a4fb-e080fb94c102
# ╠═58bf35e7-1caa-4da1-be38-cdf60a5e3758
# ╠═70b26226-35d7-4d19-a64f-d51822bc85ba
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
