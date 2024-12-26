<header class="header style7">
    <div class="top-bar">
        <div class="container">
            <div class="top-bar-left">
                <div class="header-message">
                    Welcome to our online store!
                </div>
            </div>
            <div class="top-bar-right">
                <div class="header-language">
                    <div class="ysera-language ysera-dropdown">
                        <a href="#" class="active language-toggle" data-ysera="ysera-dropdown">
                            <span>
                                English (USD)
                            </span>
                        </a>
                        <ul class="ysera-submenu">
                            <li class="switcher-option">
                                <a href="#">
                                    <span>
                                        French (EUR)
                                    </span>
                                </a>
                            </li>
                            <li class="switcher-option">
                                <a href="#">
                                    <span>
                                        Japanese (JPY)
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <ul class="header-user-links">
                    <li>
                        <?php if (isset($_SESSION['user_id'])) { ?>
                        <a href="account.php">My Account</a> |
                        <form method="POST" action="account.php" style="display:inline;">
                            <button type="submit" name="logout" class="logout-link">Logout</button>
                        </form>
                        <?php } else { ?>
                        <a href="login.php">Login</a> |
                        <a href="login.php">Register</a>
                        <?php } ?>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="main-header">
            <div class="row">
                <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                    <div class="logo">
                        <a href="index.html">
                            <img src="/assets/images/logo.png" alt="img">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                    <div class="block-search-block">
                        <form class="form-search form-search-width-category">
                            <div class="form-content">
                                <div class="category">
                                    <select title="cate" data-placeholder="All Categories" class="chosen-select"
                                        tabindex="1">
                                        <option value="category.php">All Categories</option>
                                        <?php foreach ($categories_array as $cat):
                                            if ($cat['parent_id'] === 0) { ?>
                                                <option value="/category/<?php echo $cat['slug']; ?>.html">
                                                    <?php echo htmlspecialchars($cat['name']); ?></option>
                                                <?php }
                                        endforeach; ?>
                                    </select>
                                </div>
                                <div class="inner">
                                    <input type="text" class="input" name="s" value="" placeholder="Search here">
                                </div>
                                <button class="btn-search" type="submit">
                                    <span class="icon-search"></span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
                    <div class="header-control">
                        <div class="block-minicart ysera-mini-cart block-header ysera-dropdown">
                            <a href="javascript:void(0);" class="shopcart-icon" data-ysera="ysera-dropdown">
                                Cart
                                <span class="count">
                                    0
                                </span>
                            </a>
                            <div class="shopcart-description ysera-submenu">
                                <div class="content-wrap">
                                    <h3 class="title">Shopping Cart</h3>
                                    <ul class="minicart-items">
                                        <li class="product-cart mini_cart_item">
                                            <a href="#" class="product-media">
                                                <img src="/assets/images/item-minicart-1.jpg" alt="img">
                                            </a>
                                            <div class="product-details">
                                                <h5 class="product-name">
                                                    <a href="#">Drop Earrings</a>
                                                </h5>
                                                <div class="variations">
                                                    <span class="attribute_color">
                                                        <a href="#">Black</a>
                                                    </span>
                                                    ,
                                                    <span class="attribute_size">
                                                        <a href="#">300ml</a>
                                                    </span>
                                                </div>
                                                <span class="product-price">
                                                    <span class="price">
                                                        <span>$45</span>
                                                    </span>
                                                </span>
                                                <span class="product-quantity">
                                                    (x1)
                                                </span>
                                                <div class="product-remove">
                                                    <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-cart mini_cart_item">
                                            <a href="#" class="product-media">
                                                <img src="/assets/images/item-minicart-2.jpg" alt="img">
                                            </a>
                                            <div class="product-details">
                                                <h5 class="product-name">
                                                    <a href="#">Soap Earrings Solutions</a>
                                                </h5>
                                                <div class="variations">
                                                    <span class="attribute_color">
                                                        <a href="#">Black</a>
                                                    </span>
                                                    ,
                                                    <span class="attribute_size">
                                                        <a href="#">300ml</a>
                                                    </span>
                                                </div>
                                                <span class="product-price">
                                                    <span class="price">
                                                        <span>$45</span>
                                                    </span>
                                                </span>
                                                <span class="product-quantity">
                                                    (x1)
                                                </span>
                                                <div class="product-remove">
                                                    <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="product-cart mini_cart_item">
                                            <a href="#" class="product-media">
                                                <img src="/assets/images/item-minicart-3.jpg" alt="img">
                                            </a>
                                            <div class="product-details">
                                                <h5 class="product-name">
                                                    <a href="#">Earrings Solutions Soap</a>
                                                </h5>
                                                <div class="variations">
                                                    <span class="attribute_color">
                                                        <a href="#">Black</a>
                                                    </span>
                                                    ,
                                                    <span class="attribute_size">
                                                        <a href="#">300ml</a>
                                                    </span>
                                                </div>
                                                <span class="product-price">
                                                    <span class="price">
                                                        <span>$45</span>
                                                    </span>
                                                </span>
                                                <span class="product-quantity">
                                                    (x1)
                                                </span>
                                                <div class="product-remove">
                                                    <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="subtotal">
                                        <span class="total-title">Subtotal: </span>
                                        <span class="total-price">
                                            <span class="Price-amount">
                                                $135
                                            </span>
                                        </span>
                                    </div>
                                    <div class="actions">
                                        <a class="button button-viewcart" href="shoppingcart.html">
                                            <span>View Bag</span>
                                        </a>
                                        <a href="checkout.html" class="button button-checkout">
                                            <span>Checkout</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block-account block-header ysera-dropdown">
                            <a href="javascript:void(0);" data-ysera="ysera-dropdown">
                                <span class="flaticon-user"></span>
                            </a>
                            <div class="header-account ysera-submenu">
                                <div class="header-user-form-tabs">
                                    <ul class="tab-link">
                                        <li class="active">
                                            <a data-toggle="tab" aria-expanded="true" href="#header-tab-login">Login</a>
                                        </li>
                                        <li>
                                            <a href="login.php">Register</a>
                                        </li>
                                    </ul>
                                    <div class="tab-container">
                                        <div id="header-tab-login" class="tab-panel active">
                                            <form method="post" class="login form-login">
                                                <p class="form-row form-row-wide">
                                                    <input type="email" placeholder="Email" class="input-text">
                                                </p>
                                                <p class="form-row form-row-wide">
                                                    <input type="password" class="input-text" placeholder="Password">
                                                </p>
                                                <p class="form-row">
                                                    <label class="form-checkbox">
                                                        <input type="checkbox" class="input-checkbox">
                                                        <span>
                                                            Remember me
                                                        </span>
                                                    </label>
                                                    <input type="submit" class="button" value="Login">
                                                </p>
                                                <p class="lost_password">
                                                    <a href="forgot_password.php">Lost your password?</a>
                                                </p>
                                            </form>
                                        </div>
                                        <div id="header-tab-rigister" class="tab-panel">
                                            <form method="post" class="register form-register">
                                                <p class="form-row form-row-wide">
                                                    <input type="email" placeholder="Email" class="input-text">
                                                </p>
                                                <p class="form-row form-row-wide">
                                                    <input type="password" class="input-text" placeholder="Password">
                                                </p>
                                                <p class="form-row">
                                                    <input type="submit" class="button" value="Register">
                                                </p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="menu-bar mobile-navigation menu-toggle" href="#">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-nav-container rows-space-20">
        <div class="container">
            <div class="header-nav-wapper main-menu-wapper">
                <div class="vertical-wapper block-nav-categori">
                    <div class="block-title">
                        <span class="icon-bar">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                        <span class="text">All Categories</span>
                    </div>
                    <div class="block-content verticalmenu-content">
                        <ul class="ysera-nav-vertical vertical-menu ysera-clone-mobile-menu">
                            <?php foreach ($categories_array as $cat): 
                            $category->id = $cat['id'];
                            $subcategories = $category->readSubcategories();
                            if ($cat['parent_id'] === 0) {
                                if ($subcategories[1] > 0) { ?>
                                    <li class="menu-item menu-item-has-children">
                                        <a title="<?php echo htmlspecialchars($cat['name']); ?>" href="/category/<?php echo $cat['slug']; ?>.html" class="ysera-menu-item-title"><?php echo htmlspecialchars($cat['name']); ?></a>
                                        <span class="toggle-submenu"></span>
                                        <ul role="menu" class=" submenu">
                                            <?php while ($row = $subcategories[0]->fetch(PDO::FETCH_ASSOC)) { ?>
                                                <li class="menu-item">
                                                    <a title="<?php echo htmlspecialchars($row['name']); ?>" href="/category/<?php echo $row['slug']; ?>.html" class="ysera-item-title"><?php echo htmlspecialchars($row['name']); ?></a>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                    </li>
                                <?php } else { ?>
                                    <li class="menu-item"><?php $cat['name']; ?>
                                        <a href="/category/<?php echo $cat['slug']; ?>.html" class="ysera-menu-item-title" title="<?php echo htmlspecialchars($cat['name']); ?>"><?php echo htmlspecialchars($cat['name']); ?></a>
                                    </li>
                                <?php }
                            } ?>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
                <div class="header-nav">
                    <div class="container-wapper">
                        <ul class="ysera-clone-mobile-menu ysera-nav main-menu " id="menu-main-menu">
                            <li class="menu-item  menu-item-has-children item-megamenu">
                                <a href="#" class="ysera-menu-item-title" title="Pages">Pages</a>
                                <span class="toggle-submenu"></span>
                                <div class="submenu mega-menu menu-page">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                            <div class="ysera-custommenu default">
                                                <h2 class="widgettitle">Shop Pages</h2>
                                                <ul class="menu">
                                                    <li class="menu-item">
                                                        <a href="shoppingcart.html">Shopping Cart</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="checkout.html">Checkout</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="contact.html">Contact us</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="404page.html">404</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="login.html">Login/Register</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                            <div class="ysera-custommenu default">
                                                <h2 class="widgettitle">Product</h2>
                                                <ul class="menu">
                                                    <li class="menu-item">
                                                        <a href="productdetails-fullwidth.html">Product Fullwidth</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="productdetails-leftsidebar.html">Product left
                                                            sidebar</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a href="productdetails-rightsidebar.html">Product right
                                                            sidebar</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="header-device-mobile">
    <div class="wapper">
        <div class="item mobile-logo">
            <div class="logo">
                <a href="#">
                    <img src="/assets/images/logo.png" alt="img">
                </a>
            </div>
        </div>
        <div class="item item mobile-search-box has-sub">
            <a href="#">
                <span class="icon">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </span>
            </a>
            <div class="block-sub">
                <a href="#" class="close">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
                <div class="header-searchform-box">
                    <form class="header-searchform">
                        <div class="searchform-wrap">
                            <input type="text" class="search-input" placeholder="Enter keywords to search...">
                            <input type="submit" class="submit button" value="Search">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="item mobile-settings-box has-sub">
            <a href="#">
                <span class="icon">
                    <i class="fa fa-cog" aria-hidden="true"></i>
                </span>
            </a>
            <div class="block-sub">
                <a href="#" class="close">
                    <i class="fa fa-times" aria-hidden="true"></i>
                </a>
                <div class="block-sub-item">
                    <h5 class="block-item-title">Currency</h5>
                    <form class="currency-form ysera-language">
                        <ul class="ysera-language-wrap">
                            <li class="active">
                                <a href="#">
                                    <span>
                                        English (USD)
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>
                                        French (EUR)
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>
                                        Japanese (JPY)
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
        <div class="item menu-bar">
            <a class=" mobile-navigation  menu-toggle" href="#">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
    </div>
</div>