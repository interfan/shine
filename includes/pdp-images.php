<div class="details-thumd">
    <div class="image-preview-container image-thick-box image_preview_container">
        <!-- Main Image using the default image -->
        <img id="img_zoom" 
             data-zoom-image="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($product->default_image['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
             src="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($product->default_image['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
             alt="img">
        <a href="#" class="btn-zoom open_qv"><i class="fa fa-search" aria-hidden="true"></i></a>
    </div>
    <div class="product-preview image-small product_preview">
        <div id="thumbnails" class="thumbnails_carousel owl-carousel" 
             data-nav="true" data-autoplay="false" data-dots="false" data-loop="false" data-margin="10" 
             data-responsive='{"0":{"items":3},"480":{"items":3},"600":{"items":3},"1000":{"items":3}}'>
             <?php if (!empty($product->images)): ?>
                <?php foreach ($product->images as $img): ?>
                    <a href="#" 
                       data-image="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($img['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                       data-zoom-image="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($img['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                       class="<?php echo (isset($img['id'], $product->default_image['id']) && $img['id'] == $product->default_image['id']) ? 'active' : ''; ?>">
                        <img src="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($img['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                             data-large-image="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($img['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                             alt="img">
                    </a>
                <?php endforeach; ?>
            <?php else: ?>
                <!-- Optionally, show a fallback if no images are found -->
                <a href="#" class="active">
                    <img src="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($product->default_image['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                         data-large-image="/assets/products/<?php echo $product->name; ?>/<?php echo htmlspecialchars($product->default_image['image'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" 
                         alt="img">
                </a>
            <?php endif; ?>
        </div>
    </div>
</div>
