<?php

namespace App\Controller\Admin;

use App\Entity\Phrase;
use App\Service\MarkdownTransformer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AdminController as EasyAdminController;
use App\Utils\YetiRest;

class PhraseController extends EasyAdminController
{

    /**
     * @param Phrase $entity
     */
    protected function prePersistEntity($entity)
    {
        $entity->setCreatedAt(new \DateTime());
        $entity->setUpdatedAt(new \DateTime());
        $entity->setUserId(1);
    }

}
