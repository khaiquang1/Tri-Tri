@extends('layouts.admin.master')

@section('content')

    <!-- Include Alert Blade -->
    @include('admin.alert.alert')

    <div class="row">
        <div class="col-12 box-margin">
            <div class="card">
                <div class="card-body">
                    <div class="d-md-flex justify-content-between align-items-center mb-20">
                        <h6 class="card-title mb-0"></h6>
                        <div>
                            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#teamModal">+ Thêm </button>
                        </div>
                    </div>
             
                        <table id="basic-datatable" class="table table-striped dt-responsive w-100">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                
                                <th>Category</th>
                                <th>Desc</th>
                                <th class="custom-width-action">{{ __('content.action') }}</th>
                            </tr>
                            </thead>

                            <tbody>
                            @php $i = 1; @endphp
                            @foreach ($BU as $bu)
                                <tr>
                                    <td>{{ $i++ }}</td>
                                    <td>{{$bu->category_name}}</td>
                                    <td>
                                         <?php
                                            $feature_desc = $bu->desc;
                                                 $desc = substr("$feature_desc",0,150);
                                            ?>
                                        @php echo html_entity_decode($desc)  @endphp...</td>
                                    <td>
                                        <div>
                                          
                                            <a onclick = "return confirm ('Are you delete?')" href="{{URL::to('delete-BU/'.$bu->id)}}"  >
                                                <i class="fa fa-trash text-danger font-18">Delete</i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                                <!-- Modal -->
                            
                            </tbody>
                        </table>


                </div> <!-- end card body-->
            </div> <!-- end card -->
        </div><!-- end col-->
    </div><!-- end row-->

    <div class="modal fade" id="teamModal" tabindex="-1" role="dialog" aria-labelledby="teamModalLabel" aria-modal="false">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title mt-0 font-16" id="teamModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('team.store') }}" method="POST" enctype="multipart/form-data" >
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="name">Category</label>
                                    <select  class="form-control" name="category_id" id="category" required>
                                        @foreach($categories as $category)
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="name">Desc</label>
                                    <textarea id="summernote" name="desc" class="form-control" required></textarea>
                                </div>
                            </div>
                        </div>
                       
                        <button type="submit" class="btn btn-sm btn-primary">{{ __('content.submit') }}</button>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@endsection