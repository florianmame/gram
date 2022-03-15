<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Restaurant;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;



class CategoryController extends AbstractController
{
    private $doctrine ;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->doctrine = $doctrine ;
    }

    public function showAll()
    {
        // Il faut avoir le répository d'une Classe d'entité pour pouvoir passer des requêtes en BDD portant sur
        // cette entité
        $categoryRepo = $this->doctrine->getRepository(Category::class) ;

        // Ici, il y a une fonction que nous avons écrite dans categoryRepository, pour obtenir
        //les catégories classés par date ascendante (par ordre alphabétique),
        $allCategories = $categoryRepo->findBy(
          [
          ],
          [
              "name" => "ASC",
          ]
        )  ;

        return $this->render(
          'category/showAll.html.twig',
          [
              "allCategories" => $allCategories ,
          ],
      ) ;
    }

    
  }