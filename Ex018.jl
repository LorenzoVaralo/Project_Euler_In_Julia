### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ d1f56cd6-b75e-11ec-19d7-77ba60aea720
include("$(@__DIR__)/Check.jl")

# ╔═╡ 418b7011-9e7d-4833-86b1-5be99937294b
triangle = [
00 00 00 00 00 00 00 00 00 00 00 00 00 00 75 00;
00 00 00 00 00 00 00 00 00 00 00 00 00 95 64 00;
00 00 00 00 00 00 00 00 00 00 00 00 17 47 82 00;
00 00 00 00 00 00 00 00 00 00 00 18 35 87 10 00;
00 00 00 00 00 00 00 00 00 00 20 04 82 47 65 00;
00 00 00 00 00 00 00 00 00 19 01 23 75 03 34 00;
00 00 00 00 00 00 00 00 88 02 77 73 07 63 67 00;
00 00 00 00 00 00 00 99 65 04 28 06 16 70 92 00;
00 00 00 00 00 00 41 41 26 56 83 40 80 70 33 00;
00 00 00 00 00 41 48 72 33 47 32 37 16 94 29 00;
00 00 00 00 53 71 44 65 25 43 91 52 97 51 14 00;
00 00 00 70 11 33 28 77 73 17 78 39 68 17 57 00;
00 00 91 71 52 38 17 14 91 43 58 50 27 29 48 00;
00 63 66 04 68 89 53 67 30 73 16 69 87 40 31 00;
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23 00]

# ╔═╡ 58e99aa4-dc02-46fc-9761-83f083ecbf05
for i in 15:-1:2
	for j in 1:14
		#Começando da penúltima linha
		#Cada numero se torna a soma pelo maior entre os dois de baixo
		#isso se repete até a chegar na primeira linha
		triangle[i-1, j+1] += maximum(triangle[i, j:j+1])
	end
	println(triangle[i-1,:])
end

# ╔═╡ 65238721-48a2-44ee-b945-d0ab970790e9
resposta = maximum(triangle[1,:])

# ╔═╡ 51680901-05d0-4052-90c3-6a9ee234de92
Check(18, resposta)

# ╔═╡ Cell order:
# ╠═d1f56cd6-b75e-11ec-19d7-77ba60aea720
# ╠═418b7011-9e7d-4833-86b1-5be99937294b
# ╠═58e99aa4-dc02-46fc-9761-83f083ecbf05
# ╠═65238721-48a2-44ee-b945-d0ab970790e9
# ╠═51680901-05d0-4052-90c3-6a9ee234de92
