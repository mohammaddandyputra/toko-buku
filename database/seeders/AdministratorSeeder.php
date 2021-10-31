<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdministratorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {   
        $administrator = new \App\Models\User;
        $administrator->username = 'administrator';
        $administrator->name = 'Site Administrator';
        $administrator->email = 'administrator@olshop.com';
        $administrator->roles = json_encode(['ADMIN']);
        $administrator->password = Hash::make('123123123');
        $administrator->avatar = 'test.jpg';
        $administrator->address = 'Griya Arum Sari, Jagabaya, Parungpanjang';
        $administrator->phone = '081296442745';

        $administrator->username = 'user';
        $administrator->name = 'Site User';
        $administrator->email = 'user@olshop.com';
        $administrator->roles = json_encode(['ADMIN']);
        $administrator->password = Hash::make('123123123');
        $administrator->avatar = 'test.jpg';
        $administrator->address = 'Griya Arum Sari, Jagabaya, Parungpanjang';
        $administrator->phone = '081296442745';

        $administrator->save();

        $this->command->info('User admin berhasil disisipkan');

        
    }
}
