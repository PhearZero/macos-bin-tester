package main

import "testing"

func Test_View(t *testing.T) {
	render := view()

	if render == "" {
		t.Error("View is empty")
	}
}
