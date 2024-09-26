<div class="pagination clearfix style2">
    <div class="nav-link">
        <?php
        $page_range = 2; // Number of pages to show around the current page
        $start_page = max(1, $page - $page_range);
        $end_page = min($total_pages, $page + $page_range);

        // Get the current query parameters and add or update the page parameter
        $query_params = $_GET;
        unset($query_params['page']); // Remove the page parameter to avoid duplication
        ?>

        <?php if ($page > 1): ?>
            <?php $query_params['page'] = $page - 1; ?>
            <a href="?<?php echo http_build_query($query_params); ?>" class="page-numbers"><i class="icon fa fa-angle-left" aria-hidden="true"></i></a>
        <?php endif; ?>

        <?php if ($start_page > 1): ?>
            <?php $query_params['page'] = 1; ?>
            <a href="?<?php echo http_build_query($query_params); ?>" class="page-numbers">1</a>
            <?php if ($start_page > 2): ?><span class="dots">...</span><?php endif; ?>
        <?php endif; ?>

        <?php for ($i = $start_page; $i <= $end_page; $i++): ?>
            <?php $query_params['page'] = $i; ?>
            <a href="?<?php echo http_build_query($query_params); ?>" class="page-numbers <?php echo $i == $page ? 'current' : ''; ?>"><?php echo $i; ?></a>
        <?php endfor; ?>

        <?php if ($end_page < $total_pages): ?>
            <?php if ($end_page < $total_pages - 1): ?><span class="dots">...</span><?php endif; ?>
            <?php $query_params['page'] = $total_pages; ?>
            <a href="?<?php echo http_build_query($query_params); ?>" class="page-numbers"><?php echo $total_pages; ?></a>
        <?php endif; ?>

        <?php if ($page < $total_pages): ?>
            <?php $query_params['page'] = $page + 1; ?>
            <a href="?<?php echo http_build_query($query_params); ?>" class="page-numbers"><i class="icon fa fa-angle-right" aria-hidden="true"></i></a>
        <?php endif; ?>
    </div>
</div>
