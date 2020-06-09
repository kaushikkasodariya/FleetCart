<ul class="sidebar-menu">
    @foreach($groups as $group)
        {!! $group !!}
    @endforeach

    <li >
        <a href="{{ url('en/admin/CheckOutForm') }}" class="">
            <i class="fa fa-book"></i>
            <span>CheckoutForm</span>
        </a>
    </li>
</ul>
