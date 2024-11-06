gen-llvm-ir:
	clang++ ./data/loop.cpp -S -o ./data/loop.S
	clang++ ./data/loop.cpp -emit-llvm -S -o./data/loop.ll

	clang++ ./data/hello-world.cpp -S -o ./data/hello-world.S
	clang++ ./data/hello-world.cpp -emit-llvm -S -o./data/hello-world.ll

clean:
	rm -rf ./data/*.ll
	rm -rf ./data/*.s
	rm -rf ./data/*.S
	rm -rf ./data/*.bc
