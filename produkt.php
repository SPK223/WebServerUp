<html>
<head>
	<title>E-handel</title>

	<link rel="stylesheet" href="main.css">
	<meta charset="UTF-8">
</head>

<body>
<nav>
	<ul>
		<li>
			<a href="index.php">Hem</a>
		</li>
		<li>
			<a href="produkter.php">Produkter</a>
		</li>
		<li>
			<a href="kategorier.php">Kategorier</a>
		</li>
		<li>
			<a href="kundvagn.php">Kundvagn</a>
		</li>
	</ul>
</nav>

<main>

<?php
$produktId = $_GET['Id'];

require 'model/produkterModel.php';
require 'model/cartModel.php';

$varukorgR = new cartModel();

$produktModel = new produkterModel();
$produkt = $produktModel->getSpecificProdukt($produktId);

?>

	<div class="two-columns">
		<div class="product-information">
			<h2><?php echo $produkt[0]['name']?></h2>
			<p><?php echo $produkt[0]['description']?></p>
			<img src="bilder/<?php echo $produkt[0]['img']?>">
		</div>

		<div class="product-buy-information">
			<h2><?php echo $produkt[0]['price'] ?> kr</h2>

			<button class="input-button rounded" onclick="<?php $varukorgR->add_to_cart($produktId); ?>">Lägg i varukorg</button>

			<br>
			<br>
			<br>
			<br>

			<button class="input-button rounded">Visa fler produkter i kategorin</button>
		</div>
	</div>

</main>
</body>
</html>