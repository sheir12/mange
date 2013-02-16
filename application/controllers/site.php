<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Site extends CI_Controller {
	
	public function index()
	{
		$this->load->view('index');
	}

	public function login()
	{
		$this->load->view('index_login');
	}
	////////////////////////////////
	public function buttons()
	{
		$this->load->view('buttons');
	}
	////////////////////////////////
	public function load_404()
	{
		$this->load->view('404');
	}
	////////////////////////////////
	public function activities()
	{
		$this->load->view('activities');
	}
	////////////////////////////////
	public function calendar()
	{
		$this->load->view('calendar');
	}
	////////////////////////////////
	public function charts()
	{
		$this->load->view('charts');
	}
	////////////////////////////////
	public function chat()
	{
		$this->load->view('chat');
	}
	////////////////////////////////
	public function dashboard()
	{
		$this->load->view('dashboard');
	}
	////////////////////////////////
	public function edit_photo()
	{
		$this->load->view('edit_photo');
	}
	////////////////////////////////
	public function editor()
	{
		$this->load->view('editor');
	}
	////////////////////////////////
	public function elements()
	{
		$this->load->view('elements');
	}
	////////////////////////////////
	public function form()
	{
		$this->load->view('form');
	}
	////////////////////////////////
	public function grid()
	{
		$this->load->view('grid');
	}
	////////////////////////////////
	public function media()
	{
		$this->load->view('media');
	}
	////////////////////////////////
	public function messages()
	{
		$this->load->view('messages');
	}
	////////////////////////////////
	public function tabledata()
	{
		$this->load->view('tabledata');
	}
	////////////////////////////////
	public function tables()
	{
		$this->load->view('tables');
	}
	////////////////////////////////
	public function widgets()
	{
		$this->load->view('widgets');
	}
	////////////////////////////////
	public function wizard()
	{
		$this->load->view('wizard');
	}
	
	////////////////////////////////
	public function user()
	{
		$this->load->view('user_regist');
	}
	////////////////////////////////
	public function employee()
	{
		$this->load->view('emp_regist');
	}
	////////////////////////////////
	public function job()
	{
		$this->load->view('jobs');
	}
	///////////////////////////////
	function meetings(){
		$this->load->view('meetings');
		}
	
	
	
	
	
	
	
	
	
	
	
}
