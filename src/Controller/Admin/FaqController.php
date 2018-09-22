<?php

namespace App\Controller\Admin;

use App\Entity\Faq;
use App\Service\MarkdownTransformer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AdminController as EasyAdminController;
use App\Utils\YetiRest;

class FaqController extends EasyAdminController
{

    /**
     * @param Faq $entity
     */
    protected function prePersistEntity($entity)
    {
        $entity->setUpdatedAt(new \DateTime());
    }

}
