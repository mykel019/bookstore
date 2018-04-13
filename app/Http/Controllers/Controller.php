<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use DB;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

         public function table_columns($table){
        
        $res = array();
        $data = DB::select('SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = "'.env('DB_DATABASE', 'forge').'" AND TABLE_NAME="'.$table.'"');
        foreach ($data as $key => $value) {
        	$notInArray = array('id','created_at','updated_at');
        	// echo 
            if(!in_array($value->column_name,$notInArray)){            	
                array_push($res,$value->column_name);
            }
        }
        return $res;

    }
}
