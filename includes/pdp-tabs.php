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
            <p>
                <?php echo nl2br(htmlspecialchars($product->description ?? '', ENT_QUOTES, 'UTF-8')); ?>
            </p>
        </div>
        <div id="information" class="tab-panel">
            <table class="table table-bordered">
                <tbody><tr>
                    <td>Size</td>
                    <td> XS / S / M / L</td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td>White/ Black/ Teal/ Brown</td>
                </tr>
                <tr>
                    <td>Properties</td>
                    <td>Colorful Dress</td>
                </tr>
            </tbody></table>
        </div>
        <div id="reviews" class="tab-panel">
            <div class="reviews-tab">
                <div class="comments">
                    <h2 class="reviews-title">
                        1 review for
                        <span>Splendid Diamond</span>
                    </h2>
                    <ol class="commentlist">
                        <li class="conment">
                            <div class="conment-container">
                                <a href="#" class="avatar">
                                    <img src="assets/images/avartar.jpeg" alt="img">
                                </a>
                                <div class="comment-text">
                                    <div class="stars-rating">
                                        <div class="star-rating">
                                            <span class="star-5"></span>
                                        </div>
                                        <div class="count-star">
                                            (1)
                                        </div>
                                    </div>
                                    <p class="meta">
                                        <strong class="author">Cobus Bester</strong>
                                        <span>-</span>
                                        <span class="time">June 7, 2013</span>
                                    </p>
                                    <div class="description">
                                        <p>Simple and effective design. One of my favorites.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ol>
                </div>
                <div class="review_form_wrapper">
                    <div class="review_form">
                        <div class="comment-respond">
                            <span class="comment-reply-title">Add a review </span>
                            <form class="comment-form-review">
                                <p class="comment-notes">
                                    <span class="email-notes">Your email address will not be published.</span>
                                    Required fields are marked
                                    <span class="required">*</span>
                                </p>
                                <div class="comment-form-rating">
                                    <label>Your rating</label>
                                    <p class="stars">
                                            <span>
                                                <a class="star-1" href="#"></a>
                                                <a class="star-2" href="#"></a>
                                                <a class="star-3" href="#"></a>
                                                <a class="star-4" href="#"></a>
                                                <a class="star-5" href="#"></a>
                                            </span>
                                    </p>
                                </div>
                                <p class="comment-form-comment">
                                    <label>
                                        Your review
                                        <span class="required">*</span>
                                    </label>
                                    <textarea title="review" id="comment" name="comment" cols="45" rows="8"></textarea>
                                </p>
                                <p class="comment-form-author">
                                    <label>
                                        Name
                                        <span class="">*</span>
                                    </label>
                                    <input title="author" id="author" name="author" type="text" value="">
                                </p>
                                <p class="comment-form-email">
                                    <label>
                                        Email
                                        <span class="">*</span>
                                    </label>
                                    <input title="email" id="email" name="email" type="email" value="">
                                </p>
                                <p class="form-submit">
                                    <input name="submit" type="submit" id="submit" class="submit" value="Submit">
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>