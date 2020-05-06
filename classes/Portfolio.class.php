<?php
class Portfolio{

    public function getAllTechnos()
    {
        $database = new Database();
        $sql = 'SELECT *
                FROM techno';
        return $database->query($sql, []);
    }
    public function getAllTechnosLanguages()
    {
        $database = new Database();
        $sql = 'SELECT *
                FROM techno
                WHERE Type LIKE "%language%"';
        return $database->query($sql, []);
    }
    public function getAllLibFrame()
    {
        $database = new Database();
        $sql = 'SELECT *
                FROM techno
                WHERE Type LIKE "%frame%"';
        return $database->query($sql, []);
    }
    public function getAllWorks()
    {
        $database = new Database();
        $sql = 'SELECT *
                FROM works';
        return $database->query($sql, []);
    }
    public function getOneWork()
    {
        $database = new Database();
        $sql = 'SELECT *
                FROM works
                WHERE Id = 1';
        return $database->queryOne($sql, []);
    }
}