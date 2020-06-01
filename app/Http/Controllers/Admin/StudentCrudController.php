<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\StudentRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class StudentCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class StudentCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;



    public function setup()
    {
        $this->crud->setModel('App\Models\Student');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/student');
        $this->crud->setEntityNameStrings('student', 'students');
        $this->crud->addField(
            [    // Select2Multiple = n-n relationship (with pivot table)
                'label'     => "Courses",
                'type'      => 'select2_multiple',
                'name'      => 'Course', // the method that defines the relationship in your Model
                'entity'    => 'Course', // the method that defines the relationship in your Model
                'attribute' => 'name', // foreign key attribute that is shown to user

                'pivot'     =>  true, // on create&update, do you need to add/delete pivot table entries?
                'select_all' => true, // show Select All and Clear buttons?
                'foreign_pivot_key' => 'course_id',
                // optional
                'model'     => "App\Models\Course",
                'options'   => (function ($query) {
                    return $query->orderBy('name')->get();
                }),
                // foreign key model // force the related options to be a custom query, instead of all(); you can use this to filter the results show in the select
            ] ,'create/update/delete');


        $this->crud->addField(
            [   // Address
                'name' => 'address',
                'label' => 'Address',
                'type' => 'address_algolia',
                // optional
                'store_as_json' => true
            ] ,'create/update/delete');

        $this->crud->addField(
            [   // Browse
                'name' => 'image',
                'label' => 'Image',
                'type' => 'browse'
            ],'create/update/delete');

        $this->crud->addField(
            [   // Date
                'name' => 'birthday',
                'label' => 'Birthday',
                'type' => 'date'
            ],'create/update/delete');

        $this->crud->addField(
            [   // Number
                'name' => 'std_number',
                'label' => 'Student Number',
                'type' => 'number',
                // optionals
                // 'attributes' => ["step" => "any"], // allow decimals
                // 'prefix' => "$",
                // 'suffix' => ".00",
            ],'create/update/delete');

        $this->crud->addField(
            [   // radio
                'name'        => 'gender', // the name of the db column
                'label'       => 'Gender', // the input label
                'type'        => 'radio',
                'options'     => [
                    // the key will be stored in the db, the value will be shown as label;
                    0 => "Male",
                    1 => "Female"
                ],
                // optional
                //'inline'      => false, // show the radios all on the same line?
            ], 'create/update/delete');

           $this->crud->addColumn([
// n-n relationship (with pivot table)
            'label' => "Courses", // Table column heading
            'type' => "select_multiple",
            'name' => 'Course', // the method that defines the relationship in your Model
            'entity' => 'Course', // the method that defines the relationship in your Model
            'attribute' => "name", // foreign key attribute that is shown to user
            'model' => "App\Models\Course", // foreign key model
        ]);


    }

    protected function setupListOperation()
    {
        // TODO: remove setFromDb() and manually define Columns, maybe Filters
        $this->crud->setFromDb();

    }

    protected function setupCreateOperation()
    {
        $this->crud->setValidation(StudentRequest::class);

        // TODO: remove setFromDb() and manually define Fields
        $this->crud->setFromDb();
    }

    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
