<?php

namespace App\Repository;

use App\Entity\CompteRendu;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<CompteRendu>
 */
class CompteRenduRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CompteRendu::class);
    }

        public function findByEntreprise(): array
        {
            return $this->createQueryBuilder('c')
                ->getQuery()
                ->getResult()
            ;
        }

    public function findByStage(int $stageId): array
    {
        return $this->createQueryBuilder('c')
            ->innerJoin('c.stage', 's')
            ->andWhere('c.stage = :stageId')
            ->setParameter('stageId', $stageId)
            ->getQuery()
            ->getResult();
    }

}