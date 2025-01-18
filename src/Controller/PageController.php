<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

// Page à propos, cgv, cgu etc..
class PageController extends AbstractController
{
    #[Route('/', name: 'app_accueil')]
    public function index(): Response
    {
        return $this->render('page/accueil.html.twig', array());
    }

    #[Route('/decouvrez-le-bts-sio', name: 'app_sio')]
    public function sio(): Response
    {
        return $this->render('page/sio.html.twig', array());
    }
}
