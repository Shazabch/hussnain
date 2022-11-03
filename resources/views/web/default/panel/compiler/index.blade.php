@extends(getTemplate() .'.panel.layouts.panel_layout')

@section('content')
    <section>
        <h2 class="section-title">Python Compiler</h2>
        <br>
    
        
        
       <iframe src="https://trinket.io/embed/python/65e0f97437" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
       <br>
       <br>
       <br>
        <h2 class="section-title">Html/Css/Javascript Compiler</h2>
        <br>
       <br>
       <br>
      <iframe src="https://trinket.io/embed/html/35353f78a9?runMode=autorun" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
    </section>

    <div class="mt-5 d-none" id="messageModal">
        <div class="text-center">
            <h3 class="modal-title font-16 font-weight-bold text-dark-blue"></h3>
            <span class="modal-time d-block font-12 text-gray mt-5"></span>
            <span class="modal-message text-gray mt-20"></span>
        </div>
    </div>
@endsection

@push('scripts_bottom')
    <script>
        (function ($) {
            "use strict";

            @if(!empty(request()->get('compiler')))
            setTimeout(() => {
                $('body #showNotificationMessage{{ request()->get('notification') }}').trigger('click');

                let url = window.location.href;
                url = url.split('?')[0];
                window.history.pushState("object or string", "Title", url);
            }, 400);
            @endif
        })(jQuery)
    </script>
    <script src="https://www.jdoodle.com/assets/jdoodle-pym.min.js" type="text/javascript"></script>

    <script src="/assets/default/js/panel/notifications.min.js"></script>
@endpush
