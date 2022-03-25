<?php
namespace App\Controller;

use App\Entity\Category;
use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class RestaurantController extends AbstractController {

    private $doctrine;

    public function __construct(ManagerRegistry $doctrine) {
        $this->doctrine = $doctrine;
    }

    public function showAll() {
        $categoryRepo = $this->doctrine->getRepository(Category::class);
        $categories = $categoryRepo->findAll();

        return $this->render(
            'category/showAll.html.twig',
            [
                "categories" => $categories,
            ]
        );
    }
    


    public function show($idRestaurant) {
        $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);

        $restaurant = $restaurantRepo->find($idRestaurant);

        return $this->render(
            'category/showAll.html.twig',
            [
                "restaurant" => $restaurant,
            ]
        );
    }


    public function profile($idRestaurant) {
      $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);

      $restaurant = $restaurantRepo->find($idRestaurant);

      return $this->render(
          'profile/show.html.twig',
          [
              "restaurant" => $restaurant,
          ]
      );
  }
}