<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // create permissions
        Permission::create(['name' => 'add courses']);
        Permission::create(['name' => 'edit courses']);
        Permission::create(['name' => 'view courses']);
        Permission::create(['name' => 'delete courses']);

        Permission::create(['name' => 'add students']);
        Permission::create(['name' => 'edit students']);
        Permission::create(['name' => 'view students']);
        Permission::create(['name' => 'delete students']);

        Permission::create(['name' => 'pay cost']);

        Role::create(['name' => 'admin'])
            ->givePermissionTo('add courses','edit courses','delete courses','delete students' ,'view courses', 'view students');;
        Role::create(['name' => 'user'])
            ->givePermissionTo(['view courses', 'delete courses', 'pay cost']);


        // or may be done by chaining
        $role = Role::create(['name' => 'master'])
            ->givePermissionTo(['edit courses','view courses', 'view students', 'edit students']);

        // or may be done by chaining
        $role = Role::create(['name' => 'accountant'])
            ->givePermissionTo(['view students', 'pay cost']);

        $role = Role::create(['name' => 'super-admin']);
        $role->givePermissionTo(Permission::all());


    }
}
