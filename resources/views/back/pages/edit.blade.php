@extends('back.layouts.master')
@section('title', $article->title.' makalesini düzenle')
@section('content')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">@yield('title')</h6>
        </div>
        <div class="card-body">
            @if($errors->any())
            @endif
            <form method="post" action="{{route('admin.makaleler.update',$article->id)}}" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="">Makale Başlığı</label>
                    <input type="text" name="title" class="form-control" value="{{$article->title}}" required>
                </div>
                <div class="form-group">
                    <label for="">Makale Kategorisi</label>
                    <select class="form-control" name="category" required>
                        <option value="">Seçim Yapın</option>
                        @foreach($categories as $category)
                        <option @if($article->categoryId == $category->id) selected @endif value="{{$category->id}}">{{$category->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Makale Fotoğrafı</label><br>
                    <img src="{{asset($article->image)}}" style="max-width:200px; max-height:200px" class="rounded"><br>
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Makale İçeriği</label>
                    <textarea name="content" id="summernote" class="form-control" rows="4"  required>{!! $article->content !!}</textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Makaleyi Düzenle</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

@section('css')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
@endsection
@section('js')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
    $(document).ready(function(){
        $('#summernote').summernote(
            {'height':300}
        );
    });
</script>
@endsection