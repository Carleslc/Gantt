<?php

include ('../../codebase/connector/db_sqlite3.php');
include ('../../codebase/connector/gantt_connector.php');

// SQLite
$dbtype = "SQLite3";
$res = new SQLite3(dirname(__FILE__)."/samples.sqlite");
$res->busyTimeout(1000);

// Mysql

// require_once ("../../codebase/connector/db_pdo.php");
// $res = new PDO("mysql:host=192.168.1.251;dbname=schedulertest", "scheduler", "scheduler");
// $dbtype = "PDO";

?>