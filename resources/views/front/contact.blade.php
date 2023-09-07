@extends('front.layouts.master')    
@section('title','İletişim')
@section('bg', 'https://startbootstrap.github.io/startbootstrap-clean-blog/assets/img/contact-bg.jpg')
@section('content')      
<div class="col-md-8">
    @if(session('success'))
    <div class="alert alert-success">
        {{session('success')}}
    </div>
    @endif
    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <p>Formu doldurarak bizimle iletişime geçebilirsiniz.</p>
    <div class="my-5">
        <form method="post" action="{{route('contact.post')}}">
            @csrf
            <div class="form-element">
                <label for="name">Ad Soyad</label>
                <input class="form-control" id="name" name="name" type="text" value="{{old('name')}}" placeholder="Adınız ve soyadınız..." required/>
            </div>
            <div class="form-element">
                <label for="email">Eposta</label>
                <input class="form-control" id="email" name="email" type="email" value="{{old('email')}}" placeholder="E-posta adresiniz..." required/>
            </div>
            <div class="form-element">
                <label for="topic">Konu</label>
                <select class="form-control" id="topic" name="topic" placeholder="Mesajınızın konusu..." required>
                    <option value="bilgi" @if(old('topic')=="Bilgi") selected @endif>Bilgi</option>
                    <option value="destek" @if(old('topic')=="Destek") selected @endif>Destek</option>
                    <option value="Genel" @if(old('topic')=="Genel") selected @endif>Genel</option>
                </select>
                
            </div>
            <div class="form-element">
                <label for="message">Mesaj</label>
                <textarea class="form-control" id="message" name="message"  placeholder="Mesajınız..." style="height: 12rem" required>{{old('message')}}</textarea>
            </div>
            <button class="btn btn-primary text-uppercase" id="submitButton" type="submit">Gönder</button>
        </form>
    </div>
</div>
<div class="col-md-4">
<div class="card">
        <div class="card-header">
            İletişim Bilgileri
        </div>
        <div class="card-body">
            <pre>Address:
Keas 69 Str.
15234, Chalandri
Athens,
Greece

+30-2106019311 
+30-6977664062 (mobil)
+30-2106398905 (fax)</pre>
        </div>
    </div>
</div>
@endsection

