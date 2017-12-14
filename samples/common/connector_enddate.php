<?php

include ('config.php');

$gantt = new JSONGanttConnector($res, $dbtype);
$gantt->mix("open", 1);
//$gantt->enable_order("sortorder");

$gantt->render_links("gantt_links_enddate", "id", "source,target,type");
$gantt->render_table("gantt_tasks_enddate","id","start_date,end_date,text,progress,parent","");

?>