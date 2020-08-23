package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/_healthz", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(writer, "okei")
	})

	if err := http.ListenAndServe("0.0.0.0:8080", nil); err!= nil {
		log.Fatal(err)
	}
}
