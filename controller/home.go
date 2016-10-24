package controller

import "github.com/gin-gonic/gin"

func Home(c *gin.Context) {

	c.HTML(200, "home/index.tpl", gin.H{
		"title": "This is Home Page",
		"id":    "1",
		"name":  "tom",
	})
}
