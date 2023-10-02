<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class LoginController extends Controller
{

    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
    }

    public function login(Request $request): RedirectResponse
    {

        if (Auth()->guard('admin')->check()) {
            return redirect('dashboard');
        }

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $credentials = request()->validate(
                [
                    'email' => 'required',
                    ' password' => 'required',
                ],
                [
                    'email.required' => 'Username is required',
                    'password.required' => 'Password is required.'
                ]

            );

            if (Auth::attempt($credentials)) {

                $userAdmin = Auth::guard('admin')->user();
                $user = User::where(["id" => $userAdmin->id])->first();
                if ($user->is_admin == 0) {
                    if ($user->status == 'ACT') {
                        $request->session()->regenerate();
                        return redirect()->intended('dashboard');
                    } else {
                        Auth::guard('admin')->logout();
                        $request->session()->invalidate();
                        $request->session()->regenerateToken();
                        return back()->withErrors([
                            'email' => 'Account has been Blocked.',
                        ])->onlyInput('email');
                    }
                } else {
                    Auth::guard('admin')->logout();
                    $request->session()->invalidate();
                    $request->session()->regenerateToken();
                    return back()->withErrors([
                        'email' => 'The provided credentials do not match our records.',
                    ])->onlyInput('email');
                }
            } else {
                Auth::guard('admin')->logout();
                $request->session()->invalidate();
                $request->session()->regenerateToken();
                return back()->withErrors([
                    'email' => 'The provided credentials do not match our records.',
                ])->onlyInput('email');
            }
        }
    }

    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}
