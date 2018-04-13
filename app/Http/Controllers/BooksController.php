<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Input;
use Illuminate\Http\Request;
use App\Book;


class BooksController extends Controller
{
    function __construct(){
        $this->eloquentModel = new Book();
        $this->table = 'books';
        $this->controller = $this;
    }
 
    public function index()
    {
        $books = Book::orderBy('created_at','DESC')->paginate(4);

        $controller = $this;

        return view('books.index',compact(['books','controller']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('books.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->except('image'); 

        $this->validate($request,[
            'title' => 'required',
            'description' => 'required',
            'author' => 'required',
            'price' => 'required',
            'tags' => 'required',
            'image' => 'required|image|mimes:png,jpg,jpeg|max:10000' 
        ]); 

        $image = $request->image;

        if($image){
            $imageName = $image->getClientOriginalName();
            $image->move('images',$imageName);
            $data['image'] = $imageName;
        }

        $result = Book::create($data);

        return redirect()->route('books.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   

        $book = Book::find($id);

        return view('books.edit',compact('book'));
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $book = Book::find($id);

        $result = $book->update($request->all());

        if($result){
            return bacK()->with(['success'=>"SUCCESS"]);
        }else{
            return bacK()->with(['error'=>"FAILED"]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Book::find($id);

        $result = $book->delete();

        if($result){
            return back()->with(['success'=>"SUCESS"]);
        }else{
            return back()->with(['error'=>"FAILED"]);
        }
    }

    public function datatable(){

        $q = Input::get('search');
        
        $books = $this->get_records($q);

        return view('books.datatable',compact('books'));
    }

    private function get_records($q){
        $cols = $this->table_columns($this->table);

        $query =  $this->eloquentModel;

        $query = $query->where(function($query) use($cols,$q){
            foreach ($cols as $key => $value) {
                $query = $query->orWhere($value,'like','%'.$q.'%');
            }
        });

        $Response = $query->paginate(4);

        return $Response;

    }




}
