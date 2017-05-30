<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
</head>
<body>


<h1>Thanks for your patronage</h1>


<h2>Client Details</h2>
<p>First Name: {{$client_details[0]}}</p>
<p>Last Name: {{$client_details[1]}}</p>
<p>Address: {{$client_details[2]}}</p>
<p>Phone: {{$client_details[3]}}</p>
<p>City: {{$client_details[4]}}</p>
<p>State: {{$client_details[5]}}</p>

<h2>Cart Products</h2>
@foreach($cart_products as $cart_product)

	<p>$cart_product-></p>	

@endforeach

</body>
</html>