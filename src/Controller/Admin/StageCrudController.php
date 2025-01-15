<?php

namespace App\Controller\Admin;

use App\Entity\Stage;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class StageCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Stage::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('adresse')->hideOnIndex(),
            TextField::new('entreprise'),
            TextField::new('telephone'),
            TextField::new('tuteur'),
            TextField::new('profession'),
            DateField::new('debut')->hideOnIndex(),
            DateField::new('fin')->hideOnIndex(),
        ];
    }
}
