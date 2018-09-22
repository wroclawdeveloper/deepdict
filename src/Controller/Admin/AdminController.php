<?php

namespace App\Controller\Admin;

use App\Entity\Faq;
use JavierEguiluz\Bundle\EasyAdminBundle\Controller\AdminController as BaseAdminController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class AdminController extends BaseAdminController
{
    public function exportAction()
    {
        throw new \RuntimeException('Action for exporting an entity not defined');
    }

    /**
     * @Route("/dashboard", name="admin_dashboard")
     */
    public function dashboardAction()
    {
        $em = $this->getDoctrine()->getManager();
        $genusRepository = $em->getRepository(Faq::class);
        $faq = new Faq();

        return $this->render('dashboard.html.twig', [
            'genusCount' => 23,
            'publishedGenusCount' => 12,
            'randomGenus' => $faq
        ]);
    }
}
