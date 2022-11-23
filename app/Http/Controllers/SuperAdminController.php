<?php

namespace App\Http\Controllers;

use App\Client;
use App\User;
use App\Subscribe;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;

class SuperAdminController extends Controller
{
    public function index(Request $request)
    {
        $users = User::where('status', '!=', 'admin')->paginate(10);
        return response()->json([
            'status' => true,
            'message' => 'List fetch successfully',
            'users' => $users
        ], 200);
    }

    public function subscribeUsers(Request $request)
    {
        return UserResource::collection(Subscribe::paginate(10));
    }

    public function dashboardData(Request $request)
    {
        $total_users = User::where('status', '!=', 'admin')->count();
        $total_subscribes = Subscribe::count();
        $total_clients = Client::count();
        return response()->json([
            'status' => true,
            'message' => 'List fetch successfully',
            'total_users' => $total_users,
            'total_subscribes' => $total_subscribes,
            'total_clients' => $total_clients
        ], 200);
    }
}
