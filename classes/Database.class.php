<?php
class Database
{

    private $pdo;

    function __construct()
    {
        $this->pdo = new PDO(
            'mysql:host=localhost;
  dbname=works_portfolio;
  charset=UTF8',
            'root',
            ''
        );
    }

    public function executeSql($sql, array $values = [])
    {
        $this->pdo->exec('SET NAMES UTF8');
        $query = $this->pdo->prepare($sql);

        $query->execute($values);
    }

    public function query($sql, array $values = [])
    {
        $this->pdo->exec('SET NAMES UTF8');

        $query = $this->pdo->prepare($sql);

        $query->execute($values);

        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function queryOne($sql, array $values = [])
    {
        $this->pdo->exec('SET NAMES UTF8');

        $query = $this->pdo->prepare($sql);

        $query->execute($values);

        return $query->fetch(PDO::FETCH_ASSOC);
    }
}
