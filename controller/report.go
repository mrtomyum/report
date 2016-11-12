package controller

import (
	"github.com/gin-gonic/gin"
	"github.com/mrtomyum/report/model"
	"net/http"
)

func ReportIndex(c *gin.Context) {
	var r model.Report
	reports, err := r.GetAll(reportDB)
	if err != nil {
		c.HTML(http.StatusBadRequest, "report/error.tpl", err.Error())
	} else {
		c.HTML(200, "report/index.tpl", reports)
}
}



