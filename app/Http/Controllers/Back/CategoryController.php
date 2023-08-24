<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Article;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    public function index(){
        $categories = Category::all();
        return view('back.categories.index', compact('categories'));
    }
    
    public function status(Request $request){
        $category=Category::findOrFail($request->id);
        $category->status = $request->statu=="true" ? 1 : 0;
        $category->save();
    }

    public function create(Request $request){
        $isExist=Category::whereSlug(Str::slug($request->category))->first();
        if($isExist){
            notify()->error($request->category.' adında bir kategori mevcut!','Hata');
            return redirect()->back();
        }
        $category = new Category;
        $category->name=$request->category;
        $category->slug = Str::slug($request->category);
        $category->save();
        notify()->success($request->category,'Kategori Başarıyla Oluşturuldu');
        return redirect()->back();
    }

    public function getData(Request $request){
        $category=Category::findOrFail($request->id);
        return response()->json($category);
    }

    public function update(Request $request){
        $isSlugSame=Category::whereSlug(Str::slug($request->slug))->whereNotIn('id',[$request->id])->first();
        $isNameSame=Category::whereName($request->category)->whereNotIn('id',[$request->id])->first();
        if($isSlugSame or $isNameSame){
            notify()->error($request->category.' adında bir kategori mevcut!');
            return redirect()->back();
        }
        $category = Category::find($request->id);
        $category->name=$request->category;
        $category->slug = Str::slug($request->slug);
        $category->save();
        notify()->success($request->category.' Kategorisi Güncellendi','Başarılı');
        return redirect()->back();
    }

    public function delete(Request $request){
        $category = Category::findOrFail($request->id);
        if($category->id == 1){
            notify()->error('Bu kategori silinemez');
            return redirect()->back();
        }
        $count = $category->articleCount();
        $message = '';
        $defaultCategory = Category::find(1);
        if($count>0){
            Article::where('categoryId', $category->id)->update(['categoryId'=>1]);
            $message = 'Bu kategoriye ait '.$count.' makale, '.$defaultCategory->name.' kategorisine aktarıldı.';
        }
        $category->delete();
        notify()->success('Kategori başarıyla silindi',$message);
        return redirect()->back();
    }
}
