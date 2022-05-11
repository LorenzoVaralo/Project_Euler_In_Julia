### A Pluto.jl notebook ###
# v0.18.4

using Markdown
using InteractiveUtils

# ╔═╡ 9fc79610-cdf9-11ec-2b8e-d3dc8eae8a0b
include("$(@__DIR__())/Check.jl")

# ╔═╡ d597d7a6-5ebc-4d64-b295-dfcce1bdcb8d
#=
   Let d(n) be defined as the sum of proper divisors of n (numbers less than
   n which divide evenly into n).
   If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair
   and each of a and b are called amicable numbers.

   For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
   44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
   2, 4, 71 and 142; so d(284) = 220.

   Evaluate the sum of all the amicable numbers under 10000.
=#

# ╔═╡ 1d049171-ec3e-401f-aed8-82961cbac78b
function d(n)
	b = []
	for i in 1:n
		if n%i==0
			append!(b, i)	
		end
		if i == (n/b[end])-1
			break
		end
	end
	return sum(vcat(b, n.÷b[end:-1:2]))
end

# ╔═╡ 7da36e73-8b24-4da9-9c66-d334996c8c9e
begin
	ami = 0
	for n in 1:10_000
		if (d(n) != n)&&(d(d(n)) == n)
			ami += n
		end
	end
	resposta = ami
end

# ╔═╡ abd29b34-146e-4475-ad78-fb047f94b62d
Check(21, resposta)

# ╔═╡ Cell order:
# ╠═9fc79610-cdf9-11ec-2b8e-d3dc8eae8a0b
# ╠═d597d7a6-5ebc-4d64-b295-dfcce1bdcb8d
# ╠═1d049171-ec3e-401f-aed8-82961cbac78b
# ╠═7da36e73-8b24-4da9-9c66-d334996c8c9e
# ╠═abd29b34-146e-4475-ad78-fb047f94b62d
