<?php

namespace App\Controller\Admin;

use App\Entity\Stage;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TelephoneField;
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
            TextField::new('entreprise'),
            TextField::new('adresse')->hideOnIndex(),
            TelephoneField::new('telephone'),
            TextField::new('tuteur'),
            EmailField::new('email_tuteur', '@Mail Tuteur'),
            TextField::new('profession'),
            DateField::new('debut')->hideOnIndex(),
            DateField::new('fin')->hideOnIndex(),
        ];
    }
}
