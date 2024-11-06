gen-llvm-ir:
	clang++ ./data/loop.cpp -S -o ./data/loop.S
	clang++ ./data/loop.cpp -emit-llvm -S -o./data/loop.ll

	clang++ ./data/hello-world.cpp -S -o ./data/hello-world.S
	clang++ ./data/hello-world.cpp -emit-llvm -S -o./data/hello-world.ll

opt-sample:
	opt --loop-reduce -S hello-world.ll -o hello-world-after.ll
	opt --loop-reduce -S loop.ll -o loop-after.ll

clean:
	rm -rf ./data/*.ll
	rm -rf ./data/*.s
	rm -rf ./data/*.S
	rm -rf ./data/*.bc
	rm -rf ./data/*.mir
