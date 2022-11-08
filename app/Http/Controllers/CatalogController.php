<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalog;
use Exception;

class CatalogController extends Controller
{
    function index(Request $request)
    {
        try {
            $catalogs = Catalog::get();
            return response()->json(['data' => $catalogs]);
        } catch (Exception $e) {
            throw $e;
        }
    }
}
