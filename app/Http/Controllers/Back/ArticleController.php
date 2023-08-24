<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class ArticleController extends Controller
{
    public function index()
    {
        $articles=Article::orderBy('created_at','desc')->get();
        return view('back.articles.index', compact('articles'));
    }

    public function create()
    {
        $categories=Category::all();
        return view('back.articles.create',compact('categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'=>'min:3',
            'image'=>'required|image|mimes:jpeg,jpg,png|max:2048'
        ]);

        $article = new Article;
        $article->title = $request->title;
        $article->categoryId = $request->category;
        $article->content = $request->content;
        $article->slug = Str::slug($request->title);

        if($request->hasFile('image')){
            $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $article->image=asset('uploads/').'/'.$imageName;
        }
        $article->save();
        notify()->success('Başarılı', 'Makale başarıyla oluşturuldu');
        return redirect()->route('admin.makaleler.index');
    }

    public function show(string $id)
    {
        return $id; 
    }

    public function edit(string $id)
    {
        $article=Article::findOrFail($id);
        $categories=Category::all();
        return view('back.articles.edit',compact('categories','article'));
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'title'=>'min:3',
            'image'=>'image|mimes:jpeg,jpg,png|max:2048'
        ]);
        $article = Article::findOrFail($id);
        $article->title = $request->title;
        $article->categoryId = $request->category;
        $article->content = $request->content;
        $article->slug = Str::slug($request->title);

        if($request->hasFile('image')){
            $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $article->image=asset('uploads/').'/'.$imageName;
        }
        $article->save();
        notify()->success('Başarılı', 'Makale başarıyla güncellendi');
        return redirect()->route('admin.makaleler.index');
    }

    public function status(Request $request){
        
        $article=Article::findOrFail($request->id);
        $article->status = $request->statu=="true" ? 1 : 0;
        $article->save();
    }

    public function delete($id){
        Article::find($id)->delete();
        notify()->success('Makale, silinen makalelere taşındı');
        return redirect()->route('admin.makaleler.index');
    }

    public function destroy(string $id)
    {
        return $id;
    }

    public function trashed(){
        $articles = Article::onlyTrashed()->orderBy('deleted_at','desc')->get();
        return view('back.articles.trashed', compact('articles'));
    }

    public function recover($id){
        Article::onlyTrashed()->find($id)->restore();
        notify()->success('Makale başarıyla kurtarıldı');
        return redirect()->route('admin.makaleler.index');
    }

    public function hardDelete($id){
        
        $article = Article::onlyTrashed()->find($id);
        if(File::exists(public_path('/uploads',$article->image))){
            File::delete(public_path('/uploads',$article->image));
        }
        $article->forceDelete();
        notify()->success('Makale başarıyla silindi');
        return redirect()->route('admin.makaleler.index');
    }
}
