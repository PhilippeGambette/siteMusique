<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Site web de musique</title>
  <style>.album{width:150px;}</style>
</head>
<body>
<?php 
echo("<h1>Liste des albums de la base</h1>"); 

include("connexion_base.php");

// Requête SQL pour récupérer tous les albums de la base de données
$sql = "SELECT nom FROM mu_regroupement;";
// On prépare la requête avant l'envoi :
$req = $link -> prepare($sql);
$req -> execute();
// On crée une liste non numérotée avec les résultats
echo '<ul>';
while($data = $req -> fetch()){
  // On affiche chaque résultat sous forme d'un item de la liste
  echo '<li><b>'.$data['nom'].'</b></li>';
}
$req = null;
echo '</ul>';
?>

<h2>Albums de Jennifer Lopez</h2>

<?php 

// Requête SQL pour récupérer les albums de Jennifer Lopez
$sql = "SELECT mu_regroupement.`id`, mu_regroupement.`nom` AS nom_album,`pochette` FROM mu_regroupement, mu_artiste 
WHERE prenom='Jennifer' AND mu_artiste.nom='Lopez' 
AND mu_artiste.id=mu_regroupement.id_artiste
ORDER BY annee;";
// On prépare la requête avant l'envoi :
$req = $link -> prepare($sql);
$req -> execute();
// On crée une liste non numérotée avec les résultats
echo '<ul>';
while($data = $req -> fetch()){
  // On affiche chaque résultat sous forme d'un item de la liste
  echo '<li><b>'.$data['nom_album'].'</b><br><img class="album" src="'
  .$data['pochette'].'" alt="Pochette de l\'album « '
  .$data["nom_album"].' »">';

  // Lister les chansons de l'album
  // Requête SQL pour récupérer les albums de Jennifer Lopez
$sql2 = "SELECT mu_chanson.`nom` FROM `mu_chanson`,`mu_compose` 
WHERE id_regroupement = ".$data["id"]." AND id_chanson = id 
ORDER BY ordre";
// On prépare la requête avant l'envoi :
$req2 = $link -> prepare($sql2);
$req2 -> execute();
// On crée une liste non numérotée avec les résultats
echo '<ul>';
while($data2 = $req2 -> fetch()){
  // On affiche chaque résultat sous forme d'un item de la liste
  echo '<li>'.$data2['nom'].'</li>';

  }
  $req2 = null;
  echo '</ul></li>';

}
$req = null;
echo '</ul>';
?>








<h2>Albums de Jennifer Lopez</h2>

<i>Version avec une seule requête SQL : </i>
<?php 

// Requête SQL pour récupérer les chansons des albums de Jennifer Lopez
$sql = "SELECT mu_chanson.`nom` AS titre_chanson, mu_regroupement.`id`, mu_regroupement.`nom` AS nom_album,
`pochette`, mu_regroupement.id AS id_album 
FROM mu_regroupement, mu_artiste, `mu_chanson`,`mu_compose`
WHERE prenom='Jennifer' AND mu_artiste.nom='Lopez' AND id_regroupement = mu_regroupement.id AND id_chanson = mu_chanson.id 
AND mu_artiste.id=mu_regroupement.id_artiste
ORDER BY annee,ordre;";
// On prépare la requête avant l'envoi :
$req = $link -> prepare($sql);
$req -> execute();
// On crée une liste non numérotée avec les résultats
echo '<ul>';
$id_album_precedent = -1;
while($data = $req -> fetch()){
  if($id_album_precedent != $data["id_album"]){
    $fermeture_balises = "";
    if($id_album_precedent>-1){
      // Ce n'est pas le premier album :
      // il faut fermer les balises <ul> et <li> de l'album précédent :
      $fermeture_balises = "</ul></li>";
    }
    // On affiche les informations sur l'album
    echo $fermeture_balises.'
    <li><b>'.$data['nom_album'].'</b><br><img class="album" src="'
    .$data['pochette'].'" alt="Pochette de l\'album « '
    .$data["nom_album"].' »"><ul>
    ';
  }

  // On affiche chaque chanson sous forme d'un item de la liste
  echo '<li>'.$data['titre_chanson'].'</li>
  ';

  $id_album_precedent = $data["id_album"];
}
$req = null;
echo '  </ul></li>

</ul>';
?>









<h2>Nombre d’albums par artiste</h2>

<?php 

// Requête SQL pour récupérer les albums de Jennifer Lopez
$sql = "SELECT prenom, mu_artiste.nom, COUNT(mu_regroupement.id) AS nb_albums
FROM `mu_regroupement`,`mu_artiste` 
WHERE mu_regroupement.id_artiste = mu_artiste.id 
GROUP BY mu_artiste.id;";
// On prépare la requête avant l'envoi :
$req = $link -> prepare($sql);
$req -> execute();
// On crée une liste non numérotée avec les résultats
echo '<ul>';
while($data = $req -> fetch()){
  // On crée une varialbe $pluriel qui contient "s" s'il y a plusieurs albums pour l'artiste
  $pluriel = "";
  if($data['nb_albums']>1){
    $pluriel = "s";
  }
  // On affiche chaque résultat sous forme d'un item de la liste
  echo '<li>'.$data['prenom'].' '.$data['nom'].' : '.$data['nb_albums'].' album'.$pluriel.'</li>';
}
$req = null;
echo '</ul>';
?>

<h2>Ajout à la newsletter</h2>

<form action="ajout_courriel.php" method="get">
Entrez votre adresse de courriel pour recevoir la newsletter : <input type="text" name="courriel">
<input type="submit" value="Envoyer mon adresse de courriel">
</form>

<footer>
Code fourni sous licence AGPL à l'adresse <a href="https://github.com/PhilippeGambette/siteMusique">https://github.com/PhilippeGambette/siteMusique</a>
</footer>
</body>
</html>