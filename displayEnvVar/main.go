package main

import (
	"fmt"
	"net/http"
	"os"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello. You set \"%s\"", os.Getenv("DISPVAR"))
}

func main() {
	http.HandleFunc("/dispvar", handler)
	http.Handle("/static/", http.FileServer(http.Dir("./")))
	http.ListenAndServe(":8080", nil)
}
