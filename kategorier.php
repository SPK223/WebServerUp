<html>
<head>
	<title>Schooldora</title>

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
	<h2 class="flex centered">Alla kategorier</h2>
	<div class="featured">

	<?php
	require 'model/categoryModel.php';

	$categoryModel = new categoryModel();
	$category = $categoryModel->getCategory();

	foreach($category as $category){
		/*categoryId sparar kategorins id för att sedan kunna använda variablen i kategori.php */
		$categoryId = $category['id'];

		?>

		<div class="featured-card">
		<h2><?php echo $category['name'] ?></h2>
        <p><?php echo $category['description'] ?></p>
        <form action="kategori.php" method="GET">
            <input type="hidden" name="categoryId" value="<?php echo $categoryId; ?>">
            <button type="submit">Se alla produkter</button>
        </form>
		</div>

	<?php } ?>

	</div>
</main>
</body>
</html>