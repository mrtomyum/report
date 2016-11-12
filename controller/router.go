package controller

import (
	"github.com/gin-gonic/gin"
)

func Router(r *gin.Engine) *gin.Engine{
	r.GET("/", ReportIndex)
	user := r.Group("/user")
	{
		user.GET("/", UserIndex)
		user.GET("/:id", UserFindByName)
	}
	return r
}

