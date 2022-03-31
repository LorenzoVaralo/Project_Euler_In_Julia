### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 44cc6b25-6c50-4622-b9f1-7f6be7aabee3
using LinearAlgebra

# ╔═╡ e8f490c2-b04b-11ec-0abe-cf74af576868
include("$(@__DIR__)/Check.jl")

# ╔═╡ 38971a8d-ac8b-4b91-b5e2-f63fafd165e3
#=
   In the 20×20 grid below, four numbers along a diagonal line have been
   marked in red.

          08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
          49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
          81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
          52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
          22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
          24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
          32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
          67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
          24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
          21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
          78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
          16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
          86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
          19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
          04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
          88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
          04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
          20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
          20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
          01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

   The product of these numbers is 26 × 63 × 78 × 14 = 1788696.

   What is the greatest product of four adjacent numbers in the same
   direction (up, down, left, right, or diagonally) in the 20×20 grid?
=#

# ╔═╡ 567a1265-7125-4304-8b72-073da79947a7
lista  = [08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08;
          49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00;
          81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65;
          52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91;
          22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80;
          24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50;
          32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70;
          67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21;
          24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72;
          21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95;
          78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92;
          16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57;
          86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58;
          19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40;
          04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66;
          88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69;
          04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36;
          20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16;
          20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54;
          01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48];

# ╔═╡ 378609f5-20cc-47ca-88a3-4604abf803f6
function horizontal(lista)
	maior = 0
	for i in 1:1:20
		for j in 1:1:17
			if maior < prod(lista[i,j:j+3])
				maior = prod(lista[i,j:j+3])
			end
		end
	end
	return maior
end

# ╔═╡ 3fc3ad1c-8208-4ecc-89b8-64826e92b444
a = horizontal(lista)

# ╔═╡ 676e7c96-cddd-4cfe-87fe-7df2581a13e5
b = horizontal(lista')

# ╔═╡ 15db47e1-8a9c-4149-bb4a-107a3fee28bc
function diagonal(lista, transposed)
	maior = 0
	resu = 0
	if transposed
		lista = rotr90(lista)
	end
	for i in 1:1:17
		for j in 1:1:17
			resu = prod(diag(lista[i:i+3, j:j+3]))
			if maior < resu
				maior = resu
			end
		end
	end
	return maior
end

# ╔═╡ 2d2ba460-20e1-4efd-a86d-466c7dd00d78
c = diagonal(lista, false)

# ╔═╡ aefe0031-5f8b-4cc5-90f0-6fae747e256b
d = diagonal(lista, true)

# ╔═╡ 401c2be2-4c41-42da-baf8-116a967ca298
resposta = maximum([a, b, c, d])

# ╔═╡ 4a20a75b-d051-4f32-a8bf-18326140bfb3
Check(11, resposta)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╠═44cc6b25-6c50-4622-b9f1-7f6be7aabee3
# ╠═e8f490c2-b04b-11ec-0abe-cf74af576868
# ╠═38971a8d-ac8b-4b91-b5e2-f63fafd165e3
# ╠═4a20a75b-d051-4f32-a8bf-18326140bfb3
# ╠═567a1265-7125-4304-8b72-073da79947a7
# ╠═378609f5-20cc-47ca-88a3-4604abf803f6
# ╠═3fc3ad1c-8208-4ecc-89b8-64826e92b444
# ╠═676e7c96-cddd-4cfe-87fe-7df2581a13e5
# ╠═15db47e1-8a9c-4149-bb4a-107a3fee28bc
# ╠═2d2ba460-20e1-4efd-a86d-466c7dd00d78
# ╠═aefe0031-5f8b-4cc5-90f0-6fae747e256b
# ╠═401c2be2-4c41-42da-baf8-116a967ca298
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
