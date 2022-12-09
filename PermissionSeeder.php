<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use illuminate\Support\Str;
class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        $guardName = 'web';
        $role = Role::create([
                'name' => 'Super Admin',
                'guard_name' => $guardName
            ]);
        $permissions = [
                'Employee' => [
                        'Employee Create', 
                        'Employee View', 
                        'Employee Edit', 
                        'Employee Delete',
                ],
                'Dashboard' => [
                        'Dashboard Create', 
                        'Dashboard View', 
                        'Dashboard Edit', 
                        'Dashboard Delete',
                ]
            ];
        


        foreach($permissions as $key => $permission){
            $data = [
                'group_name' => $key,
                'group_name_slug' => Str::slug($key),
                'guard_name' =>$guardName,
            ];

            foreach($permission as $name){
                $data['name'] = $name;
                $data['name_slug'] = Str::slug($name);
                $groupPermisson = Permission::create($data);
                $role->givePermissionTo($groupPermisson);
            }
        }

        
    }
}
