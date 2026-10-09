<?php

namespace Tests\App\Feature;

use CodeIgniter\Test\CIUnitTestCase;
use CodeIgniter\Test\FeatureTestTrait;

class PagesTest extends CIUnitTestCase
{
    use FeatureTestTrait;

    public function testAllRequiredPagesLoad(): void
    {
        foreach (['/', '/about', '/customers', '/users'] as $path) {
            $this->get($path)->assertStatus(200);
        }
    }

    public function testCustomerPageContainsStaticRecords(): void
    {
        $result = $this->get('/customers');
        $result->assertSee('Alyssa Santos');
        $result->assertSee('Gabriel Torres');
    }

    public function testUserPageContainsStaticRecords(): void
    {
        $result = $this->get('/users');
        $result->assertSee('admin.marc');
        $result->assertSee('support.nica');
    }
}
