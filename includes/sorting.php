<div class="shop-top-control">
    <form id="items-per-page-form" class="select-item select-form">
        <span class="title">Items per Page</span>
        <select id="items-per-page" title="items-per-page" data-placeholder="12 Products/Page" class="chosen-select">
            <option value="12" <?php echo (isset($_GET['items_per_page']) && $_GET['items_per_page'] == '12') ? 'selected' : ''; ?>>12 Products/Page</option>
            <option value="24" <?php echo (isset($_GET['items_per_page']) && $_GET['items_per_page'] == '24') ? 'selected' : ''; ?>>24 Products/Page</option>
            <option value="36" <?php echo (isset($_GET['items_per_page']) && $_GET['items_per_page'] == '36') ? 'selected' : ''; ?>>36 Products/Page</option>
            <option value="48" <?php echo (isset($_GET['items_per_page']) && $_GET['items_per_page'] == '48') ? 'selected' : ''; ?>>48 Products/Page</option>
        </select>
    </form>
    <form id="sort-by-form" class="filter-choice select-form">
        <span class="title">Sort by</span>
        <select id="sort-by" title="sort-by" data-placeholder="Price: Low to High" class="chosen-select">
            <option value="price_asc" <?php echo (isset($_GET['sort_by']) && $_GET['sort_by'] == 'price_asc') ? 'selected' : ''; ?>>Price: Low to High</option>
            <option value="price_desc" <?php echo (isset($_GET['sort_by']) && $_GET['sort_by'] == 'price_desc') ? 'selected' : ''; ?>>Price: High to Low</option>
        </select>
    </form>
</div>
