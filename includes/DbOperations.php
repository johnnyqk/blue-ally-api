<?php 

    class DbOperations{
        //the database connection variable
        private $con; 
        function __construct(){
            require_once dirname(__FILE__) . '/DbConnect.php';
            $db = new DbConnect; 
            $this->con = $db->connect(); 
        }

        /*
           Get all subnets from database
        */
        public function getAllSubnets(){
            $stmt = $this->con->prepare("SELECT `cidr`, subnet, ips FROM subnets");
            $stmt->execute(); 
            $stmt->bind_result($cidr, $subnet, $ips);
            $subnets = array(); 
            while($stmt->fetch()){ 
                $ip = array(); 
                $ip['cidr'] = $cidr; 
                $ip['subnet'] = $subnet;
                $ip['ips'] = json_decode($ips); 
                array_push($subnets, $ip);
            }             
            return $subnets; 
        }

        /*
            Get ips from database by cidr
        */
        public function getSubnetByCidr($cidr){
            $stmt = $this->con->prepare("SELECT id, `cidr`, ip, address_tag FROM subnets_ips WHERE `cidr` = '$cidr'");
            $stmt->execute(); 
            $stmt->bind_result($id, $cidr, $ips, $address_tag);
             
            $sub = array();  
            while($stmt->fetch()) {
                $ip = array();
                $ip['id'] = $id;
                $ip['cidr'] = $cidr;
                $ip['ips'] = $ips;
                $ip['address_tag'] = $address_tag;
                array_push($sub, $ip);
            }
            return $sub; 
        }

        /*
            Get ip details by id
        */
        public function getSubnetDetail($id){
            $stmt = $this->con->prepare("
            SELECT s.subnet, i.ip, i.address_tag 
            FROM subnets s LEFT JOIN
            subnets_ips i
            ON s.cidr = i.cidr
            WHERE i.id = '$id'");
            $stmt->execute(); 
            $stmt->bind_result($ip, $subnet, $address_tag);
             
            $sub = array();  
            while($stmt->fetch()) {
                $detail = array();
                $detail['ip'] = $ip;
                $detail['subnet'] = $subnet;
                $detail['address_tag'] = $address_tag;
                array_push($sub, $detail);
            }
            return $sub; 
        }
    }       