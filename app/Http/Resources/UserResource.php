<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'sub_id' => $this->sub_id,
            'sub_type' => $this->sub_type,
            'status' => $this->status,
            'name' => $this->user->name,
            'email' => $this->user->email,
            'industry' => $this->user->industry,
            'created_at' => date('d F, Y', strtotime($this->created_at)),
        ];
    }
}
