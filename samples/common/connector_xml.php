<?php

include ('config.php');

$gantt = new GanttConnector($res, $dbtype);

$gantt->mix("open", 1);
//$gantt->enable_order("sortorder");

$gantt->render_links("gantt_links", "id", "source,target,type");
$gantt->render_table("gantt_tasks","id","start_date,duration,text,progress,sortorder,parent");
?>