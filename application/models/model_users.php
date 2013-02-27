<?php

class Model_users extends CI_Model {
    
    //////////////////////////////////////////////
    
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
    
    /////////////////////////////////////////////
    
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
    
    ////////////////////////////////////////////////
    
    public function add_temp_emplyee(){
         $phonenum = $this->input->post('mobile') . $this->input->post('phone') ;
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'email' => $this->input->post('email'),
            'password' => md5($this->input->post('password')),
            'confirmid' => md5($this->input->post('confirmation')),
            'phone' => $phonenum,
            'website' => $this->input->post('website'),
            'address' => $this->input->post('address'),
            'location' => $this->input->post('location'),
            'country' => $this->input->post('country'),
            'birthday' => $this->input->post('birthday'),
            'about' => $this->input->post('about'),
            
        );
        $query = $this->db->insert('employees', $data);
        if($query){
            return true;
        } else {
            return false;
        }
    }
    
    ///////////////////////////////////////////////
    
    public function add_temp_company(){
        $phonenum = $this->input->post('mobile') . $this->input->post('phone') ;
        $data = array(
            'name' => $this->input->post('name'),
            'field' => $this->input->post('field'),
            'email' => $this->input->post('email'),
            'phone' => $phonenum,
            'confirmid' => md5($this->input->post('confirmation')),
            'website' => $this->input->post('website'),
            'address' => $this->input->post('address'),
            'location' => $this->input->post('location'),
            'country' => $this->input->post('country'),
            'founded' => $this->input->post('found'),
            'overview' => $this->input->post('overview'),
            'mission' => $this->input->post('mission')
            
        );
        $query = $this->db->insert('company', $data);
        if($query){
            return true;
        } else {
            return false;
        }
    }
}

?>