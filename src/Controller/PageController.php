<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
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

    #[Route('/competences', name: 'app_competence')]
    public function competence(): Response
    {
        return $this->render('page/competence.html.twig', array());
    }

    #[Route('/contact', name: 'app_contact')]
    public function formContact(Request $request, EntityManagerInterface $entityManager): Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted()) {
            if ($form->isValid()){
                $entityManager->persist($contact);
                $entityManager->flush();

                return new JsonResponse([
                    'code' => 200,
                    'message' => 'Merci ! Le formulaire est validé',
                ]);
            } else {
                $errors = [];
                foreach ($form->getErrors(true) as $error) {
                    $errors[$error->getOrigin()->getName()] = $error->getMessage();
                }

                return new JsonResponse([
                    'code' => 400,
                    'errors' => $errors,
                ]);
            }
        }

        return $this->render('page/contact.html.twig', [
            'ContactForm' => $form->createView()
        ]);
    }
}
