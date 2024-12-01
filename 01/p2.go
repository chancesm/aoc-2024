package main

import (
	"strconv"
	"strings"
)

func part2(input string) int {
	lines := strings.Split(input, "\n")
	c1 := make([]int, len(lines))
	c2 := make(map[int]int)

	for i, line := range lines {
		// lineNums[i] = line
		fields := strings.Fields(line)
		c1[i], _ = strconv.Atoi(fields[0])
		c2val, _ := strconv.Atoi(fields[1])
		c2[c2val] = c2[c2val] + 1
	}
	score := 0
	for _, c := range c1 {
		score += (c2[c] * c)
	}
	return score
}
