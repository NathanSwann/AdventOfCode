/part 1
sum {$[min 1_first[s]~':s:signum l:1_deltas x;min within[;1 3]abs l;0b]}each inp:"J"$" "vs/:read0`:data/2

/part 2

/below doesnt work
count inp where {@[;2](max a?max a:count each group signum deltas x;0b;1b;first x){[s;v]$[within[abs a;1 3]&s[0]=signum a:v-last s;@[s;3;:;v];$[s 1;@[s;2;:;0b];@[s;1;:;1b]]]}/1_x}each inp:"J"$" "vs/:read0`:data/2

o:{x-[;1]sums each ((count[x]-1)#1){@[x;y;:;2]}/:til -[;1]count x}
sum {max {$[min 1_first[s]~':s:signum l:1_deltas x;min within[;1 3]abs l;0b]}each o x}each inp:"J"$" "vs/:read0`:data/2
