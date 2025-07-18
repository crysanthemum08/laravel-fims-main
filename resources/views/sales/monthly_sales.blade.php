@extends('layouts.app')

@section('content')

<div class="container mt-4">
<div style="text-align: left; margin-bottom: 50px;  margin-top: 40px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: 400;">
        <h2>Monthly Sales</h2>
        <!-- Search & Filter Section -->
<div class="row mb-4">
    <!-- Search by Product Name -->
    <div class="col-md-6">
        <form action="{{ route('sales.monthly') }}" method="GET" class="form-inline d-flex">
            <div class="form-group flex-grow-1 mr-2">
                <input type="text" name="search" class="form-control" placeholder="Search by Product Name" value="{{ request('search') }}" style="padding: 5px 10px; width: 100%;">
            </div>
            <button type="submit" class="btn btn-primary">
                <i class="glyphicon glyphicon-search"></i>
            </button>
            <a href="{{ route('sales.monthly') }}" class="btn btn-secondary ml-2" style="padding: 5px 10px;">Clear</a>
        </form>
    </div>

    <!-- Filter by Month and Year -->
    <div class="col-md-6 text-right">
        <form action="{{ route('sales.monthly') }}" method="GET" class="form-inline d-flex justify-content-end">
            <label class="mr-2">Filter by Month:</label>
            <input type="month" name="month" class="form-control mr-2" value="{{ request('month') }}">
            <button type="submit" class="btn btn-success">Filter</button>
        </form>
    </div>
</div>

    </div>
<div class="panel panel-default" style="width: 120%; max-width: 1500px; margin: 0 auto;">
        <div class="panel-heading" style="padding: 20px;">
            <strong>
                <span class="glyphicon glyphicon-th"></span>
                <span>Sales</span>
            </strong>
        </div>

        <div class="panel-body" style="padding: 30px;">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 50px;">#</th>
                            <th>Product Name</th>
                            <th class="text-center" style="width: 15%;">Quantity Sold</th>
                            <th class="text-center" style="width: 15%;">Total</th>
                            <th class="text-center" style="width: 15%;">Date</th>
                        </tr>
                    </thead>
                    <tbody>
    @forelse ($sales as $index => $sale)
    <tr>
        <td class="text-center">{{ $index + 1 }}</td>
        <td>{{ $sale->product->name }}</td>
        <td class="text-center">{{ $sale->quantity }}</td>
        <td class="text-center">{{ number_format($sale->quantity * $sale->price, 2) }}</td>
        <td class="text-center">{{ $sale->date->format('Y-m-d') }}</td>
    </tr>
    @empty
    <tr>
        <td colspan="5" class="text-center text-muted">
            No sales found for the selected search or month.
        </td>
    </tr>
    @endforelse
</tbody>

                </table>
            </div>
        </div>
    </div>
</div>

<!-- Ensure jQuery and Bootstrap JS are loaded -->
@push('scripts')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
@endpush

@endsection
