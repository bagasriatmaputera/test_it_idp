<?php

namespace App\Http\Controllers;

use App\Services\DashboardServices;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    protected DashboardServices $dashboardServices;
    public function __construct(DashboardServices $dashboardServices)
    {
        $this->dashboardServices = $dashboardServices;
    }
    public function getDashboard()
    {
        return $this->dashboardServices->getKpi();
    }
}
