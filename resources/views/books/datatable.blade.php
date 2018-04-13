@extends('layouts.master')

@section('content')
<div class="container-fluid">
    <div class="row" id="datatable">

        @forelse($books as $book)
	        <div class="col-md-3">
					<div class="card" style="width: 18rem;">
					  <img class="card-img-top mx-auto" src="{{url('images',$book->image)}}" alt="Card image cap" style="width: 80%;height: 250px;">
					  <div class="card-body">
					    <h5 class="card-title"><b>Title</b>: {{$book->title}}</h5>
					    <p class="card-text"><b>Description</b>:{{$book->description}}</p>
					    <p class="card-text"><b>Author</b>:{{$book->author}}</p>
					    <p class="card-text"><b>Tags</b>:{{$book->tags}}</p>
					    <p class="card-text"><b>Price</b>: P{{$book->price}}</p>
					  </div>
					  <div class="card-footer">
					    <a href="{{route('books.edit',$book->id)}}" class="btn btn-primary">Edit</a>
					    <!-- <a href="#" class="btn btn-danger">Delete</a> -->
					   <form action="{{route('books.destroy',$book->id)}}" method="post" style="display: inline-block;">
					   	{{csrf_field()}}
					   	{{method_field('DELETE')}}
					   		<button type="submit" class="btn btn-danger">Delete</button>
					    </form>
					  </div>
					</div>
	        </div>
		@empty
			<h1 class="mx-auto text-primary">There is no record found</h1>
		@endforelse

    </div>
    <br>
    <br>
    {{ $books->links() }}
</div>
@endsection