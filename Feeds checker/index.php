<?php
    require_once 'classes/DatafeedChecker.php';
    $datafeedChecker = new DatafeedChecker();
    $feedLoader = $datafeedChecker->loadFeeds();
    $dataFeed = $datafeedChecker->getUpdatedFeeds();
    
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Feeds checker</title>
</head>
<body>
    <div class="container">
        <?php 
            echo '<pre>';
            var_dump($dataFeed)
        ?>
    </div>
</body>
</html>