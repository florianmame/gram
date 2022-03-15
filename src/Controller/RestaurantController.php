<?php
namespace App\Controller;

use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\HttpFoundation\Request;

class RestaurantController {

    private $doctrine;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine;
    }

    public function showAll() {
        $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);

        //Faire le findBy par catégorie et chosir un ordre d'affichage
        $allRestaurants = $restaurantRepo->findBy();

        return $this->render(
            'restaurant/showAll.html.twig',
            [
                "allRestaurants" => $allRestaurants,
            ]
            );
    }

    public function show($idRestaurant) {
        $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);

        $restaurant = $restaurantRepo->find($idRestaurant);

        return $this->render(
            'restaurant/show.html.twig',
            [
                "restaurant" => $restaurant,
            ]
        );
    }

}