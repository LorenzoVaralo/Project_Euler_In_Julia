function extractHashs()
	file_path = "$(@__DIR__)/euler-offline-master"
	reg = r"Answer: .*"
	hashs = []
	open("$file_path/project_euler_problems.txt") do full
		global full_text = read(full, String)
		global idxs = findall(reg, full_text)
		close(full)
	end
	for i in idxs
		append!(hashs, [full_text[i][9:end]])
	end
	open("$file_path/Answers.txt", "w") do Answers
		for i in hashs
			write(Answers, "$i\n")
		end
		close(Answers)
	end
end


function getAns()
	file_path = "$(@__DIR__)/euler-offline-master/Answers.txt"
	if ! isfile(file_path)
		extractHashs()
	end
	open(file_path) do f
		lista = split(read(f, String), "\n")
		close(f)
		return lista[1:end-1]
	end
end


function Check(question_number, resposta)
	Ans = getAns()
	right_answer = Ans[question_number]
	hashed_ans = readchomp(pipeline(`echo -n $resposta`, `md5sum`))[1:end-3]
	if hashed_ans != right_answer
		return "Resposta ERRADA ╳"
	else
		return "Resposta CERTA! ✔"
	end
end