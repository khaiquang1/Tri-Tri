@extends('layouts.admin.master')

@section('content')

    <!-- Include Alert Blade -->
    @include('admin.alert.alert')

     <div class="row">
        <div class="col-12 box-margin">
            <div class="card">
                <div class="card-body">
                    <div class="d-md-flex justify-content-between align-items-center mb-20">
                        <h6 class="card-title mb-0">Video</h6>
                        <div>
                            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#counterModal">+ Add video</button>
                        </div>
                    </div>

                   
                        <table id="basic-datatable" class="table table-striped dt-responsive w-100">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                               
                                <th>title</th>
                                <th>image</th>
                                <th>Link</th>
                                <th>{{ __('content.order') }}</th>
                                <th class="custom-width-action">{{ __('content.action') }}</th>
                            </tr>
                            </thead>

                            <tbody>
                            @php $i = 1; @endphp
                            @foreach ($videos as $video)
                                <tr>
                                    <td>{{ $i++ }}</td>
                                    <td>{{$video->title}}</td>
                                    <td>@if (!empty($video->image))
                                            <img class="image-size img-fluid" src="{{ asset('uploads/img/videos/'.$video->image) }}" alt="blog image">
                                        @else
                                            <img class="image-size img-fluid" src="{{ asset('uploads/img/dummy/no-image.jpg') }}" alt="no image">
                                        @endif</td>
                                    
                                    <td>{{$video->link}}</td>
                                    <td>{{$video->order}}</td>
                                    <td>
                                        <div>
                                          
                                            <a onclick = "return confirm ('Are you delete?')" href="{{URL::to('delete-video/'.$video->id)}}"  >
                                                <i class="fa fa-trash text-danger font-18">Delete</i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                          

                                <!-- Modal -->
                          @endforeach
                            </tbody>
                        </table>
                   
                  

                </div> <!-- end card body-->
            </div> <!-- end card -->
        </div><!-- end col-->
    </div><!-- end row-->
    <div class="modal fade" id="counterModal" tabindex="-1" role="dialog" aria-labelledby="counterModalLabel" aria-modal="false">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title mt-0 font-16" id="counterModalLabel">Add video</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <form action="{{ URL::to('/save-video') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">

                             <div class="col-md-12">
                                <div class="form-group">
                                   <label for="image">{{ __('content.image') }} ({{ __('content.size') }} 775x575)(.svg, .png, .jpg, .jpeg)</label>
                                    <input id="image" name="video_image" type="file" class="form-control-file">
                                    <small id="image" class="form-text text-muted">{{ __('content.recommended_size') }}</small>
                                </div>
                            </div>


                             <div class="col-md-12">
                                <div class="form-group">
                                    <label for="title">{{ __('content.title') }} <span class="text-red">*</span></label>
                                    <input id="title" name="title_video" type="text" class="form-control" required>
                                </div>
                            </div>

                             <div class="col-md-12">
                                <div class="form-group form-group-default">
                                    <label for="category">{{ __('content.categories') }} <span class="text-red">*</span></label>
                                    <select  class="form-control" name="category_id" id="category" required>
                                        @foreach($categories as $category)
                                            <option value="{{$category->id}}">{{$category->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                             
                           
                           <div class="col-md-12">
                                <div class="form-group">
                                    <label for="title">Link <span class="text-red">*</span></label>
                                    <input id="link" name="link_video" type="text" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="order">{{ __('content.order') }}</label>
                                    <input type="number" name="order" class="form-control" id="order" value="0" required>
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