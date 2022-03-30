all:
	@echo -n "source env/bin/activate\n" | xclip -selection clipboard
	@echo "command copied, paste to continue"
	
req:
	pip install -re requirements.txt
	
	

# unzip lz4 file
unlz4:
	unlz4 .tar.lz4 | tar -xv
	
# code compilation 
c:
	gcc -o a a.cpp
	./a
	rm a
cpp:
	g++ -o a a.cpp
	./a
	rm a
py:
	python a.py


	
