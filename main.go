package main

import (
	_ "github.com/go-sql-driver/mysql"
	c "github.com/mrtomyum/report/controller"
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.LoadHTMLGlob("template/**/*")
	app := c.Router(r)
	app.Run(":8080")
}

