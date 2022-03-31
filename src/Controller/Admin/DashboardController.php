<?php

namespace App\Controller\Admin;

use App\Entity\Restaurant;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\Admin\RestaurantCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        return $this->redirect($adminUrlGenerator->setController(RestaurantCrudController::class)->generateUrl());
        // return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Gram');
    }

    public function configureMenuItems(): iterable
    {
        return [
            MenuItem::linkToDashboard('Dashboard', 'fa fa-home'),
            MenuItem::linkToCrud('Restaurants', 'fa fa-restaurant', Restaurant::class),
            MenuItem::linkToCrud('Add Restaurant', 'fa fa-tags', Restaurant::class)
            ->setAction('new'),
            MenuItem::linkToCrud('Edit Restaurant', 'fa fa-tags', Restaurant::class)
            ->setAction('edit'),
            // ->setAction('show'),
            // ->setEntityId($context->getEntity()->getPrimaryKeyValue()),
            MenuItem::linkToLogout('Logout', 'fa fa-exit'),
        ];
    }

}
