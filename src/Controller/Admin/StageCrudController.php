<?php

namespace App\Controller\Admin;

use App\Entity\Stage;
use Vich\UploaderBundle\Form\Type\VichFileType;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TelephoneField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;

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
            SlugField::new('slug')->setTargetFieldName('entreprise')->hideOnIndex()->hideOnForm(),
            TextField::new('adresse')->hideOnIndex(),
            TelephoneField::new('telephone'),
            TextField::new('tuteur'),
            EmailField::new('email_tuteur', '@Mail Tuteur'),
            TextField::new('profession'),
            TextField::new('imageFile', 'Image')->setFormType(VichFileType::class)->onlyOnForms(),
            ImageField::new('imageName', 'LOGO Entreprise')->setBasePath('images/stage')->onlyOnIndex(),
            DateField::new('debut')->hideOnIndex(),
            DateField::new('fin')->hideOnIndex(),
            BooleanField::new('isVisible', 'Afficher'),
        ];
    }
}
