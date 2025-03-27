<?php 


ini_set('display_errors', 1);

error_reporting(E_ALL);

$id = $_GET['Id'];
require('Model/pdo.php');
$manga = $dbPDO->prepare("
    SELECT * FROM manga_info WHERE Id=$id
    JOIN auteur ON manga_info.Auteur_Id = auteur.id
    JOIN personnage ON manga_info.Personnage_Id = personnage.id
");

$manga->execute();
$mangas = $manga->fetchAll();


   
    

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fiche manga</title>
    <style>
    </style>
</head>
<body>
<h1><?= htmlspecialchars($m['Titre']) ?></h1>
</br>
<p><?= htmlspecialchars($m['auteur.id.Nom'])?>-<?= htmlspecialchars($m['Titre']) ?></p>
<p><?= htmlspecialchars($m['Description']) ?></p>
<h2>personnage principaux</h2>
<p><?= htmlspecialchars($m['personnage.id.Nom']) ?></p>
                    

</body>

?>