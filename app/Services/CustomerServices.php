<?php

namespace App\Services;

use App\Repositories\CustomerRepositories;
use App\Repositories\CustomerRepository;
use Illuminate\Support\Carbon;

class CustomerServices
{
    protected CustomerRepositories $customerRepository;
    public function __construct(CustomerRepositories $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }
    public function getAll(array $fields)
    {
        // $fields = [''];
        return $this->customerRepository->getAll($fields ?? ['*']);
    }
    public function getById(int $id, array $fields)
    {
        return $this->customerRepository->getById($id, $fields ?? ['*']);
    }
    public function create(array $data)
    {
        $data['tanggal_bergabung'] = Carbon::now()->format('Y-m-d');
        return $this->customerRepository->create($data);
    }
    public function update(int $id, array $data)
    {
        return $this->customerRepository->update($id, $data);
    }
    public function delete(int $id)
    {
        return $this->customerRepository->delete($id);
    }
}
