package controller

import "github.com/jmoiron/sqlx"

const (
	DB_HOST = "tcp(nava.work:3306)"
	//DB_NAME = "sys"
	DB_USER = "root"
	DB_PASS = "mypass"
)

var (
	sysDB *sqlx.DB
	reportDB *sqlx.DB
)

func InitDB(dsn string) *sqlx.DB{
	db := sqlx.MustConnect("mysql", dsn)
	return db
}

func init() {
	var report = DB_USER + ":" + DB_PASS + "@" + DB_HOST + "/" + "report" + "?parseTime=true"
	var sys = DB_USER + ":" + DB_PASS + "@" + DB_HOST + "/" + "sys" + "?parseTime=true"
	reportDB = InitDB(report)
	sysDB = InitDB(sys)
}