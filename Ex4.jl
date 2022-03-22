### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 92b34ffa-a9f2-11ec-07a5-dfefcab967e3
include("$(@__DIR__)/Check.jl")

# ╔═╡ b8cb9b71-9b90-457c-87e2-159210327f37
#=
	A palindromic number reads the same both ways. The largest palindrome made
   from the product of two 2-digit numbers is 9009 = 91 × 99.

   Find the largest palindrome made from the product of two 3-digit numbers.
=#

# ╔═╡ e8772d0f-4e9b-4517-9909-a57150354c7e
999 * 999 #: Numero máximo possível

# ╔═╡ bb1955ba-f1f5-4ccd-a2e0-894e661619e3
md"""[997799, 996699, 995599, 994499, 993399, 992299, 991199, 990099, 989989,...]"""

# ╔═╡ 7188ec62-66fd-48d5-a19e-77a3deca233d
begin
	resposta = 0
	for n in range(997, step=-1, stop=100)
		pali = 1000n + parse(Int, join(digits(n,base=10))) # 997799, 996699, 995599...
		for i in range(999, step=-1, stop=100)
			if pali%i==0 && pali/i < 999
				resposta = pali
				break
			end
		end
		if resposta > 0
			break
		end
	end
end

# ╔═╡ 48dbcd4d-0e47-47ef-b7dd-e47a551a367f
Check(4, resposta)

# ╔═╡ 197d541f-bb72-4fb3-a161-241b19040b3b
resposta

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
# ╠═92b34ffa-a9f2-11ec-07a5-dfefcab967e3
# ╠═b8cb9b71-9b90-457c-87e2-159210327f37
# ╠═e8772d0f-4e9b-4517-9909-a57150354c7e
# ╟─bb1955ba-f1f5-4ccd-a2e0-894e661619e3
# ╠═48dbcd4d-0e47-47ef-b7dd-e47a551a367f
# ╠═7188ec62-66fd-48d5-a19e-77a3deca233d
# ╠═197d541f-bb72-4fb3-a161-241b19040b3b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
