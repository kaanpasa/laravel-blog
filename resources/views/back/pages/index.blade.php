@extends('back.layouts.master')
@section('title', 'Tüm Sayfalar')
@section('content')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{$pages->count()}} sayfa bulundu</h6>
            
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Fotoğraf</th>
                            <th>Sayfa Başlığı</th>
                            <th>Durum</th>
                            <th>İşlemler</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($pages as $page)
                            <tr>
                                <td><img src="{{$page->image}}" style="max-width:200px; max-height:200px"></td>
                                <td>{{$page->title}}</td>
                                <td>
                                    <input class="status" page-id="{{$page->id}}" type="checkbox" data-toggle="toggle" data-on="Aktif" data-off="Pasif" data-onstyle="success" data-offstyle="danger" @if($page->status == 1) checked @endif>
                                </td>
                                <td style="display: flex">
                                    <a href="{{route('page',$page->slug)}}" target="_blank" class="btn btn-sm btn-success m-1" title="Görüntüle"><i class="fa fa-eye"></i></a>
                                    <a href="{{route('admin.page.update',$page->id)}}" class="btn btn-sm btn-primary m-1" title="Düzenle"><i class="fa fa-pen"></i></a>
                                    <a page-id="{{$page->id}}" class="btn btn-sm btn-danger delete-btn m-1" title="Sil"><i class="fa fa-trash text-white"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Delete Modal -->
<div class="modal" id="deleteModal">
    <div class="modal-dialog">
        <div class="modal-content">

        <div class="modal-header">
            <h4 class="modal-title">Sayfayı Sil</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <p>Sayfayı silmek istediğinize emin misiniz?</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-info" data-dismiss="modal">Kapat</button>
            <form action="{{route('admin.page.delete')}}">
                @csrf
                <input type="hidden" name="id" id="deleteId">
                <button id="deleteBtn" type="submit" class="btn btn-danger">Sil</button>
            </form>
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
        id = $(this)[0].getAttribute('page-id');
        statu=$(this).prop('checked');
        $.get("{{route('admin.page.status')}}", {id:id, statu:statu}, function(data,status){
            console.log(data);
        });
    });
    $('.delete-btn').click(function(){
        id = $(this)[0].getAttribute('page-id');
        $('#deleteId').val(id);
        $('#pageAlert').html('Sayfayı silmek istediğinize emin misiniz?');
        $('#deleteModal').modal();
    });
  })
</script>
@endsection