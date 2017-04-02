<?php
include 'DbOperation.php';

class Main_Model
{
    private $db_obj;
    public function __construct()
    {
        $this->db_obj = new Main_DbOperation();
    }
    public  function registration_patient($userdata)
    {
      $query = "INSERT INTO `user_as_patient`(`full_name`, `father_name`, `age`, `gender`, `address`, `city`, `mobile_number`, `email_id`,`firebase_id`)
      VALUES ('$userdata[0]','$userdata[1]','$userdata[2]','$userdata[3]','$userdata[4]','$userdata[5]','$userdata[6]','$userdata[7]','$userdata[9]')";

      $this->db_obj->insert($query);
    }
    public function registration_hospital($userdata)
    {
        $query = "INSERT INTO `user_as_hopital`(`full_name`, `user_name`, `password`, `department`, `address`, `city`, `contact_number`, `email_id`, `website_url`)
        VALUES ('$userdata[0]','$userdata[1]','$userdata[2]','$userdata[3]','$userdata[4]','$userdata[5]','$userdata[6]','$userdata[7]','$userdata[8]')";
        $this->db_obj->insert($query);

    }
    public function login_doctor($userdata)
    {
    
      $query = "SELECT * FROM `user_as_hospital_dr` WHERE `email_id`= '$userdata[0]' and `password` = '$userdata[1]'";

              return $this->db_obj->fetch_rows($query);

    }
    public function login_hospital($userdata)
    {

        $query = "SELECT * FROM `user_as_hopital` WHERE `user_name`= '$userdata[0]' and `password` = '$userdata[1]'";

        return $this->db_obj->fetch_rows($query);

    }
    public function registration_doctor($userdata)
    {
        $query = "INSERT INTO `user_as_hospital_dr`(`dr_name`, `password`, `mobile_no`, `email_id`, `education`, `department`, `position`, `specialist`, `brief_description`, `experience`, `address`, `city`, `photo`,`fees`,`hospital_name`)
        VALUES ('$userdata[0]','$userdata[1]','$userdata[2]','$userdata[3]','$userdata[4]','$userdata[5]','$userdata[6]','$userdata[7]',
        '$userdata[8]','$userdata[9]','$userdata[10]','$userdata[11]','$userdata[12]','$userdata[13]','$userdata[14]')";

        $this->db_obj->insert($query);
    }
    public function book_appointment($userdata)
    {
//    	$data = array();
        $query = "INSERT INTO `user_as_appointment`(`token_no`, `full_name`, `mobile_no`, `dr_name`, `hospital_name`, `fees`,`appoint_time`,`system_time`)
        VALUES ('$userdata[0]','$userdata[1]','$userdata[2]','$userdata[3]','$userdata[4]','$userdata[5]','$userdata[6]','$userdata[7]')";
//	echo $query;exit;
        $this->db_obj->insert($query);
        $query = "SELECT `firebase_id` FROM `user_as_patient` WHERE `mobile_number` = '$userdata[2]'";
        $data [0] = $this->db_obj->fetch_row2($query);
        $query = "SELECT `token_no` FROM `user_as_appointment` WHERE `mobile_no` = '$userdata[2]' ";
        $data [1] = $this->db_obj->fetch_row2($query);		
	$query = "SELECT `dr_name` FROM `user_as_appointment` WHERE `mobile_no`  = '$userdata[2]'";
        $data [2] = $this->db_obj->fetch_row2($query);		
	$query = "SELECT `appoint_time` FROM `user_as_appointment` WHERE `mobile_no` = '$userdata[2]'";
        $data [3] = $this->db_obj->fetch_row2($query);		
	$query = "SELECT `hospital_name` FROM `user_as_appointment` WHERE `mobile_no` = '$userdata[2]'";
        $data [4] = $this->db_obj->fetch_row2($query);		
	return $data;

    }
    public function check_mobile_number($mobile_number)
    {
        $query = "SELECT * FROM `user_as_patient` WHERE `mobile_number` = '$mobile_number' ";
        return $this->db_obj->fetch_rows($query);

    }
    public function patient_details($mobile_number)
    {
        $query = "SELECT * FROM `user_as_patient` WHERE `mobile_number` = '$mobile_number'";
        return $this->db_obj->fetch_rows($query);
    }
    public function doctor_list()
    {
        $query = "SELECT * FROM `user_as_hospital_dr` ";

        return $this->db_obj->fetch_rows($query);
    }
    public function delete_dr($number)
    {
        $query = "DELETE FROM `user_as_hospital_dr` WHERE `mobile_no`= '$number'";
        $this->db_obj->insert($query);
    }
    public function doctor_details($email_id)
    {
        $query = "SELECT * FROM `user_as_hospital_dr` WHERE `email_id` = '$email_id' ";
        return $this->db_obj->fetch_rows($query);
    }
    public function doctors_search($department)
    {
        $query = "SELECT  `dr_name`, `hospital_name`, `mobile_no`, `email_id`, `department`, `position`, `specialist`, `brief_description`, `experience`, `address`, `city`, `photo`, `fees`, `longitude`, `latitude` FROM `user_as_hospital_dr` WHERE `department` = '$department' ";
        return $this->db_obj->fetch_rows($query);
    }
    public function hospital_details($user_name)
    {
        $query = "SELECT * FROM `user_as_hopital` WHERE `user_name` = '$user_name' ";
        return $this->db_obj->fetch_rows($query);
    }
    public function patient_history($mobile_number)
    {
        $query = "SELECT `id`, `token_no`, `full_name`, `time_date`, `dr_name`, `hospital_name`, `fees`, `appoint_time` FROM `user_as_appointment`  WHERE `mobile_no` = '$mobile_number' ";
        return $this->db_obj->fetch_rows($query);
    }
    public function patient_analysis($token_no)
    {
        $query = "SELECT * FROM `user_as_appointment` WHERE `token_no` = '$token_no'";
        return $this->db_obj->fetch_rows($query);
    }
    public function patient_list($date)
    {
        $query = "SELECT * FROM `user_as_appointment` WHERE `time_date` = '$date'";

        return $this->db_obj->fetch_rows($query);
    }
    public function check_user($userdata)
    {
        $query = "SELECT `firebase_id` FROM `user_as_patient` WHERE `mobile_number` = '$userdata[0]'";
	$check = $this->db_obj->fetch_row($query);
	if(empty($check))	
        return $this->db_obj->fetch_row($query);
        else
        $query = "UPDATE `user_as_patient` SET `firebase_id`='$userdata[1]' WHERE `mobile_number` = '$userdata[0]'";
        $this->db_obj->insert($query);
        return "success";

    }
    public function delete_number($number)
    {
    		$query = "DELETE FROM `user_as_patient` WHERE `mobile_number`= '$number'";
    		        $this->db_obj->insert($query);

    
    }
}

?>