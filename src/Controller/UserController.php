<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;


class UserController extends AbstractController
{
    private $doctrine ;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine ;
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

        ///////////// Si on avait fait le remove à l'intérieur de show (à supprimer) //////////////////////////
        // foreach (restaurant as $restaurants) {
        //     $entityManager = $this->doctrine->getManager();
        //     $entityManager->remove;
        //     $entityManager->flush();
        // }

        return $this->render(

          'profile/show.html.twig',
          [
              "restaurants" => $restaurants,
              "user" => $userInfo ,
          ],
      ) ;
    }

    // On fait une fonction remove, pour supprimer les favoris du profil
    // Il faut mettre idRestaurant en paramètre pour savoir quel restaurant l'utilisateur veut supprimer
    public function remove($idRestaurant){
        // On va chercher le repository de la classe User pour dialoguer avec la base de données via Doctrine
        $restaurantRepo = $this->doctrine->getRepository(User::class);
        // On utilise la méthode find car on ne doit trouver qu'un restaurant
        // Du côté de la vue (show.html.twig), on ira récupérer l'id du restaurant dans l'url générée par le lien cliqué
        $restaurant = $restaurantRepo->find($idRestaurant);

        // On utilise l'EntityManager pour apporter des modifications à la base de données
        $em=$this->doctrine->getManager();
        // Dans le cas d'une suppression, on utilise remove, et non persist, pour marquer l'objet à supprimer
        $em->remove($restaurant);
        // Avec flush, si il n'y a pas d'erreur, la modification s'exécute sur l'objet marqué : ça y est, le restaurant est supprimé des favoris
        $em->flush();

        // Après avoir exécuté cette fonction ayant pour paramètre l'id du restaurant présente dans l'URL, il faut une nouvelle route, qu'on indique ici
        return $this->redirectToRoute('gram_profile_show');
    }

    public function Parameter($user)
    {
        // Il faut avoir le répository d'une Classe d'entité pour pouvoir passer des requêtes en BDD portant sur
        // cette entité
        $userRepo = $this->doctrine->getRepository(User::class) ;

        // Ici, il y a une fonction que nous avons écrite dans categoryRepository, pour obtenir
        //les catégories classés par date ascendante (par ordre alphabétique),
        $userInfo = $userRepo->find($user);

        return $this->render(
          'parameter/show.html.twig',
          [
              "user" => $userInfo ,
          ],
      ) ;
    
  }

}