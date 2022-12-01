{
    sum = sum + $1
    if (NF == 0) {
	if (DEBUG) { print sum }
	if (sum>most_calories) {
	    most_calories=sum
	}
        sum = 0
    }
}
END {
    print most_calories
}
