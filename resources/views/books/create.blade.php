@extends('layouts.master')
@section('title','Create')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8">
        	<div class="jumbotron">
	         <form action="{{route('books.store')}}" method="post" enctype="multipart/form-data">
	         	@csrf

         		<div class="form-group {{ $errors->has('title')? ' has-error':''}} ">
         			<label for="name">Book Title</label>
         			<input type="text" name="title" id="title" class="form-control">

                       @if ($errors->has('title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
         		</div>
            
         		<div class="form-group {{ $errors->has('description')? ' has-error':''}}">
         			<label for="description">Book Description</label>
         			<input type="text" name="description" id="description" class="form-control">

                        @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
         		</div>
         		<div class="form-group {{ $errors->has('author')? ' has-error':''}}">
         			<label for="author">Book Author</label>
         			<input type="text" name="author" id="author" class="form-control">

                        @if ($errors->has('author'))
                            <span class="help-block">
                                <strong>{{ $errors->first('author') }}</strong>
                            </span>
                        @endif
         		</div>
         		<div class="form-group {{ $errors->has('price')? ' has-error':''}}">
         			<label for="price">Price</label>
         			<input type="text" name="price" id="price" class="form-control">

                        @if ($errors->has('price'))
                            <span class="help-block">
                                <strong>{{ $errors->first('price') }}</strong>
                            </span>
                        @endif
         		</div>
         		<div class="form-group {{ $errors->has('tags')? ' has-error':''}}">
         			<label for="name">Tags</label>
         			<input type="text" name="tags" id="tags" class="form-control">

                        @if ($errors->has('tags'))
                            <span class="help-block">
                                <strong>{{ $errors->first('tags') }}</strong>
                            </span>
                        @endif
         		</div>
         		<div class="form-group {{ $errors->has('image')? ' has-error':''}}">
         			<label for="name">Image</label>
         			<input type="file" name="image" id="image" class="form-control">

                        @if ($errors->has('image'))
                            <span class="help-block">
                                <strong>{{ $errors->first('image') }}</strong>
                            </span>
                        @endif
         		</div>
         		<button type="submit" class="btn btn-primary">Add</button>
	         </form>
        	</div>
        </div>
    </div>
 
</div>
@endsection
