#! /usr/local/bin/php

<?php

include './wp-includes/class-phpass.php';

$args = array_slice($argv, 1);

$hasher = new PasswordHash(8, true);

echo "{$hasher->HashPassword($args[0])}\n";
