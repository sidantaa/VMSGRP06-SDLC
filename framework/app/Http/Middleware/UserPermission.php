<?php

/*
@copyright

Fleet Manager v7.0

Copyright (C) 2017-2023 Hyvikk Solutions <https://hyvikk.com/> All rights reserved.
Design and developed by Hyvikk Solutions <https://hyvikk.com/>

 */

namespace App\Http\Middleware;

use Auth;
use Closure;

class UserPermission {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next, $m) {

		if ($m != "S") {
			if (Auth::user()->user_type == "S" || Auth::user()->user_type == "O") {
				$modules = unserialize(Auth::user()->getMeta('module'));

				//dd($modules);
				if ($m == 0 && Auth::user()->user_type == "S") {
					return $next($request);
				}
				if (!in_array($m, $modules)) {
					abort(404);
					// return redirect("/");
				}
			} else if (Auth::user()->user_type == "D") {
				if ($m != 8) {
					abort(404);
					// return redirect("/");
				}
			} else if (Auth::user()->user_type == "C") {
				if ($m != 3) {
					abort(404);
					// return response()->json(['error' => 'Unauthenticated.'], 401);
				}
			}
		}
		if ($m == "S") {
			if (Auth::user()->user_type != "S") {
				abort(404);
			}
		}

		return $next($request);
	}
}
