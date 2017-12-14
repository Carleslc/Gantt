<?php

include ('config.php');

$gantt = new JSONGanttConnector($res, $dbtype);

$parent_id = isset($_GET["parent_id"]) ? $_GET["parent_id"] : 0;

$gantt->mix("open", 0);
$gantt->mix("deep", 1);

function check_children($row){
    global $gantt;
    $task_id = $row->get_value('id');
    $sql = "SELECT COUNT(id) AS has_children FROM gantt_tasks WHERE parent='{$task_id}'";
    $children = $gantt->sql->query($sql);
    
    $child = $gantt->sql->get_next($children);
    $children_qty = $child['has_children'];

    $row->set_userdata('$has_child',$children_qty);
}
 
$gantt->event->attach("beforeRender","check_children");
$gantt->filter("parent=$parent_id");


$gantt->render_links("gantt_links", "id", "source,target,type");

$gantt->render_table("gantt_tasks","id","start_date,duration,text,progress,parent","", "parent");

?>