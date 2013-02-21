<?php

class Model_users extends CI_Model {
    public function can_log_in(){
        $emaiil=  $this->input->post('email');
        $password= md5($this->input->post('password'));
        
      // $emaiil= $this->db->where('email', $this->input->post('email'));
      // $password= $this->db->where('password', md5($this->input->post('password')));
        
        $query = "select id from users where email=? and password=?";
        $result=$this->db->query($query,array($emaiil,$password));
        
        if($result->num_rows() == 1){
            return true;
        } else {
            return false;
        }
        
    }
    
        public function add_temp_user(){
        $data = array(
            'username' => $this->input->post('username'),
            'gender' => $this->input->post('gender'),
            'country' => $this->input->post('country'),
            'email' => $this->input->post('email'),
            'password' => md5($this->input->post('password'))
        );
        $query = $this->db->insert('users', $data);
        if($query){
            return true;
        } else {
            return false;
        }
    }
}

?>