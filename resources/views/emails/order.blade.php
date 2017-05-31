<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
</head>
<body>


<h1>A new product order</h1>


<h2>Client Details</h2>
<p>First Name: {{$client_details[0]}}</p>
<p>Last Name: {{$client_details[1]}}</p>
<p>Address: {{$client_details[2]}}</p>
<p>Phone: {{$client_details[3]}}</p>
<p>City: {{$client_details[4]}}</p>
<p>State: {{$client_details[5]}}</p>

<h2>Cart Products</h2>
<table class="table table-bordered">
        <thead>
        <tr>
            <th>Cart ID</th>
            <th>Username</th>
            <th>Products</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total Price</th>
            <th>Total reduced Price</th>
        </tr>
        </thead>
        <tbody>
        
            @foreach($cart_products as $cart)

            <tr>                
                <td>#{{ $cart->id }}</td>                
                <td>{{ $cart->user->username }}</td>
                <td>{{ $cart->products->product_name }}</td>
                <td>{{ $cart->qty }}</td>
                <td>{{ $cart->products->price }}</td>
                <td>{{ $cart->products->reduced_price }}</td>
                <td>{{ $cart->products->price * $cart->qty }}</td>
                <td>{{ $cart->products->reduced_price * $cart->qty }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

</body>
</html>