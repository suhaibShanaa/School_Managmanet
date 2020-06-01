<?php

namespace App\Http\Controllers\Admin;
use App\Http\Requests\CourseRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;

/**
 * Class CourseCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class CourseCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    public function setup()
    {
        $this->crud->setModel('App\Models\Course');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/course');
        $this->crud->setEntityNameStrings('course', 'courses');

        $this->crud->addField(
            [   // Date
                'name' => 'start_date',
                'label' => 'Start Date',
                'type' => 'date'
            ], 'create/update/delete');

        $this->crud->addField(
            [   // Date
                'name' => 'end_date',
                'label' => 'End Date',
                'type' => 'date'
            ], 'create/update/delete');
    }

    protected function setupListOperation()
    {
        // TODO: remove setFromDb() and manually define Columns, maybe Filters
        $this->crud->setFromDb();
    }

    protected function setupCreateOperation()
    {
        $this->crud->setValidation(CourseRequest::class);

        // TODO: remove setFromDb() and manually define Fields
        $this->crud->setFromDb();
    }

    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
