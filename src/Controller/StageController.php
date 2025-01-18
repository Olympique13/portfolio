<?php

namespace App\Controller;

use App\Repository\StageRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class StageController extends AbstractController
{
    #[Route('/stage', name: 'app_stage')]
    public function index(StageRepository $stageRepository): Response
    {
        $stage = $stageRepository->findAll();


        return $this->render('stage/index.html.twig', [
            'stage' => $stage,
        ]);
    }
}
