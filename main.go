package main

import (
	"fmt"
	"github.com/caarlos0/env"
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

	fmt.Printf("port = %v\n", environment.Port)
	e := echo.New()
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	})

	e.Logger.Fatal(e.Start(fmt.Sprintf(":%d", environment.Port)))
}
