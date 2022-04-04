<?php
    class Database
    {
        private $dbhost = DBHOST;
        private $dbname = DBNAME;
        private $dbuser = DBUSER;
        private $dbpass = DBPASS;

        private $connection;
        private $error;

        public function __construct()
        {
            $options = array(
                 PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                 PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC
            );
            try
            {
                $this->connection = new PDO('mysql:host='.$this->dbhost.';dbname='. $this->dbname, $this->dbuser, $this->dbpass, $options);
                $this->connection->exec("SET NAMES utf8");
            }
            catch(PDOException $e) 
            {
                $this->error = $e->getMessage();
                echo $this->error;
            }
        }

        public function execute($sql)
        {
            $this->connection->exec($sql);
        }

        public function query($sql)
        {
            return $this->connection->query($sql)->fetchAll();
        }
        
    }
?>