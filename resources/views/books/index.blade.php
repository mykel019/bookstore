@extends('layouts.master')
@section('content')
<div>
	{{ $controller->datatable() }}
</div>
@endsection
