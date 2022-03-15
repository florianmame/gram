<?php
namespace App\Controller;

use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
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

        return $this->render(
            
        )
    }

    public function show($idRestaurant) {

    }

}