@extends('back.layouts.master')
@section('title', 'Sayfa Ayarları')
@section('content')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">@yield('title')</div>
        <div class="card-body">
            <form method="post" action="{{route('admin.config.update')}}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Site Başlığı</label>
                            <input type="text" name="title" required class="form-control" value="{{$config->title}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Site Aktiflik Durumu</label>
                            <select class="form-control" name="active">
                                <option @if($config->active==1) selected @endif value="1">Açık</option>
                                <option @if($config->active==0) selected @endif value="0">Kapalı</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Site Logo</label>
                            <input type="file" class="form-control" name="logo">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Site Favicon</label>
                            <input type="file" class="form-control" name="favicon">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Linkedin</label>
                            <input type="text" class="form-control" name="linkedin" value="{{$config->linkedin}}">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Github</label>
                            <input type="text" class="form-control" name="github" value="{{$config->github}}">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Instagram</label>
                            <input type="text" class="form-control" name="instagram" value="{{$config->instagram}}">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-block btn-md btn-success">Güncelle</button>
                </div>
            </form>
        </div>
    </div>
</div> 

@endsection