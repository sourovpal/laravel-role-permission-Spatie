<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use Spatie\Permission\Models\Role;
use App\Models\Role;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    //

    public function index(Request $request){
        $roles = Role::with('permissions')->get();
        return view('permission.index', compact('roles'));
    }

    public function create(Request $request){
        return view('permission.create');
    }
    
    public function store(Request $request){
        $request->validate([
            'name' => 'required|string|min:2|max:50|unique:roles,name',
        ]);
        $guardName      = 'web';
        $name           = $request->name;
        $role = Role::create([
                'name' => $name,
                'guard_name' => $guardName
            ]);
        return redirect()->route('permission.edit', ['id'=>$role->id])->withSuccess('New Role Created Successful.');
    }

    public function edit(Request $request){
        
        $role = Role::find($request->id);
        
        $permission_group = Permission::groupBy('group_name', 'group_name_slug')->select('group_name', 'group_name_slug')->get();
        // return $role->hasAllDirectPermissions(['Dashboard Create', 'Dashboard View']);
        if($role){
            $role->permission;
            return view('permission.edit', compact('role', 'permission_group'));
        }
        return redirect()->route('permission.index')->withError('Role not found!');
    }

    public function update(Request $request){
        $id = $request->id;
        $role = Role::find($id);
        if($role){
            $request->validate([
                'name' => 'required|string|min:2|max:50|unique:roles,name,'.$id,
            ]);
            
            $name = $request->name;
            $role->update([
                    'name' => $name
                ]);
            $role->syncPermissions($request->permissions);
            return redirect()->back()->withSuccess('Role Updated Successful.');
        }
        return redirect()->route('role.index')->withError('User Role not found!');

    }

    public function delete(Request $request){
        $id = $request->id;
        $role = Role::find($id);
        if($role){
            $role->delete();
            return back()->withSuccess("User Role Deleted Successful.");
        }
        return redirect()->route('role.index')->withError('User Role not found!');
    }

}
