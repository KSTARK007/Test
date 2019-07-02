with open("main5.log") as f:
	with open("test.csv" , "w") as f1:
		for line in f:
			print(line.split(":")[1].split(",")[3].split("=")[1])
			print(line.split(":")[1].split(",")[0].split("=")[1])
			print(line.split(":")[2].split(",")[0].split("=")[1])
			l = line.split(":")[1].split(",")[3].split("=")[1] + "," + line.split(":")[1].split(",")[0].split("=")[1] + "," + line.split(":")[2].split(",")[0].split("=")[1]
			f1.write(l)
