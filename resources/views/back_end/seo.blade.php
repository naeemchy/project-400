


  @extends('back_end.master')
  @section('dashboard')
  <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>SEO Setting</h3>
        <div class="row mt">
          <div class="col-lg-8">
   {{--           <div style="color: green ;">
    <?php
        $message = $this->session->message;
        if (isset($message)) {
            echo $message;
            $this->session->unset_userdata('message');
        }
        else{
            $unmessage = $this->session->unseccessfullmessage; 
            echo $unmessage;
             // $this->session->unset_userdata('message');
        }


     ?>
 </div>  --}}
          
            <div class="form-panel" style="padding: 18px;">
              <div class="form">
                <form class="cmxform form-horizontal style-form" id="signupForm" method="post" action="{{ url('update_seo') }}">
                  @csrf
                  <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Meta Title</label>
                    <div class="col-lg-10">
                       <input type="hidden" name="id" value="{{$seo_data->id}}">
                      <input class=" form-control" id="firstname" name="meta_title" value="{{$seo_data->meta_title}}" type="text" required="" />
                    </div>
                  </div>
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Meta Author</label>
                    <div class="col-lg-10">
                      <input class=" form-control" id="firstname" name="meta_author" value="{{$seo_data->meta_author}}" type="text" required="" />
                    </div>
                  </div>
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Meta Tag</label>
                    <div class="col-lg-10">
                      <input class=" form-control" id="firstname" name="meta_tag" value="{{$seo_data->meta_tag}}" type="text" required="" />
                    </div>
                  </div>
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Meta Description</label>
                    <div class="col-lg-10">
                      <textarea class=" form-control" id="firstname" name="meta_description" value="{{$seo_data->meta_description}}" type="text" required=""></textarea>
                    </div>
                  </div>
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Google Analytice</label>
                    <div class="col-lg-10">
                      <textarea class=" form-control" id="firstname" name="google_analytics" value="{{$seo_data->google_analytics}}" type="text" required=""></textarea>
                    </div>
                  </div>
                   <div class="form-group ">
                    <label for="firstname" class="control-label col-lg-2">Bing Analytics</label>
                    <div class="col-lg-10">
                      <textarea class=" form-control" id="firstname" name="bing_analytics" value="{{$seo_data->bing_analytics}}" required=""></textarea>
                    </div>
                  </div>
                    <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">Save</button>
                      <button class="btn btn-theme04" type="button">Cancel</button>
                    </div>
                  </div>
                 
                </form>
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      </section>



      @endsection

