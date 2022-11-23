<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use App\Notifications\CustomResetPassword;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new CustomResetPassword($token));
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'industry',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function invoices()
    {
        return $this->hasMany(Invoice::class, 'user_id', 'id')->with('documents');
    }

    public function companyDetail()
    {
        return $this->hasOne(companyDetail::class, 'user_id', 'id');
    }

    public function subscriptionDetail()
    {
        return $this->hasOne(Subscribe::class, 'user_id', 'id')->where('status', 1);
    }
}
