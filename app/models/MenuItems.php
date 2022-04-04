<?php
    class MenuItems
    {
        private $db;

        public function __construct()
        {
            $this->db = new Database;
        }

        // GET ALL menuItems
        public function getAllMenuItems()
        {
            return $this->db->query("...................................");
        }

       
    }
?>