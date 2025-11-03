<?php

namespace App\Services;

use App\Repositories\DashboardRepositories;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

class DashboardServices
{
    protected DashboardRepositories $dashboardRepositories;
    public function __construct(DashboardRepositories $dashboardRepositories)
    {
        $this->dashboardRepositories = $dashboardRepositories;
    }
    public function getKpi()
    {
        return $this->dashboardRepositories->getKpi();
    }
}
