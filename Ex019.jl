### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 0b617a7a-ca0e-11ec-282a-c7ca352de8ac
include("$(@__DIR__())/Check.jl")

# ╔═╡ d859e314-0d24-49c8-a857-676ec65a0093
#=
   You are given the following information, but you may prefer to do some
   research for yourself.

     • 1 Jan 1900 was a Monday.
     • Thirty days has September,
       April, June and November.
       All the rest have thirty-one,
       Saving February alone,
       Which has twenty-eight, rain or shine.
       And on leap years, twenty-nine.
     • A leap year occurs on any year evenly divisible by 4, but not on a
       century unless it is divisible by 400.

   How many Sundays fell on the first of the month during the twentieth
   century (1 Jan 1901 to 31 Dec 2000)?
=#

# ╔═╡ 9c6ddad9-6c53-4434-81b3-fe474513c9df
#Pega o dia da semana por índice de dia, 
#é diminiudo 0.01 para quando o numero for 7 resultar em ~7 e não 0
λ(x) = ceil(Int16, (x-0.01)%7)

# ╔═╡ 865ed8aa-9f17-4931-9ff9-4323a201833d
begin
	# Já é passado 1 pois 1900 começa na Segunda e não Domingo
	passado = 1
	resposta = 0
	
	w = ["SU","MO","TU","WE","TH","FR","SA"]
	
	for ano in 1900:2000
		leap = 28
		
		if (ano % 4 == 0) && ((ano % 100 != 0) || (ano % 400 == 0))
			leap = 29
		end
		meses = [31,leap,31,30,31,30,31,31,30,31,30,31]
		
		for m in meses
			#Quantos dias se passaram desde o começo do ano:
			passado += m 
			if (w[λ(m + passado)] == "SU")&&(ano >1900) 
				
				#Se o começo do mês for Sunday e o ano não for 1900
				resposta += 1
			end
		end
	end
	print(resposta)
end

# ╔═╡ eda903fc-b583-4859-9d7d-8d3c84d4a6b1
Check(19, resposta)

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
# ╠═0b617a7a-ca0e-11ec-282a-c7ca352de8ac
# ╠═d859e314-0d24-49c8-a857-676ec65a0093
# ╠═9c6ddad9-6c53-4434-81b3-fe474513c9df
# ╠═865ed8aa-9f17-4931-9ff9-4323a201833d
# ╠═eda903fc-b583-4859-9d7d-8d3c84d4a6b1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
