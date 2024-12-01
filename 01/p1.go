package main

import (
	"math"
	"slices"
	"strconv"
	"strings"
)

func part1(input string) int {
	lines := strings.Split(input, "\n")
	c1 := make([]int, len(lines))
	c2 := make([]int, len(lines))

	for i, line := range lines {
		// lineNums[i] = line
		fields := strings.Fields(line)
		c1[i], _ = strconv.Atoi(fields[0])
		c2[i], _ = strconv.Atoi(fields[1])
	}
	slices.Sort(c1)
	slices.Sort(c2)

	diff := float64(0)
	for i, c := range c1 {
		diff += math.Abs(float64(c2[i]) - float64(c))
	}
	return int(diff)
}
