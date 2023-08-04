@extends('front.layouts.master')    
@section('title',$category->name.' Kategorisi') 
@section('content')      
               <div class="col-md-9">
                    @if(count($articles)>0)
                        @foreach($articles as $article)
                            <p>{{$category->name}} kategorisine ait {{count($articles)}} adet yazı bulundu.</p>
                            <div class="post-preview">
                                <a href="{{route('single',[$article->getCategory->slug,$article->slug])}}">
                                    <h2 class="post-title">{{$article->title}}</h2>
                                    <h3 class="post-subtitle">{{Str::limit($article->content,75)}}</h3>
                                </a>
                                <p class="post-meta">Kategori: <a href="#">{{$article->getCategory->name}}</a>
                                    <span class="float-end">{{$article->created_at->diffForHumans()}}</span>  
                                </p>
                            </div>
                            @if(!$loop->last)
                                <hr class="my-4" />
                            @endif
                        @endforeach
                        <!-- Pager-->
                        <div class="d-flex justify-content-end mb-4"><a class="btn btn-primary text-uppercase" href="#!">Older Posts →</a></div>
                    @else
                    <div class="alert alert-danger">
                        <h1>Bu kategoriye ait yazı bulunamadı.</h1>
                    </div>
                    @endif
                </div>
@include('front.widgets.categoryWidget')
@endsection