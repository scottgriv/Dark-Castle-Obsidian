<?php
// In a land shrouded in mystery...

header('Content-type: application/json');
include("login.php");

session_start();
$userSessionID = $_SESSION['UserSession'];

if (session_id() === $_COOKIE['Session'] && isset($_SESSION['UserSession'])) {

    function query($sql, ...$params) {
        global $mysqli;
        $stmt = $mysqli->prepare($sql);
        if ($params) {
            $stmt->bind_param(str_repeat('s', count($params)), ...$params);
        }
        $stmt->execute();
        return $stmt->get_result();
    }

// ...there stood a Dark Castle

    function fetchData($userSessionID, $castleID, $order, $limit, $offset) {
        $records = array();

        $query = query("SELECT 
            Castle_ID, 
            Castle_Name,
            Castle_Desc,
            Castle_Lord, 
            Castle_Image
            FROM CastleTable 
            WHERE Castle_ID = ? AND Castle_Active = 1 
            LIMIT 1;", $castleID);

        while ($row = $query->fetch_assoc()) {
            $records[] = array(
                'castleID' => intval($row['Castle_ID']),
                'castleName' => $row['Castle_Name'],
                'castleDesc' => $row['Castle_Desc'],
                'castleLordID' => intval($row['Castle_Lord']),
                'castleImage' => $row['Castle_Image']
            );
        }

        echo json_encode($records);
    }

    switch ($_POST["command"]) {
        case "FetchCastleData":
            $castleID = addslashes($_POST["castleID"]);
            $limit = intval($_POST["Limit"]);
            $offset = intval($_POST["Offset"]);
            $order = 'Castle_Created DESC';

            fetchData($userSessionID, $castleID, $order, $limit, $offset);
            break;

        default:
            $response = array("error_message" => "Invalid command.");
            echo json_encode($response);
            break;
    }
} else {
    $response = array("error_message" => "Session expired, please log in again.");
    echo json_encode($response);
}
?>
