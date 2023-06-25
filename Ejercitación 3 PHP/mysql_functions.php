<?php
/*
* Uso:
$query = "SELECT 'testrow' FROM 'table'";
$result = DB::getInstance()->query($query);
if($result->count() != 0){
    foreach($result->results() as $row){
        $testrow = $row->testrow;
    }
}
*/
function removeTrailingChar($input, $char){
	return rtrim($input, $char);
}
function removeTrailingSlash($input){
	return removeTrailingChar($input, '/');
}
function removeTrailingComma($input){
	return removeTrailingChar($input, ',');
}
class DB{
	private static $_instance = null;
	private $_pdo,
			$_query,
			$_error = false,
			$_results,
			$_lastid,
			$_count = 0;
	private function __construct(){
        try {
            $this->_pdo = new PDO('mysql:host=localhost;dbname=empresa;charset=utf8', "root", "root");
            $this->query("SET NAMES utf8;");
        } catch(PDOException $e){
            die($e->getMessage());  // Enable in case of error
        }
    }
	public static function getInstance(){
        if(!isset(self::$_instance)){
            self::$_instance = new DB();
        }
        return self::$_instance;
    }
	public function query($sql, $params = array()){
        $this->_error = false;
        if($this->_query = $this->_pdo->prepare($sql)){
            $x = 1;
            if(count($params)){
                foreach($params as $param){
                    $this->_query->bindValue($x, $param);
                    $x++;
                }
            }
            if($this->_query->execute()){
                $this->_results = $this->_query->fetchAll(PDO::FETCH_OBJ);
                $this->_count = $this->_query->rowCount();
                $this->_lastid = $this->_pdo->lastInsertId();
            } else {
                $this->_error = true;
                print_r($this->_query->errorInfo()); // Enable in case of error
            }
        }
        return $this;
    }
	public function update($table, $data){
        $params = '';
        $values = '';
        $updEqual = '';
        $valuesArr = array();
	    foreach ($data as $key => $value) {
            $params .= $key.',';
            $values .= '?,';
            $updEqual .= $key.'=VALUES('.$key.'),';
            array_push($valuesArr, $value);
        }
	    $params = removeTrailingComma($params);
        $values = removeTrailingComma($values);
        $updEqual = removeTrailingComma($updEqual);
        $query = "INSERT INTO ".$table." (".$params.") VALUES (".$values.") ON DUPLICATE KEY UPDATE ".$updEqual;
        $this->query($query, $valuesArr);
    }
	public function results(){
        return $this->_results;
    }
	public function lastInsertId(){
        return $this->_lastid;
    }
	public function error(){
        return $this->_error;
    }
	public function count(){
        return $this->_count;
    }
}
?>