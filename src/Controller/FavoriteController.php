<?php
namespace App\Controller;

use App\Entity\Restaurant;
use App\Entity\User;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class FavoriteController extends AbstractController {

    private $doctrine;

    public function __construct(ManagerRegistry $doctrine) {
        $this->doctrine = $doctrine;
    }

    public function showAll() {
        $userRepo = $this->doctrine->getRepository(User::class);
        $favorites = $userRepo->findAll();

        return $this->render(
            'favorite/showAll.html.twig',
            [
                "favorites" => $favorites,
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