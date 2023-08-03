@extends('front.layouts.master')    
@section('title','Anasayfa') 
@section('content')      
               <div class="col-md-9">
                    @foreach($articles as $article)
                        <div class="post-preview">
                            <a href="post.html">
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
                </div>
@include('front.widgets.categoryWidget')
@endsection