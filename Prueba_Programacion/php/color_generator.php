<?php
$colorGenerator = [];

for ($i=0; $i < 200 ; $i++) { 
	$colorRandom = [rand(0,255),rand(0,255),rand(0,255)];
	array_push($colorGenerator, $colorRandom);
}

