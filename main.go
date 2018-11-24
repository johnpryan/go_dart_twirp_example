package main

import (
	"fmt"
	"github.com/caarlos0/env"
	"github.com/johnpryan/go_dart_twirp_example/internal/haberdasherserver"
	"github.com/johnpryan/go_dart_twirp_example/rpc/haberdasher"
	"github.com/labstack/echo"
	"net/http"
)

type Env struct {
	Port int `env:"PORT"`
}

func main() {
	environment := Env{}
	err := env.Parse(&environment)
	if err != nil {
		panic(err)
	}

	e := echo.New()
	e.GET("/api/hello", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	})

	server := &haberdasherserver.Server{}
	twirpHandler := haberdasher.NewHaberdasherServer(server, nil)

	mux := http.NewServeMux()
	mux.Handle(haberdasher.HaberdasherPathPrefix, twirpHandler)
	mux.Handle("/", e)

	fmt.Printf("Server running on port = %v\n", environment.Port)
	http.ListenAndServe(fmt.Sprintf(":%d", environment.Port), mux)
}
