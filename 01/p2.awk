BEGIN{
    calories[1]=0
    calories[2]=0
    calories[3]=0
}
{
    sum = sum + $1
    if (NF == 0) {
	calories[length(calories)+1]=sum
	asort(calories)
	delete calories[1]
	asort(calories)
	sum = 0
    }
}
END {
    sum = 0
    for (i in calories) {
	sum = sum + calories[i]
    }
    print sum
}
