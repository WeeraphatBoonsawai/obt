<?php
header('Content-Type: application/json');

require_once('connectdb.php');

$sqlQuery = "SELECT COUNT(*) as project_count,ptt_name from project JOIN project_type on prj_ppt_id = ptt_id group by ptt_name;";
$result = mysqli_query($conn,$sqlQuery);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>