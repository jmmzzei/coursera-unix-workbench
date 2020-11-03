all:
	touch README.md
	echo "# GUESSING GAME" > README.md
	echo -n "### Date and Time: ">> README.md 
	date >> README.md
	echo -n "### Number of lines: ">> README.md 
	cat guessinggame.sh | wc -l >> README.md