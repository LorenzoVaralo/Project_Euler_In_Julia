### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ b4ad831c-a8e1-11ec-2dc2-8ffb74e0342d
include("/home/lorenzovaralo/Documentos/ProjetosPython/Project_Euler/Check.jl")

# ╔═╡ 6ea7bdd0-9778-4b29-91b5-a8f2db418a28
resposta = sum([x for x in 0:999 if x % 3 == 0 || x % 5 == 0 ])

# ╔═╡ 489d2ad4-8300-4eb1-906c-144072ce754b
Check(1, resposta)

# ╔═╡ Cell order:
# ╠═b4ad831c-a8e1-11ec-2dc2-8ffb74e0342d
# ╠═6ea7bdd0-9778-4b29-91b5-a8f2db418a28
# ╠═489d2ad4-8300-4eb1-906c-144072ce754b
