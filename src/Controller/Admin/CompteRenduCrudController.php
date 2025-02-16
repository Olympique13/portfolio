<?php

namespace App\Controller\Admin;

use App\Entity\Stage;
use App\Entity\CompteRendu;
use Doctrine\ORM\EntityManagerInterface;
use Vich\UploaderBundle\Form\Type\VichFileType;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class CompteRenduCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return CompteRendu::class;
    }

    private EntityManagerInterface $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('titre'),
            SlugField::new('slug', 'Slug')->setTargetFieldName('titre')->hideOnIndex(),
            AssociationField::new('stage', 'Entreprise')
                ->setLabel('Entreprise')
                ->setFormTypeOptions([
                    'choice_label' => function (Stage $stage) {
                        return $stage->getId() . ' - ' . $stage->getEntreprise();
                    },
                ])
                ->formatValue(function ($value, $entity) {
                    return $entity->getStage()->getEntreprise();
                }),
            TextEditorField::new('message')->setTrixEditorConfig([
                'blockAttributes' => [
                    'default' => ['tagName' => 'p'],
                    'heading1' => ['tagName' => 'h2'],
                ]
            ]),
            TextField::new('imageFile', 'Image')->setFormType(VichFileType::class)->onlyOnForms(),
            ImageField::new('imageName', 'Image stage')->setBasePath('images/compteRendu')->onlyOnIndex(),
        ];
    }
}
