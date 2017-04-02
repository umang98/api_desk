<form action="v1/registration_patient" method="post">

    Full name : <input type="text" name="full_name"><br>
    Father name : <input type="text" name="father_name"><br>
    Age : <input type="text" name="age"><br>
    Gender : <input type="text" name="gender"><br>
    Address : <input type="text" name="address"><br>
    Mobile Number : <input type="text" name="mobile_number"><br>
    Emailid : <input type="text" name="email_id"><br>
        firebase_id : <input type="text" name="firebase_id"><br>
    <input type="submit">


</form>

<h3> to delete your input number</h3>
<form action="v1/delete" method="post">
    mobile number : <input type="text" name="pt_mobile_number"><br>
    <input type="submit">


    </form>
    
    <h3> check user</h3>
<form action="v1/check_user" method="post">
    mobile number : <input type="text" name="pt_mobile_number"><br>
    firebase id : <input type="text" name="firebase_id"><br>

    <input type="submit">
    


    </form>
    

<h3> check mobile number exists or not</h3>
<form action="v1/check_mobile_number" method="post">
    mobile number : <input type="text" name="mobile_number"><br>
    <input type="submit">



    </form>
    
    <h3> get user data based on mobile number</h3>
<form action="v1/api_get_requests" method="post">
    mobile number : <input type="text" name="pt_mobile_number"><br>
    <input type="submit">


    </form>

<h3> book appointment book</h3>
<form action="v1/book_appointment" method="post">
    Full_name : <input type="text" name="full_name"><br>
    Mobile Number : <input type="text" name="mobile_number"><br>
    Doctor_name : <input type="text" name="doctor_name"><br>
    hospital_name : <input type="text" name="hospital_name"><br>
    Appiont Time : <input type="text" name="appoint_time"><br>
    Fees : <input type="text" name="fees"><br>
    System Time : <input type="text" name="system_time"><br>



    <input type="submit">


</form>
<h3> doctors search</h3>
<form action="v1/doctors_search" method="post">
<select name="department">
  <option value="Ophthalmologist">Ophthalmologist</option>
  <option value="Cardiologist">Cardiologist</option>
  <option value="Psychiatrist">Psychiatrist</option>
</select>    <input type="submit">


    </form>
<h3> patient history</h3>
<form action="v1/api_get_requests" method="post">
    mobile number : <input type="text" name="mobile_number"><br>
    <input type="submit">


    </form>
    <h3> dcotor login</h3>

    <form action="v1/login_doctor" method="post">
    mobile number : <input type="text" name="email_id"><br>
        mobile number : <input type="text" name="password"><br>
    <input type="submit">


    </form>
    
    <h3> slip number </h3>
<form action="v1/slip_number" method="post">
    mobile number : <input type="text" name="mobile_number"><br>
       system_time : <input type="text" name="system_time"><br>

    <input type="submit">


    </form>
    
    
<?php




?>