#bash instance encoding translator_params clasp_params converter_params dflatconverter_params
echo "bash instance encoding dflat/dynasp_params clasp_params converter_params dflatconverter_params"
pid=$$
#clean ordering
#echo "" > g.inp.translator.$pid
echo "USING: $pid"

#/usr/bin/time ./callpot_mon.sh $1 $2 $pid $4 > out.$pid
#cat out.$pid

/usr/bin/time ./callpot_mon.sh $1 $2 $pid $4 > g.g.out.$7.$pid.out 2> g.g.out.$7.$pid
cat g.g.out.$7.$pid >&2
cat g.g.out.$7.$pid.out
