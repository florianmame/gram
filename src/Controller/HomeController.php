<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Restaurant;
use App\Entity\User;
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

    public function Home() /*showAll*/
    {
      
      
      //Répository de la Classe d'entité pour pouvoir passer des requêtes en BDD portant sur les users
      $userRepo = $this->doctrine->getRepository(User::class);
      
      //Répository de la Classe d'entité pour pouvoir passer des requêtes en BDD portant sur les catégories
      $categoryRepo = $this->doctrine->getRepository(Category::class);
      
        
      //Répository de la Classe d'entité pour pouvoir passer des requêtes en BDD portant sur les restaurants
      $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);
       
      // Ici, il y a une fonction que nous avons écrite dans restaurantRepository, pour obtenir le findAll() et qu'on manipulera dans la variable $restaurant
      $users = $userRepo->findAll();

      // Ici, il y a une fonction que nous avons écrite dans restaurantRepository, pour obtenir le findAll() et qu'on manipulera dans la variable $restaurant
      $restaurants = $restaurantRepo->findAll();
        
      // Ici, il y a une fonction que nous avons écrite dans categoryRepository, pour obtenir le findby() et qu'on manipulera dans la variable $allCategories
      //les catégories sont classés par nom ascendant (par ordre alphabétique),
      $allCategories = $categoryRepo->findBy(
          [
          ],
          [
              "name" => "ASC",

          ]
        )  ;
        
            // On retourne les résultats de toutes les variables. Dans render on prépare l'affichage qui se fera dans home.html.twig
        return $this->render(
          'home/home.html.twig',
          [
            "users" => $users,
            "restaurants" => $restaurants ,  
            "allCategories" => $allCategories ,
            
          ],
      ) ;
    }



    
    
  }