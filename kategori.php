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

	$categoryId = $_GET['categoryId'];

	if (isset($categoryId)) {
		require 'model/categoryModel.php';

	
		$productModel = new categoryModel();
		$products = $productModel->getCategoryProducts($categoryId);

		if ($categoryId == 1) {
			$categoryId = "Dricka";
		}
		else if($categoryId == 2){
			$categoryId = "Godis";
		}

		?>
		<h2 class="flex centered">Alla produkter i kategori <?php print($categoryId) ?></h2>
		<div class="featured">
		<?php
		
		foreach ($products as $product){

?>


<div class="product-card">

		<img src="bilder/<?php echo $product['img'];?>">
		<h2><?php echo $product['name'] ?></h2>
		<p> <?php echo $product['description'] ?></p>
		
		<form action="produkt.php" method="GET">
			<input type="hidden" name="categoryId" value="<?php echo $categoryId ?>">
			<button type="submit">Läs mer och köp!</button>
		</form>
</div>

<?php
	} }
?>

	</div>
</main>
</body>
</html>