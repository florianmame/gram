<?php

namespace App\Controller\Admin;

use App\Entity\Restaurant;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class RestaurantCrudController extends AbstractCrudController
{

    private $adminUrlGenerator;

    public function __construct(AdminUrlGenerator $adminUrlGenerator)
    {
        $this->adminUrlGenerator = $adminUrlGenerator;
    }


    public static function getEntityFqcn(): string
    {
        return Restaurant::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            TextEditorField::new('description'),
            TextField::new('address'),
            TextField::new('zipCode'),
            TextField::new('city'),
            IntegerField::new('phone'),
            TextEditorField::new('openingTimes'),
            TextField::new('urlPhoto'),
        ];
    }

}
