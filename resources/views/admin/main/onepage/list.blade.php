@extends('admin.master')
@section('content')
<div class="right_col" role="main">
    <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Danh sách sản phẩm</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          @include('block.message')
            <div class="more">
              <a href="/admin/onepage/add.html" class="btn btn-success">Thêm mới</a>
            </div>
          <div class="x_content">
            <div class="row">
              <div class="col-sm-12">
                <div class="card-box table-responsive">

                  <table id="datatable-keytable" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th width="">STT</th>
                        <th>Tên trang</th>
                        <th>Kích hoạt</th>
                        <th>Ngày đăng</th>
                        <th style="text-align: right">Chức năng</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php $stt=1 ?>
                    @foreach($onepage as $page)
                      <tr>
                        <td>{{ $stt++ }}</td>
                        <td>{{ $page->name }}</td>
                        <td>{!! check_status_active($page->status) !!}</td>
                        <td>{{ get_time($page->created_at) }}</td>
                        <td  style="text-align:right">
                            <a href="/admin/onepage/view/{{ $page->slug }}.html" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> Xem</a>
                            <a href="/admin/onepage/edit/{{ $page->slug }}.html" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i> Sửa</a>
                            <a href="/admin/onepage/delete/{{ $page->slug }}.html" class="btn btn-warning btn-xs" onclick="xacnhanxoa('Bạn có muốn xóa không ?')"><i class="fa fa-trash"></i> Xóa</a>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>
</div>
@endsection