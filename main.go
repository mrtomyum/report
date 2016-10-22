package main

import (
	"github.com/gin-gonic/gin"
	"github.com/jmoiron/sqlx"
	_ "github.com/go-sql-driver/mysql"
)

const (
	DB_HOST = "tcp(nava.work:3306)"
	DB_NAME = "sample"
	DB_USER = "root"
	DB_PASS = "mypass"
)

var DB *sqlx.DB

func Home(c *gin.Context){

	c.HTML(200,"index.tmpl", gin.H{
		"title":"This is Home Page",
		"id":"1",
		"name":"tom",
	})
	//c.JSON(200, gin.H{"name":"This is Home Page"})
}

func main() {
	var dsn = DB_USER + ":" + DB_PASS + "@" + DB_HOST + "/" + DB_NAME + "?parseTime=true"
	DB = sqlx.MustConnect("mysql", dsn)

	r := gin.Default()
	r.LoadHTMLGlob("template/*")
	r.GET("/", Home)

	r.Run(":8080")
}

