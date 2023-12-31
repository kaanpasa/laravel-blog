<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Models\Admin;


class AuthController extends Controller
{
    public function login(){
        return view('back.auth.login');
    }

    public function loginPost(Request $request){
        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){
            notify()->success('Hoşgeldiniz ',Auth::user()->name);
            return redirect()->route('admin.dashboard');
        }
        return redirect()->route('admin.login')->withErrors('Eposta adresi ya da şifre hatalı.');
    }

    public function logout(){
        Auth::logout();
        return redirect()->route('admin.login');
    }
}
