@extends('back.layouts.master')
@section('title', 'Silinen Makaleler')
@section('content')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{$articles->count()}} makale bulundu</h6>
            
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Fotoğraf</th>
                            <th>Makale Başlığı</th>
                            <th>Kategori</th>
                            <th>Hit</th>
                            <th>Oluşturma Tarihi</th>
                            <th>Durum</th>
                            <th>İşlemler</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($articles as $article)
                            <tr>
                                <td><img src="{{$article->image}}" style="max-width:200px; max-height:200px"></td>
                                <td>{{$article->title}}</td>
                                <td>{{$article->getCategory->name}}</td>
                                <td>{{$article->hit}}</td>
                                <td>{{$article->created_at->format('d-m-Y')}}</td>
                                <td>
                                    <input class="status" article-id="{{$article->id}}" type="checkbox" data-toggle="toggle" data-on="Aktif" data-off="Pasif" data-onstyle="success" data-offstyle="danger" @if($article->status == 1) checked @endif>
                                </td>
                                <td>
                                    <a href="{{route('admin.recover.article',$article->id)}}" class="btn btn-sm btn-primary m-1" title="Geri Yükle"><i class="fa fa-recycle"></i></a>
                                    <a href="{{route('admin.hard.delete.article', $article->id)}}" class="btn btn-sm btn-danger m-1"title="Sil"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection

@section('css')
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
@endsection

@section('js')
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script>
  $(function() {
    $('.status').change(function() {
        id = $(this)[0].getAttribute('article-id');
        statu=$(this).prop('checked');
        $.get("{{route('admin.status')}}", {id:id, statu:statu}, function(data,status){
            console.log(data);
        });
    })
  })
</script>
@endsection