<?php 


ini_set('display_errors', 1);

error_reporting(E_ALL);


require('Model/pdo.php');
$manga = $dbPDO->prepare("
    SELECT * FROM manga_info
    ORDER BY Date_Publication DESC;
");
$manga->execute();
$mangas = $manga->fetchAll();
echo "<h1>"."Top Manga"."</h1>";
   
    

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des mangas</title>
    <style>
    </style>
</head>
<body>
<ul>
<?php foreach($mangas as $m): ?>
                    
                        <li>
                            <a><?= htmlspecialchars($m['Titre']) ?></a>
                            </br>
                            <p> <?= htmlspecialchars($m['Date_Publication']) ?></p>

                        </li>

                    <?php endforeach; ?>
</ul>
</body>