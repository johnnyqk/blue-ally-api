<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require __DIR__ . '/../vendor/autoload.php';
require './includes/DbOperations.php';
$app = new \Slim\App([
    'settings'=>[
        'displayErrorDetails'=>true
    ]
]);

// Response all subnets
$app->get('/allsubnets', function(Request $request, Response $response){
    $db = new DbOperations; 
    $subnets = $db->getAllSubnets();
    $response_data = array();
    $response_data['error'] = false; 
    $response_data['subnets'] = $subnets; 
    $response->write(json_encode($response_data));
    return $response
    ->withHeader('Content-type', 'application/json')
    ->withStatus(200);  
});

// Respond all IPs by cidr
$app->get('/subnet/{cidr}', function(Request $request, Response $response, array $args){
    $cidr = $args['cidr'];
    $db = new DbOperations; 
    $subnet = $db->getSubnetByCidr($cidr);
    $response_data = array();
    $response_data['error'] = false; 
    $response_data['sub'] = $subnet; 
    $response->write(json_encode($response_data));
    return $response
    ->withHeader('Content-type', 'application/json')
    ->withStatus(200); 
} );

// Respond Subnet/IP details by ip id
$app->get('/subnetdetail/{id}', function(Request $request, Response $response, array $args){
    $id = $args['id'];
    $db = new DbOperations; 
    $subnet = $db->getSubnetDetail($id);
    $response_data = array();
    $response_data['error'] = false; 
    $response_data['sub'] = $subnet; 
    $response->write(json_encode($response_data));
    return $response
    ->withHeader('Content-type', 'application/json')
    ->withStatus(200); 
} );

$app->run();