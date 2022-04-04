<?php
    class Pages extends Controller{

        public function __construct()
        {   
            $this->menuModel = $this->model('MenuItems');
        }

        public function index()
        {
            $menus = $this->menuModel->getAllMenuItems();
            $content = $this->contentModel->getBio();

            $this->view('index', [$menus, $content]);
        }
        
        .....................
    }
?>