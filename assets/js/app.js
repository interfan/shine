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

    $('.add-to-cart-btn').on('click', function(e) {
        e.preventDefault();
        let product_id = $(this).data('id');
        let quantity = $('#product-qty').val() || 1;

        $.ajax({
            type: 'POST',
            url: 'cart.php',
            data: {
                add_to_cart: true,
                product_id: product_id,
                quantity: quantity
            },
            success: function(response) {
                $('.cart-content').html(response);  // Update mini-cart dynamically
                alert('Product added to cart!');
            },
            error: function() {
                alert('Failed to add product to cart.');
            }
        });
    });

    // Quantity increment/decrement on PDP
    $('.btn-number').on('click', function(e) {
        e.preventDefault();
        let qtyInput = $(this).siblings('input');
        let currentQty = parseInt(qtyInput.val()) || 1;

        if ($(this).hasClass('qtyplus')) {
            qtyInput.val(currentQty + 1);
        } else if ($(this).hasClass('qtyminus') && currentQty > 1) {
            qtyInput.val(currentQty - 1);
        }
    });

    // Update mini-cart count
    function updateCartCount() {
        $.ajax({
            url: 'minicart.php',
            success: function(response) {
                let count = $(response).find('.minicart-items li').length;
                $('.cart-count').text(count);
            }
        });
    }

    // Remove item asynchronously
    $(document).on('submit', '.remove-item-form', function(e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: 'POST',
            url: 'cart.php',
            data: form.serialize(),
            success: function(response) {
                $('.cart-content').html(response);
                updateCartCount();
            }
        });
    });

});