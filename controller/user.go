package controller

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"github.com/mrtomyum/sys/model"
)

func UserIndex(c *gin.Context){
	var u model.User
	users, err := u.All(sysDB)
	if err != nil {
		c.HTML(http.StatusOK, "error.tpl", gin.H{"message": err.Error()})
	}
	c.HTML(http.StatusOK, "index.tpl", users)
}

func FindReportByUserID(c *gin.Context){

}