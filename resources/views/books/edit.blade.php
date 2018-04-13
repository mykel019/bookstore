@extends('layouts.master')
@section('title','Edit')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8">

        	<div class="jumbotron">
                
	         <form action="{{route('books.update',$book['id'])}}" method="post" enctype="multipart/form-data">
	         	@csrf
                {{method_field('PUT')}}
         		<div class="form-group">
         			<label for="name">Book Title</label>
         			<input type="text" name="title" id="title" class="form-control" value="{{$book['title']}}">
         		</div>
         		<div class="form-group">
         			<label for="description">Book Description</label>
         			<input type="text" name="description" id="description" class="form-control" value="{{$book['description']}}">
         		</div>
         		<div class="form-group">
         			<label for="author">Book Author</label>
         			<input type="text" name="author" id="author" class="form-control" value="{{$book['author']}}">
         		</div>
         		<div class="form-group">
         			<label for="price">Price</label>
         			<input type="text" name="price" id="price" class="form-control" value="{{$book['price']}}">
         		</div>
         		<div class="form-group">
         			<label for="name">Tags</label>
         			<input type="text" name="tags" id="tags" class="form-control" value="{{$book['tags']}}">
         		</div>
         		<div class="form-group">
         			<label for="name">Image</label>
         			<input type="file" name="image" id="image" class="form-control">
         		</div>
         		<button type="submit" class="btn btn-primary">Update</button>
                <a href="{{route('books.index')}}" class="btn btn-secondary">Back</a>
	         </form>
        
        	</div>
        </div>
    </div>
 
</div>
@endsection
