<?php

namespace App\Controller\Admin;

use App\Entity\Contact;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ContactCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Contact::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        
        return $crud
        ->setDefaultSort(['sentAt' => 'DESC'])
        ->setPaginatorPageSize(15)
        ->setPaginatorRangeSize(3)
        ->setPageTitle('index', 'Message de contact');
    }

    public function configureActions(Actions $actions): Actions
    {        
        return parent::configureActions($actions)
            ->add(Crud::PAGE_INDEX, Action::DETAIL);
            // ->disable(Action::NEW)
            // ->disable(Action::EDIT)
            // ->disable(Action::DELETE);
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('nom', 'Nom'),
            TextField::new('prenom', 'Prénom'),
            TextField::new('email', '@Mail'),
            TextField::new('nom'),
            TextField::new('sujet', 'Sujet'),
            TextEditorField::new('message', 'Message'),
            DateTimeField::new('sentAt', 'Envoyé le')->setFormat('dd/MM/y à HH:mm'),
        ];
    }
}
