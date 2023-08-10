@extends('back.layouts.master')
@section('title', 'Tüm Makaleler')
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
                                <td><img src="{{$article->image}}" width="200"></td>
                                <td>{{$article->title}}</td>
                                <td>{{$article->getCategory->name}}</td>
                                <td>{{$article->hit}}</td>
                                <td>{{$article->created_at->format('d-m-Y')}}</td>
                                <td>{!!$article->status==0 ? "<span class='text-danger'>Pasif</span>" : "<span class='text-success'>Aktif</span>" !!}</td>
                                <td>
                                    <a href="#" class="btn btn-sm btn-success" title="Görüntüle"><i class="fa fa-eye"></i></a>
                                    <a href="#" class="btn btn-sm btn-primary" title="Düzenle"><i class="fa fa-pen"></i></a>
                                    <a href="#" class="btn btn-sm btn-danger"title="Sil"><i class="fa fa-times"></i></a>
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