<?php

namespace App\Repository;

use App\Entity\KnowledgeBase;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method KnowledgeBase|null find($id, $lockMode = null, $lockVersion = null)
 * @method KnowledgeBase|null findOneBy(array $criteria, array $orderBy = null)
 * @method KnowledgeBase[]    findAll()
 * @method KnowledgeBase[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class KnowledgeBaseRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, KnowledgeBase::class);
    }

//    /**
//     * @return KnowledgeBase[] Returns an array of KnowledgeBase objects
//     */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('k')
            ->andWhere('k.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('k.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?KnowledgeBase
    {
        return $this->createQueryBuilder('k')
            ->andWhere('k.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
