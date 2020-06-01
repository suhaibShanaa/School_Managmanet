<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="fa fa-dashboard nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('elfinder') }}"><i class="nav-icon fa fa-files-o"></i> <span>{{ trans('backpack::crud.file_manager') }}</span></a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('course') }}'><i class='nav-icon fa fa-book'></i> Courses</a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('student') }}'><i class='nav-icon fa fa-graduation-cap'></i> Students</a></li>

<li class="nav-item"><a class="nav-link" href="{{URL::to('/pay')}}"><i class="nav-icon fa fa-money"></i> Pay</a></li>


<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon fa fa-globe"></i> Translations</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('language') }}"><i class="nav-icon fa fa-flag-checkered"></i> Languages</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('language/texts') }}"><i class="nav-icon fa fa-language"></i> Site texts</a></li>
    </ul>
</li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('page') }}'><i class='nav-icon fa fa-file-o'></i> <span>Pages</span></a></li>

<!-- Users, Roles, Permissions -->
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon fa fa-group"></i> Authentication</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('user') }}"><i class="nav-icon fa fa-user"></i> <span>Users</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('role') }}"><i class="nav-icon fa fa-group"></i> <span>Roles</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('permission') }}"><i class="nav-icon fa fa-key"></i> <span>Permissions</span></a></li>
    </ul>
</li>
