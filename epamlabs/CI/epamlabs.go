package main

import (
	"net/http"
	"os"
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("<h1> Welcome EPAM Labs - Devops</h1>"))
}

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8181"
	}

	mux := http.NewServeMux()

	mux.HandleFunc("/", indexHandler)
	http.ListenAndServe(":"+port, mux)
}
