%: %.o
	ld -e main -o $@ $^ -I /lib64/ld-linux-x86-64.so.2 -lc
%.o: %.s
	as -g -o $@ $^ 