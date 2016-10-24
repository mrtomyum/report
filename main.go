package main

import (
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	c "github.com/mrtomyum/report/controller"
)

func main() {
	r := gin.Default()
	r.LoadHTMLGlob("template/**/*")
	app := c.Router(r)
	app.Run(":8080")
}
