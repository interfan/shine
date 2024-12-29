<?php
session_start();
include './includes/helper.php';
$db = getDatabaseConnection();
$category = getCategoryInstance($db);
$categories_array = getAllCategories($db);
$product = getProductInstance($db);

// Get product ID from query string
$slug = isset($_GET['slug']) ? $_GET['slug'] : 0;

// Fetch product details
$product->slug = $slug;
$product->readOne();

// Set page title
$pageTitle = $product->name . ' - E-Commerce Site';

include './includes/header.php'; // Include header
?>
<div class="main-content main-content-details single left-sidebar">
		<div class="container">
            <?php include './includes/breadcrumbs.php'; // Include footer ?>
			<div class="row">
				<div class="content-area content-details col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<div class="site-main">
						<div class="details-product">
                        <?php include './includes/pdp-images.php';?>
							<div class="details-infor">
								<h1 class="product-title">
                                    <?php echo htmlspecialchars($product->name); ?>
								</h1>
								<div class="stars-rating">
									<div class="star-rating">
										<span class="star-5"></span>
									</div>
									<div class="count-star">
										(7)
									</div>
								</div>
								<div class="availability">
									availability:
									<a href="#"><?php echo $product->stock; ?></a>
								</div>
								<div class="price">
									<span><?php echo number_format($product->price, 2); ?></span>
								</div>
								<div class="product-details-description">
									<ul>
										<li><?php echo $product->sku; ?></li>
									</ul>
								</div>
								<?php include './includes/pdp-variations.php';?>
								<div class="group-button">
									<div class="yith-wcwl-add-to-wishlist">
										<div class="yith-wcwl-add-button">
											<a href="#">Add to Wishlist</a>
										</div>
									</div>
									<div class="size-chart-wrapp">
										<div class="btn-size-chart">
											<a id="size_chart" href="assets/images/size-chart.jpg" class="fancybox">View Size Chart</a>
										</div>
									</div>
									<div class="quantity-add-to-cart">
										<div class="quantity">
											<div class="control">
												<a class="btn-number qtyminus quantity-minus" href="#">-</a>
												<input type="text" data-step="1" data-min="0" value="1" title="Qty" class="input-qty qty" size="4">
												<a href="#" class="btn-number qtyplus quantity-plus">+</a>
											</div>
										</div>
										<button class="single_add_to_cart_button button add-to-cart-btn">Add to cart</button>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-details-product">
							<ul class="tab-link">
								<li class="active">
									<a data-toggle="tab" aria-expanded="true" href="#product-descriptions">Descriptions </a>
								</li>
								<li class="">
									<a data-toggle="tab" aria-expanded="true" href="#information">Information </a>
								</li>
								<li class="">
									<a data-toggle="tab" aria-expanded="true" href="#reviews">Reviews</a>
								</li>
							</ul>
							<div class="tab-container">
								<div id="product-descriptions" class="tab-panel active">
                                    <?php echo nl2br(htmlspecialchars($product->description)); ?>
								</div>
								<?php include './includes/pdp-information.php';?>
								<?php include './includes/pdp-reviews.php';?>
							</div>
						</div>
						<div style="clear: left;"></div>
                        <?php include './includes/pdp-related-products.php';?>
					</div>
				</div>
                <?php include './includes/pdp-left-side.php';?>
			</div>
		</div>
	</div>

<?php include './includes/footer.php'; // Include footer ?>
