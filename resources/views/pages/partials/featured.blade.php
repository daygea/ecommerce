

<h4 class="text-center animated zoomIn" id="featured-products-heading">Featured Products</h4>


<div class="text-center">
    <div class="container-fluid" id="Index-Main-Container">

        <div id="featured-products-sub-container">
            <div class="row">
            
                
                 @foreach($products as $product)  

                    <div class="col-sm-6 col-md-3 animated zoomIn" id="featured-container">
                        <a href="{{ route('show.product', $product->product_name) }}">   
                                         
                        @if ($product->path == "")
                            <img src="images/no-image-found.jpg" alt="No Image Found Tag" id="Product-similar-Image" style="width: 200px; height: 200px;">
                        @else
                            @if ($product->featured)
                                <img src="{{ $product->thumbnail_path }}" alt="" />
                            @elseif(!$product->featured)
                                <img src="{{ $product->thumbnail_path}}" alt="Photo" />
                            @else
                                N/A
                            @endif
                        @endif
                            <div id="featured-product-name-container">
                                <h6 class="center-on-small-only" id="featured-product-name"><br>{{ $product->product_name }}</h6>
                            </div>
                            @if($product->reduced_price == 0)
                                <div class="light-300 black-text medium-500" id="Product_Reduced-Price">$ {{  $product->price }}</div>
                            @else
                                <div class="green-text medium-500" id="Product_Reduced-Price">$ {{ $product->reduced_price }}</div>
                            @endif
                        </a>
                        <form action="cart/add" method="post" name="add_to_cart">
                            {!! csrf_field() !!}
                            <input type="hidden" name="product" value="{{$product->id}}" />
                            <input type="hidden" name="qty" value="1" />
                            <button class="btn btn-default waves-effect waves-light">ADD TO CART</button>
                        </form>
                    </div>


                @endforeach
            </div>
        </div>

    </div>
</div>

