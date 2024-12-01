package main

import "testing"

func Test_part1(t *testing.T) {
	testInput := `3   4
4   3
2   5
1   3
3   9
3   3`
	expectedOutput := 11
	if got := part1(testInput); got != expectedOutput {
		t.Errorf("part1() = %v, want %v", got, expectedOutput)
	}
}