package main

import (
	"flag"
	"fmt"
	"os"
	"time"
)

var durationStr = flag.String("d", "", "Duration string to parse (e.g., 2h45m, 3d2h, etc.)")

func main() {

	flag.Parse()

	// Check if the duration string is provided
	if *durationStr == "" {
		fmt.Fprintln(os.Stderr, "Error: duration string is required")
		flag.Usage()
		os.Exit(1)
	}

	// Parse the duration string
	duration, err := time.ParseDuration(*durationStr)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error parsing duration string: %v\n", err)
		os.Exit(1)
	}

	// Print the parsed duration in a standardized format
	fmt.Println(duration.Milliseconds())
}
