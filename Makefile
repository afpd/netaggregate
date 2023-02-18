netaggregate: netaggregate.cpp
	c++ -O3 -o netaggregate netaggregate.cpp

clean:
	rm netaggregate
	
test:
	cat test-in.txt | ./netaggregate > test-r.txt
	diff -s test-r.txt test-out.txt
