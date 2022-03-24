<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Category;
use App\Entity\Restaurant;
use Doctrine\ORM\EntityRepository;
use App\Repository\RestaurantRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;


class HomeController extends AbstractController
{
    private $doctrine ;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine ;
    }

    public function Home() /*showAll*/
    {
      
      
      //Répository de la classe d'entité pour pouvoir passer des requêtes en BDD portant sur les users
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

    public function show()
    {
        
        $restaurantRepo = $this->doctrine->getRepository(Restaurant::class);
        $restaurants = $restaurantRepo->findAll();

        $user = $this->getUser();
        // Il faut avoir le répository d'une Classe d'entité pour pouvoir passer des requêtes en BDD portant sur
        // cette entité
        $userRepo = $this->doctrine->getRepository(User::class) ;

        // Ici, il y a une fonction que nous avons écrite dans categoryRepository, pour obtenir
        //les catégories classés par date ascendante (par ordre alphabétique),
        $userInfo = $userRepo->find($user);

        return $this->render(

          'home/home.html.twig',
          [
              "restaurants" => $restaurants,
              "user" => $userInfo ,
          ],
      ) ;
    }

    // On fait une fonction remove, pour supprimer les favoris du profil
    // Il faut mettre l'id du restaurant en paramètre pour savoir quel restaurant l'utilisateur veut supprimer (ici, on type la variable pour éviter d'éventuelles erreurs)
    public function remove(int $restaurant, RestaurantRepository $restaurantRepo){
        // On utilise la méthode find car on ne doit trouver qu'un restaurant
        $restaurant = $restaurantRepo->find($restaurant);
        // On va chercher le repository de la classe User pour dialoguer avec la base de données via Doctrine
        $userConnected = $this->getUser();

        // On utilise la fonction removeRestaurant qui appartient à la classe User   
        $userConnected->removeRestaurant($restaurant);

        // On utilise l'EntityManager pour apporter des modifications à la base de données
        $em=$this->doctrine->getManager();
        // Avec flush, si il n'y a pas d'erreur, la modification s'exécute sur l'objet marqué : ça y est, le restaurant est supprimé des favoris
        $em->flush();

        // Après avoir exécuté cette fonction ayant pour paramètre l'id du restaurant présente dans l'URL, il faut une nouvelle route, qu'on indique ici
        return $this->redirectToRoute('gram_main_home');
    }  
  }