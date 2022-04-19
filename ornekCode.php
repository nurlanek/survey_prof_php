<?php

//massivdi rorech yapip kaydetme
$sql = "INSERT INTO `listProducts` SET `name`=?,`count`=?, `volume`=?";
        $res = $mysqli->prepare($sql);
 
        if( ! $res )
        {
            die( "SQL Error: {$mysqli->errno} - {$mysqli->error}" );
        }
 
        foreach( $products as $item )
        {
            $res->bind_param( "sds", $item['name'],$item['count'], $item['volume'] );
            $res->execute();
        }