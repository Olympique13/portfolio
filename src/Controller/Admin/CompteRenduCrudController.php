<?php

namespace App\Controller\Admin;

use App\Entity\CompteRendu;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class CompteRenduCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return CompteRendu::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            AssociationField::new('stage'),
            TextField::new('message'),
        ];
    }

}
