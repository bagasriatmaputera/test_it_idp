<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderSummaryResource;
use App\Services\OrderSummaryServices;
use Illuminate\Http\JsonResponse;

class OrderSummaryController extends Controller
{
    protected OrderSummaryServices $orderSummaryServices;

    public function __construct(OrderSummaryServices $orderSummaryServices)
    {
        $this->orderSummaryServices = $orderSummaryServices;
    }

    public function index(): JsonResponse
    {
        $fields = ['id', 'no_order', 'nama_customer', 'tanggal_transaksi', 'total_harga'];
        $orders = $this->orderSummaryServices->getAll($fields);

        return response()->json(OrderSummaryResource::collection($orders));
    }

    public function show(int $id): JsonResponse
    {
        try {
            $order = $this->orderSummaryServices->getById($id, ['*']);
            return response()->json(new OrderSummaryResource($order));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data tidak ditemukan: ' . $th->getMessage(),
            ], 404);
        }
    }

    public function destroy(int $id): JsonResponse
    {
        try {
            $this->orderSummaryServices->delete($id);

            return response()->json([
                'status' => 'success',
                'message' => 'Order summary berhasil dihapus.',
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal menghapus data: ' . $th->getMessage(),
            ], 500);
        }
    }
}
