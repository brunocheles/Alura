<?php
    echo ("\n\nARRAYS\n");
    $idadeList = [21,22,23,24,25,26,27];
    echo (PHP_EOL." Primeira idade ".$idadeList[0]);
    for($i = 0;$i < count($idadeList);$i++) {
        echo(PHP_EOL." ".$idadeList[$i]);
    }
?>