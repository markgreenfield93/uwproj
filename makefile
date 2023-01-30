all: README.md

README.md: guessinggame.sh
	echo "# Practice with Bash and Git: the simple guessing game" > README.md
	echo "## About the script" >> README.md
	echo "Prompts user to guess how many files are in the current directory" >> README.md
	echo "## Some stats" >> README.md
	echo "Make was run at:" >> README.md
	date >> README.md
	echo "Lines in the guessinggame.sh file:" >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
