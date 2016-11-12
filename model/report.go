package model

import (
	"github.com/jmoiron/sqlx"
	sys "github.com/mrtomyum/sys/model"
)

type Report struct {
	sys.Base
	NameTh string `json:"name_th" db:"name_th"`
	NameEn string `json:"name_en" db:"name_en"`
	Url string
	GroupId int `json:"group_id" db:"group_id"`
}


type Group struct {
	sys.Base
	Name string
}

func (r *Report) Insert(db *sqlx.DB) error {
	sql := `INSERT INTO report VALUES(name_th, name_en, url, group_id)`
	res, err := db.Exec(sql,
		r.NameTh,
		r.NameEn,
		r.Url,
		r.GroupId,
	)
	if err != nil {
		return err
	}
	id, _ := res.LastInsertId()
	r.Id = uint64(id)
	return nil
}

func (r *Report) GetAll(db *sqlx.DB) ([]*Report, error) {
	sql := `SELECT * FROM report WHERE deleted IS null`
	//sql := `SELECT * FROM report`
	var reports []*Report
	err := db.Select(&reports, sql)
	if err != nil {
		return nil, err
	}
	return reports, nil
}

func (r *Report) FindByName(db *sqlx.DB, searchString string) ([]*Report, error) {
	sql := `SELECT * FROM report WHERE name LIKE '%?%'`
	var reports []*Report
	err := db.Select(&reports, sql, searchString)
	if err != nil {
		return nil, err
	}
	return reports, nil
}