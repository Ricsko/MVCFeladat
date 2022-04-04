<?php
    class Content
    {
        private $db;

        public function __construct()
        {
            $this->db = new Database;
        }

        // GET content
        public function getContent($title)
        {
            return $this->db->query("..............................................");
        }
    
    }
?>