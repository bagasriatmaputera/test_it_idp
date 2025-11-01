<?php

namespace App\Http\Controllers;

use App\Http\Requests\CustomerRequest;
use App\Http\Resources\CustomerResource;
use App\Services\CustomerService;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    protected CustomerService $customerService;

    public function __construct(CustomerService $customerService)
    {
        $this->customerService = $customerService;
    }

    public function index()
    {
        $fields = ['*'];
        $customers = $this->customerService->getAll($fields);
        return response()->json(CustomerResource::collection($customers));
    }

    public function show(int $id)
    {
        try {
            $fields = ['*'];
            $customer = $this->customerService->getById($id, $fields);
            return response()->json(new CustomerResource($customer));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 404);
        }
    }

    public function store(CustomerRequest $request)
    {
        try {
            $customer = $this->customerService->create($request->validated());
            return response()->json(new CustomerResource($customer), 201);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }

    public function update(CustomerRequest $request, int $id)
    {
        try {
            $customer = $this->customerService->update($id, $request->validated());
            return response()->json(new CustomerResource($customer));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }

    public function destroy(int $id)
    {
        try {
            $this->customerService->delete($id);
            return response()->json([
                'status' => 'success',
                'message' => 'Customer deleted successfully.',
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }
}
