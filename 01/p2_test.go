package main

import "testing"

func Test_part2(t *testing.T) {
	testInput := `3   4
4   3
2   5
1   3
3   9
3   3`
	expectedOutput := 31
	if got := part2(testInput); got != expectedOutput {
		t.Errorf("part2() = %v, want %v", got, expectedOutput)
	}

}
