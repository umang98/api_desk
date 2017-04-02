<?php
error_reporting(0);
include 'Model.php';
class Main_controller
{
    private $userdata =array();
    private $model_obj;
    public function __construct($par)
    {
        if (!preg_match("/^[a-zA-Z ]*$/",$par)) {
            $this->model_obj = new Main_Model();
            $this->$par();
        }
        else
        {
            echo json_encode("error");
        }
    }
    private function registration_patient()
    {

        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0] = $_POST['full_name'];
            $this->userdata[1] = $_POST['father_name'];
            $this->userdata[2] = $_POST['dob'];
            $this->userdata[3] = $_POST['gender'];
            $this->userdata[4] = $_POST['address'];
            $this->userdata[6] = $_POST['mobile_number'];
            $this->userdata[8] = $this->check_mobile_number($this->userdata[6]);
            if(!empty($this->userdata[8]))
            {
                echo json_encode("number already register");
            }
            else
            {
                $this->userdata[7] = $_POST['uid'];
                $this->userdata[9] = $_POST['firebase_id'];
                $this->model_obj->registration_patient($this->userdata);
                echo json_encode("success");

            }

        }

    }

    private function base_camp()
    {

        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0] = $_POST['longitude'];
            $this->userdata[1] = $_POST['latitude'];
            $gpsdata = $this->model_obj->base_camp();

            $size = sizeof($gpsdata);
            for($a=0;$a<=$size;$a++)
            {

                $distance =  $this->haversineGreatCircleDistance($this->userdata[1],$this->userdata[0],$gpsdata[$a]["latitude"],$gpsdata[$a]["longitude"]);
                $dist = $distance/1000;
                $final = array();
                if($dist<=10)
                    $final[$a]["base camp name"] = $gpsdata[$a]["base_camp_name"];
                    $final[$a]["distance"]= $gpsdata[$a]["distance"];
            }

        }
    }
    private function haversineGreatCircleDistance(
        $latitudeFrom, $longitudeFrom, $latitudeTo, $longitudeTo, $earthRadius = 6371000)
    {
        $latFrom = deg2rad($latitudeFrom);
        $lonFrom = deg2rad($longitudeFrom);
        $latTo = deg2rad($latitudeTo);
        $lonTo = deg2rad($longitudeTo);

        $latDelta = $latTo - $latFrom;
        $lonDelta = $lonTo - $lonFrom;

        $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
                cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));
        return $angle * $earthRadius;
    }

    private function check_mobile_no()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {               $no = $_POST['mobile_number'];
            $userdata = $this->model_obj->check_mobile_number($no);
            if(!empty($userdata))
            {
                echo json_encode("success");
            }
            else
            {
                echo json_encode("failure");
            }

        }
        else
        {
            echo json_encode("error");

        }
    }

    private function check_mobile_number($mobile_number)
    {

        return $this->model_obj->check_mobile_number($mobile_number);

    }
    private function generate_username_password($length)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;


    }
    private function registration_hospital()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0] = $_POST['full_name'];
            $this->userdata[1] = $this->generate_username_password(6);
            $this->userdata[2] = $this->generate_username_password(10);
            $this->userdata[3] = $_POST['department'];
            $this->userdata[4] = $_POST['address'];
            $this->userdata[5] = $_POST['city'];
            $this->userdata[6] = $_POST['contact_number'];
            $this->userdata[7] = $_POST['email_id'];
            $this->userdata[8] = $_POST['website_url'];
            $this->model_obj->registration_hospital($this->userdata);
            echo json_encode("success");

        }

    }

    private function registration_doctor()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0]= $_POST['doctor_name'];
            $this->userdata[1]= $this->generate_password();
            $this->userdata[2]= $_POST['mobile_number'];
            $this->userdata[3]= $_POST['email_id'];
            $this->userdata[4]= $_POST['education'];
            $this->userdata[5]= $_POST['department'];
            $this->userdata[6]= $_POST['position'];
            $this->userdata[7]= $_POST['specialist'];
            $this->userdata[8]= $_POST['brief_description'];
            $this->userdata[9]= $_POST['experience'];
            $this->userdata[10]= $_POST['address'];
            $this->userdata[11]= $_POST['city'];
            $this->userdata[12]= $_POST['photo'];
            $this->userdata[13]= $_POST['fees'];
            $this->userdata[14]= $_POST['hospital_name'];
            $this->model_obj->registration_doctor($this->userdata);
            echo json_encode("success");


        }
    }
    private function login_doctor()
    {

        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0]= $_POST['email_id'];
            $this->userdata[1]= $_POST['password'];
            echo json_encode($this->model_obj->login_doctor($this->userdata));


        }

    }
    private function book_appointment()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0]= mt_rand();
            $this->userdata[1]= $_POST['full_name'];
            $this->userdata[2]= $_POST['mobile_number'];
            $this->userdata[3]= $_POST['doctor_name'];
            $this->userdata[4]= $_POST['hospital_name'];
            $this->userdata[5]= $_POST['fees'];
            $this->userdata[6]= $_POST['appoint_time'];
            $this->userdata[7] = $_POST['system_time'];
            $book_appoint = $this->model_obj->book_appointment($this->userdata);
            $a = array("firebase_id"=>$book_appoint[0]['firebase_id'],"token_no"=>$book_appoint[1]['token_no'],"dr_name"=>$book_appoint[2]['dr_name'],"appoint_time"=>$book_appoint[3]['appoint_time']);
            echo json_encode($a);

        }

    }
    private function doctors_search()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {

            $this->userdata= $_POST['department'];
            $department = $this->model_obj->doctors_search($this->userdata)  ;
            $size = sizeof($department);
            //echo $size;exit;
            for($a=0;$a<$size;$a++)
            {
                $c[$a] =$department[$a];
            }
            $result['result']= $c;
            echo json_encode($result);
        }
    }
    private function patient_prescription()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0]= $_POST['disease'];
            $this->userdata[0]= $_POST['medicine_name'];
            $this->model_obj->patient_prescription($this->userdata);

        }
    }

    private function delete_number()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata= $_POST['pt_mobile_number'];
            $this->model_obj->delete_number($this->userdata);
            header('location:../testing.php');

        }
    }
    private function slip_number()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            $this->userdata[0]= $_POST['mobile_number'];
            $this->userdata[1] = $_POST['system_time'];
            echo  json_encode($this->model_obj->slip_number($this->userdata));

        }
    }
    private function check_user()
    {

        if($_SERVER['REQUEST_METHOD']=="POST")
        {

            $this->userdata[0]= $_POST['pt_mobile_number'];
            $this->userdata[1] = $_POST['firebase_id'];
            $dataapp = $this->model_obj->check_user($this->userdata);
            if(empty($dataapp))
                echo json_encode("failure");
            else
                echo json_encode($this->model_obj->check_user($this->userdata));

        }
    }
    private function api_get_requests()
    {

        if($_SERVER['REQUEST_METHOD']=="POST")

        {

            switch(true)
            {

                case (isset($_POST['pt_mobile_number'])):
                    echo json_encode($this->model_obj->patient_details($_POST['pt_mobile_number']));
                    break;
                case isset($_POST['email_id']):
                    echo json_encode($this->model_obj->doctor_details($_POST['email_id']));
                    break;
                case isset($_POST['user_name']):
                    echo json_encode($this->model_obj->hospital_details($_POST['user_name']));
                    break;
                case isset($_POST['mobile_number']):
                    $c['result'] = $this->model_obj->patient_history($_POST['mobile_number']);
                    echo json_encode($c);
                    break;
                case isset($_POST['token_no']):
                    echo json_encode($this->model_obj->patient_analysis($_POST['token_no']));
                    break;
                case isset($_POST['date']):
                    echo json_encode($this->model_obj->patient_list($_POST['date']));
                    break;
                default: echo json_encode("false from api_requests");
                break;

            }
        }
    }
}

class Reference_Controller
{
    public function create_uri($par)
    {
        switch($par)
        {
            case 'rp':
                $obj = new Main_controller('registration_patient');
                break;
            case 'rh':
                $obj = new Main_controller('registration_hospital');
                break;
            case 'ba':
                $obj = new Main_controller('book_appointment');
                break;
            case 'rd':
                $obj = new Main_controller('registration_doctor');
                break;
            case 'ds':
                $obj = new Main_controller('doctors_search');
                break;
            case 'pp':
                $obj = new Main_controller('patient_prescription');
                break;
            case 'agr':
                $obj = new Main_controller('api_get_requests');
                break;
            case 'del':
                $obj = new Main_controller('delete_number');
                break;
            case 'chmn':
                $obj = new Main_controller('check_mobile_no');
                break;
            case 'ld':
                $obj = new Main_controller('login_doctor');
                break;
            case 'sn':
                $obj = new Main_controller('slip_number');
                break;
            case 'cu':
                $obj = new Main_controller('check_user');
                break;
            case 'bc':
                $obj = new Main_controller('base_camp');
                break;
            default:
                echo json_encode("false from create_uri");

        }

    }


}

?>