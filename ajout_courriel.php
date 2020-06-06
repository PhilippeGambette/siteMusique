<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Site web de musique</title>
  <style>.album{width:150px;}</style>
</head>
<body>
<h1>Ajout à la newsletter</h1>
<?php 

include("connexion_base.php");

if(isset($_GET["courriel"]) and $_GET["courriel"]!=""){
   $courriel = $_GET["courriel"];
   $sql = "INSERT INTO mu_newsletter (courriel) VALUES(:courriel)";
   // On prépare la requête avant l'envoi :
   $req = $link -> prepare($sql);
   $req -> execute(array(":courriel" => $courriel));
   // On affiche que l'adresse de courriel a bien été ajoutée
   echo("Votre adresse de courriel a bien été ajoutée à la newsletter !"); 
} else {
   echo("Merci de préciser une adresse de courriel à ajouter pour recevoir la newsletter.");
}

?>
<br><a href="index.php">Retour au site de musique</a>
</body>
</html>