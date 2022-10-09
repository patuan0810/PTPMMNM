<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ProductController extends Controller
{
    public function show_product(){
        $brand_product = DB::table('tbl_brand')->orderby('brand_id','desc')->get();
        return view('pages.product')->with('brand',$brand_product);
    }
    public function details_product($product_id){
        $brand_product = DB::table('tbl_brand')->orderby('brand_id','desc')->get();
        return view('pages.product_details')->with('brand',$brand_product);
    }
}
