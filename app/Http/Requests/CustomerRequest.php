<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nama_customer' => 'required|string|max:50',
            'alamat' => 'required|string|min:5|max:255',
            'kodepos' => 'required|digits:5',
            'no_handphone' => 'required|string|min:10|max:15|unique:customers,no_handphone,' . $this->route('customer'),
            'email' => 'required|email|unique:customers,email,' . $this->route('customer'),
            'tanggal_bergabung' => 'required|date',
        ];
    }
}
