with open("text.txt") as f:
	with open("test.txt" , "w") as f1:
		for line in f:
			f1.write(line)

