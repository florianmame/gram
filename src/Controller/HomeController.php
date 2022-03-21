<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityRepository;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;


class HomeController extends AbstractController
{
    private $doctrine ;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine ;
    }

    public function CategoryHome() /*showAll*/
    {
        // Il faut avoir le répository d'une Classe d'entité pour pouvoir passer des requêtes en BDD portant sur
        // cette entité
        $categoryRepo = $this->doctrine->getRepository(Category::class) ;

        // Ici, il y a une fonction que nous avons écrite dans categoryRepository, pour obtenir
        //les catégories classés par date ascendante (par ordre alphabétique),
        $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);
        // $restoRepo = $this->doctrine->getRepository(Restaurant::class);
        $restaurant = $restaurantRepo->findAll();
        
        $allCategories = $categoryRepo->findBy(
          [
          ],
          [
              "name" => "ASC",
          ]
        )  ;

        return $this->render(
          'home/home.html.twig',
          [
            "restaurant" => $restaurant ,  
            "allCategories" => $allCategories ,
          ],
      ) ;
    }



    
    
  }