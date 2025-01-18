<?php

namespace App\Controller;

use App\Entity\CompteRendu;
use App\Repository\CompteRenduRepository;
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

    #[Route('/stage/{slug}', name: 'app_stage_show')]
    public function show(String $slug, StageRepository $stageRepository, CompteRenduRepository $compteRenduRepository): Response
    {
        $stage = $stageRepository->findOneBy(['slug' => $slug]);
        if (!$stage) {
            throw $this->createNotFoundException('Stage non trouvé.');
        }


        $compteRendu = $compteRenduRepository->findByStage($stage->getId());


        return $this->render('stage/compteRendu.html.twig', [
            'stage' => $stage,
            'compteRendu' => $compteRendu,
        ]);
    }
}
