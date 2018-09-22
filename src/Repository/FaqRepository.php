<?php

namespace App\Repository;

use App\Entity\Faq;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Faq|null find($id, $lockMode = null, $lockVersion = null)
 * @method Faq|null findOneBy(array $criteria, array $orderBy = null)
 * @method Faq[]    findAll()
 * @method Faq[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FaqRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Faq::class);
    }

    /**
     * @return Faq[] Returns an array of Faq objects
     */
    public function findRandom()
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.id < :val')
            ->setParameter('val', 200)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(2)
            ->getQuery()
            ->getResult()
        ;
    }

    /**
     * @return Faq[] Returns an array of Faq objects
     */
    public function findRandomFaq()
    {
        $id_limits = $this->createQueryBuilder('f')
            ->select('MIN(f.id)', 'MAX(f.id)')
            ->getQuery()
            ->getOneOrNullResult();
        $random_possible_id = rand($id_limits[1], $id_limits[2]);

        return $this->createQueryBuilder('f')
            ->where('f.id >= :random_id')
            ->setParameter('random_id', $random_possible_id)
            ->setMaxResults(1)
            ->getQuery()
            ->getOneOrNullResult();
    }



    /*
    public function findOneBySomeField($value): ?Faq
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
