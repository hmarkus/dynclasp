import random
import sys

i = int(sys.argv[1])
s = int(sys.argv[2])
p = float(sys.argv[3])

random.seed(p)

for j in range(0,i,1):
	print "arg({}).".format(j)
	for k in range(0,i,1):
		if random.random() >= 1 - p: 
			print "att({},{}).".format(j,k)


