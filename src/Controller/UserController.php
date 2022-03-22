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