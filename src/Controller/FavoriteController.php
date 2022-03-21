<?php
namespace App\Controller;

use App\Entity\Restaurant;
use App\Entity\User;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityRepository;
// Doctrine\ORM\EntityRepository propose plusieurs méthodes pour récupérer les entités (find, findBy etc)
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class FavoriteController extends AbstractController {
// On a toujours besoin d'AbstractController, qui contient des méthodes nécessaires à la gestion de tout contrôleur

    private $doctrine;

    public function __construct(ManagerRegistry $doctrine) {
        // On a besoin du ManagerRegistry de Doctrine pour aller chercher les données dans la base de données
        $this->doctrine = $doctrine;
    }

    public function showAll() {
        // On a besoin de montrer tous les favoris, on fait donc une fonction showAll()
        $userRepo = $this->doctrine->getRepository(User::class);
        // On va chercher la classe User dans le repository grâce à Doctrine, car le repository contient tout ce qui touche à la récupération des données
        $favorites = $userRepo->findAll();
        // On utilise la méthode findAll(), car on n'a pas besoin de trier les favoris (avec findBy() ou autre)

        return $this->render(
            // La méthode render() permet de gérer l'affichage
            'favorite/home.html.twig',
            // Voici la route qui permet de relier le contrôleur à la vue
            [
                "favorites" => $favorites,
                // findAll() renvoie un tableau, que l'on configure ici
                // "favorites" sera le nom de la variable $favorites dans le twig
            ]
            );
    }

    // public function show() {
    //     $userRepo = $this->doctrine->getRepository(User::class);
    // }

    // public function create() {
    //     $userRepo = $this->doctrine->getRepository(User::class);
    // }

    // public function remove() {
    //     $userRepo = $this->doctrine->getRepository(User::class);
    // }

}