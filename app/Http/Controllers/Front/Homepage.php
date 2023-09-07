<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Validator;
use Mail;

use App\Models\Article;
use App\Models\Category;
use App\Models\Page;
use App\Models\Contact;
use App\Models\Config;

class Homepage extends Controller
{
    public function __construct(){
        if(Config::find(1)->active==0){
            return redirect()->to('aktif-degil')->send();
        }
        view()->share('pages',Page::orderBy('order','ASC')->get());
        view()->share('categories',Category::all());

    }

    public function index(){
        $data['articles']=Article::orderBy('created_at', 'DESC')->paginate(4);
        return view('front.homepage',$data);
    }

    public function single($category,$slug){
        $category=Category::whereSlug($category)->first() ?? abort(403, 'Böyle bir kategori bulunamadı');
        $article=Article::where('slug',$slug)->where('categoryId',$category->id)->first() ?? abort(403, 'Böyle bir yazı bulunamadı');
        $article->increment('hit');
        $data['article']=$article;
        return view('front.single',$data);
    }

    public function category($slug){
        $category=Category::whereSlug($slug)->first() ?? abort(403, 'Böyle bir kategori bulunamadı');
        $data['category']=$category;
        $data['articles']=Article::where('categoryId',$category->id)->orderBy('created_at', 'DESC')->paginate(4);
        return view('front.category', $data);
    }

    public function page($slug){
        $page=Page::whereSlug($slug)->first() ?? abort(403,'Böyle bir sayfa bulunamadı');
        $data['page']=$page;
        return view('front.page',$data);
    }

    public function contact(){
        return view('front.contact');
    }

    public function contactpost(Request $request){
        
        $rules=[
            "name"=>"required|min:5",
            "email"=>"required|email",
            "topic"=>"required",
            "message"=>"required|min:10"
        ];

        $validate=Validator::make($request->post(),$rules);

        if($validate->fails()){
            return redirect()->route('contact')->withErrors($validate)->withInput();
        }

        Mail::send([],[],function($message) use($request){
            $message->from('iletisim@laravelblog.com','Laravel Blog');
            $message->to('kaanpasa@protonmail.com');
            $message->setBody('Mesajı gönderen:'.$request->name.'<br/>
            Mesajı gönderen mail:'.$request->email.'<br/>
            Mesaj konusu:'.$request->topic.'<br/>
            Mesaj:'.$request->message.'<br/><br/>
            Mesaj gönderilme tarihi:'.now(),'text/html');
            $message->subject($request->name.' size bir mesaj gönderdi.');
            
        });
        return redirect()->route('contact')->with('success','Mesajınızı aldık, teşekkür ederiz.');
    }
}
