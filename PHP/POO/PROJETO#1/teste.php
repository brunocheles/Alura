<?php
class Foo
{
    public $bar = 'propriedade';
    
    function __construct() {
        echo "Logo antes de criar o objeto".PHP_EOL;
    }
    public function bar() {
        return 'método';
    }
    function __destruct() {
        echo PHP_EOL."Logo depois do objeto deixar de existir";
    }
}

$obj = new Foo();
echo PHP_EOL."teste";
unset ($obj);
echo PHP_EOL.$obj;
//echo $obj->bar, PHP_EOL, $obj->bar(), PHP_EOL;