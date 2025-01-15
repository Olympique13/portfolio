<?php

namespace App\DataFixtures;

use App\Entity\Stage;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class StageFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $contact = new Stage();
        $contact->setAdresse('6 Rue Berthelot');
        $contact->setEntreprise('Synergie Family');
        $contact->setTuteur('Baptiste GAUTHIER');
        $contact->setProfession('Développer Full Stack');
        $contact->setTelephone('0491798536');
        $contact->setDebut(new \DateTimeImmutable('2025-01-07'));
        $contact->setFin(new \DateTimeImmutable('14-02-2025'));

        $manager->persist($contact);
        $manager->flush();
    }

    public static function getGroups(): array
    {
        return ['stage'];
    }
}
