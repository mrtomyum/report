package controller

import (
	"github.com/gin-gonic/gin"
)

func Router(r *gin.Engine) *gin.Engine{
	r.GET("/", Home)
	user := r.Group("/user")
	{
		user.GET("/", UserIndex)
		user.GET("/:id", FindReportByUserID)
	}
	return r
}

