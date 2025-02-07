<div class="variations">
    <?php if (!empty($product->color) && is_array($product->color)): ?>
    <div class="attribute attribute_color">
        <div class="color-text text-attribute">
            Color:
        </div>
        <div class="list-color list-item">
            <?php foreach ($product->color as $color): ?>
                <a href="#" class="<?php echo 'color-' . strtolower(str_replace(' ', '-', $color)); ?>" title="<?php echo htmlspecialchars($color); ?>"></a>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>

    <?php if (!empty($product->size) && is_array($product->size)): ?>
    <div class="attribute attribute_size">
        <div class="size-text text-attribute">
            Size:
        </div>
        <div class="list-size list-item">
            <?php foreach ($product->size as $size): ?>
                <a href="#">
                    <?php echo htmlspecialchars($size); ?>
                </a>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>

    <?php if (!empty($product->alloy) && is_array($product->alloy)): ?>
    <div class="attribute attribute_alloy">
        <div class="alloy-text text-attribute">
            Alloy:
        </div>
        <div class="list-alloy list-item">
            <?php foreach ($product->alloy as $alloy): ?>
                <?php echo htmlspecialchars($alloy); ?>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>

    <?php if (!empty($product->gems) && is_array($product->gems)): ?>
    <div class="attribute attribute_gems">
        <div class="gems-text text-attribute">
            Gems:
        </div>
        <div class="list-gems list-item">
            <?php foreach ($product->gems as $gem): ?>
                    <?php echo htmlspecialchars($gem); ?>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>
</div>
