
import random
import sys
import subprocess

#i = int(sys.argv[1])
s = int(sys.argv[1])
p = float(sys.argv[2])

ind = 0
random.seed(s)


def genOne(i, p):
	f = file("tmp", "w+")
	for j in range(0,i,1):
		f.write("arg({}).\n".format(j))
		for k in range(0,i,1):
			if random.random() >= 1 - p:
				f.write("att({},{}).\n".format(j,k))
	return f


for i in range(50,300,10):
	while True:
		random.seed(s + int(random.random() * 100))
		f = genOne(i,p)
		f.close()
		if subprocess.call(["bash", "gentest.sh"]) == 0:
			subprocess.call("mv tmp inst{}.lp".format(ind))
			print "SUCC ", i
			ind += 1
		else:
			pass
			#print "FAIL ", i

