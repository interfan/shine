$(document).ready(function() {
    function updateQueryParams(param, value) {
        var url = new URL(window.location.href);
        var params = new URLSearchParams(url.search);

        if (value) {
            params.set(param, value);
        } else {
            params.delete(param);
        }

        window.location.search = params.toString();
    }

    // Update URL when items per page selection changes
    $('#items-per-page').on('change', function() {
        var itemsPerPage = $(this).val();
        updateQueryParams('items_per_page', itemsPerPage);
    });

    // Update URL when sort by selection changes
    $('#sort-by').on('change', function() {
        var sortBy = $(this).val();
        updateQueryParams('sort_by', sortBy);
    });

    // If you have chosen plugin initialization code, ensure it is placed correctly
    $('.chosen-select').chosen();

    // Add to Cart button click event
    $('.addToCartBtn').click(function() {
        var productId = 1; // Replace with actual product ID
        $.ajax({
            type: "POST",
            url: "addtocart.php",
            data: { action: "add", productId: productId },
            success: function() {
                loadCart();
                updateMinicart(); 
            }
        });
    });

    // Delete from Cart button click event
    $(document).on('click', '.deleteFromCartBtn', function() {
        var productId = $(this).data('productId');
        $.ajax({
            type: "POST",
            url: "addtocart.php",
            data: { action: "delete", productId: productId },
            success: function() {
                loadCart();
                updateMinicart(); 
            }
        });
    });

    // Update Quantity input change event
    $(document).on('change', '.quantityInput', function() {
        var productId = $(this).data('productId');
        var quantity = $(this).val();
        $.ajax({
            type: "POST",
            url: "addtocart.php",
            data: { action: "update", productId: productId, quantity: quantity },
            success: function() {
                loadCart();
                updateMinicart(); 
            }
        });
    });

    // Load cart initially
    loadCart();

    function loadCart() {
        $.get("getcart.php", function(data) {
            $("#cartTable tbody").html(data); 
        });
    }

    // Function to update the minicart display
    function updateMinicart() {
        $.get("get_minicart_data.php", function(data) {
            $("#minicart").html(data);
        });
    }
});