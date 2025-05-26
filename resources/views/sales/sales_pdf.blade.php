<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sales Report PDF</title>
    <style>
        body { font-family: sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #000; padding: 8px; font-size: 12px; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>Sales Report</h2>
    <p>From: {{ \Carbon\Carbon::parse($startDate)->format('Y-m-d') }} To: {{ \Carbon\Carbon::parse($endDate)->format('Y-m-d') }}</p>

    <table>
        <thead>
            <tr>
                <th>Date</th>
                <th>Product Name</th>
                <th>Buying Price</th>
                <th>Selling Price</th>
                <th>Total Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @php
                $grandTotal = 0;
                $totalProfit = 0;
            @endphp
            @foreach($sales as $sale)
                @php
                    $itemTotal = $sale->quantity * ($sale->product->sale_price ?? 0);
                    $itemProfit = $sale->quantity * (($sale->product->sale_price ?? 0) - ($sale->product->buy_price ?? 0));
                    $grandTotal += $itemTotal;
                    $totalProfit += $itemProfit;
                @endphp
                <tr>
                    <td>{{ \Carbon\Carbon::parse($sale->date)->format('Y-m-d') }}</td>
                    <td>{{ ucfirst($sale->product->name) }}</td>
                    <td>{{ number_format($sale->product->buy_price ?? 0, 2) }}</td>
                    <td>{{ number_format($sale->product->sale_price ?? 0, 2) }}</td>
                    <td>{{ $sale->quantity }}</td>
                    <td>{{ number_format($itemTotal, 2) }}</td>
                </tr>
            @endforeach
        </tbody>
        <tfoot>
            <tr>
                <td colspan="5"><strong>Grand Total</strong></td>
                <td>PHP {{ number_format($grandTotal, 2) }}</td>
            </tr>
            <tr>
                <td colspan="5"><strong>Profit</strong></td>
                <td>PHP {{ number_format($totalProfit, 2) }}</td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
