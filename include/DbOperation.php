<?php
class DbConnection{

    protected  $conn;
    protected  function __construct()
    {
        require_once 'Constants.php';
        $this->conn = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
        if(mysqli_connect_errno())
        {
            echo "Failed to connect ". mysqli_connect_error();
        }

    }

}

class Main_DbOperation extends DbConnection
{
    private $con,$row,$rows = array();
    function __construct()
    {
        $this->con = new DbConnection();
    }
    public function insert($query)
    {

        mysqli_query($this->con->conn,$query);

    }
    public function fetch_rows($query)
    {
        $row = mysqli_query($this->con->conn,$query);
        while($row1=mysqli_fetch_assoc($row))
        {
            $this->rows[] = $row1;
        }

        return $this->rows;
    }
    public function fetch_row($query)
    {
        $row = mysqli_query($this->con->conn,$query);
        while($row1=mysqli_fetch_assoc($row))
        {
            $this->row = $row1;
        }
        return $this->row;
    }
    public function fetch_row2($query)
    {
        $row = mysqli_query($this->con->conn,$query);
        while($row1=mysqli_fetch_assoc($row))
        {
            $this->row = $row1;
        }
        return $this->row;
    }

}

?>