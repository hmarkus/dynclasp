echo "Mode,Type,Instance,Seed,User-Time,System-Time,Wall-Clock-Time,MemoryConsumption,Number of Memory-Errors,Number of Timeout-Errors,Number of Exitcode-Errors,Exit-Code,Lines stdout,Lines stderr,Command"
pid=$$
for i in `ls input/`
do
	#echo $i
	if [[ $i =~ .*.lp ]]
	#if [[ $i =~ .* ]]
	then
		for j in `seq 1 1 5`
		do
			seed=$RANDOM
			echo $i >> out.$pid
			#/usr/bin/time ls 2>&1 > /dev/null | grep -o "[0-9]\+\.[0-9]\+"
			nmbr=`bash ../variable_ordering_test.sh input/$i ../encodings/vc_edge.lp "--seed $seed" "--configuration=$1" "in" "in" "vc_edge_variable_ordering_$i.$j" edge 2>&1 >> out.$pid | grep -o "^[0-9]\+\.[0-9]\+"`
			#mv g.xml g.xml.$i.$j
			echo "heuristic,vc_edge_variable_ordering,$i,$seed,$nmbr,0,0,0,0,0,0,0,0,0,0"
		done
	fi
done
