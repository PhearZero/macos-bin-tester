package main

import (
	"fmt"
	"runtime"
)

func view() string {
	render := fmt.Sprintln("Operating System:", runtime.GOOS)
	render += fmt.Sprintln("Architecture:", runtime.GOARCH)
	render += fmt.Sprintln("Number of CPUs:", runtime.NumCPU())
	render += fmt.Sprintln("Compiler:", runtime.Compiler)
	render += fmt.Sprintln("Version:", runtime.Version())
	render += fmt.Sprintln("GOROOT:", runtime.GOROOT())
	return render
}

func main() {
	fmt.Print(view())
}
