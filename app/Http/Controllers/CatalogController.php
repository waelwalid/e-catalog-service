<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalog;
use Exception;
use Ramsey\Uuid\Type\Integer;

class CatalogController extends Controller
{
    function index(Request $request)
    {
        try {
            $catalogs = Catalog::paginate(5);
            return response()->json(['data' => $catalogs]);
        } catch (Exception $e) {
            throw $e;
        }
    }


    function show($id)
    {
        try {
            $catalog = Catalog::find($id);
            return response()->json([$catalog]);
        } catch (Exception $e) {
            throw $e;
        }
    }
}
