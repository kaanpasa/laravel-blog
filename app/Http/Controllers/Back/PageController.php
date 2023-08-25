<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use Illuminate\Support\Str;

class PageController extends Controller
{
    public function index(){
        $pages = Page::all();
        return view('back.pages.index',compact('pages'));
    }

    public function status(Request $request){
        $page=Page::findOrFail($request->id);
        $page->status = $request->statu=="true" ? 1 : 0;
        $page->save();
    }

    public function delete(Request $request){
        $page = Page::findOrFail($request->id);
        $page->delete();
        notify()->success($page->title.' sayfası başarıyla silindi','Başarılı');
        return redirect()->back();
    }

    public function create(){
        return view('back.pages.create');
    }

    public function post(Request $request)
    {
        $request->validate([
            'title'=>'min:3',
            'image'=>'required|image|mimes:jpeg,jpg,png|max:2048'
        ]);

        $last = Page::orderBy('order', 'desc')->first();
        
        $page = new Page;
        $page->title = $request->title;
        $page->content = $request->content;
        $page->order = $last->order+1;
        $page->slug = Str::slug($request->title);

        if($request->hasFile('image')){
            $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $page->image=asset('uploads/').'/'.$imageName;
        }
        $page->save();
        notify()->success('Başarılı', 'Sayfa başarıyla oluşturuldu');
        return redirect()->route('admin.page.index');
    }

    public function update($id){
        $page = Page::findOrFail($id);
        return view('back.pages.update',compact('page'));
    }

    public function updatePost(Request $request, string $id)
    {
        $request->validate([
            'title'=>'min:3',
            'image'=>'image|mimes:jpeg,jpg,png|max:2048'
        ]);
        
        $page = Page::findOrFail($id);
        $page->title = $request->title;
        $page->content = $request->content;
        $page->slug = Str::slug($request->title);
        
        if($request->hasFile('image')){
            $imageName=Str::slug($request->title).'.'.$request->image->getClientOriginalExtension();
            $request->image->move(public_path('uploads'),$imageName);
            $page->image=asset('uploads/').'/'.$imageName;
        }
        $page->save();
        notify()->success('Başarılı', 'Sayfa başarıyla güncellendi');
        return redirect()->route('admin.page.index');
    }

}
