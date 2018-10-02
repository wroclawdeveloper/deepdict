<?php

namespace App\Controller\Admin;

use App\Entity\Faq;
use JavierEguiluz\Bundle\EasyAdminBundle\Controller\AdminController as BaseAdminController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use App\Utils\YetiRest;

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

    /**
     * @Route("/faqsynchronization", name="faq_synchronization")
     */
    public function faqsynchronizationAction()
    {
        $em = $this->getDoctrine()->getManager();
        $yr = new YetiRest('http://sasza.webmaster.etim.pl/yeti420com', 'test', 'sekret', 'mpl5c04tZVGuoAk1waWXeiqOPzrSb82T');
        try {
            if ($yr->login('test', 'sekret')) {     // logging into webservice
                $fields = array('question', 'faq_answer', 'assigned_user_id');
                $cond = Array(array('fieldName' => 'question', 'value' => 'test', 'operator' => 'n'));
                $yfaqs = $yr->listRecordsCond('Faq', 5000, 0, $fields, $cond);
                if ($yfaqs['count'] > 0) {
                    foreach($yfaqs['records'] as $k => $yfaq) {
                        $duplicates = $em->getRepository('App:Faq')->findBy(['question' => $yfaq['question']]);
                        if(count($duplicates) == 0) {
                            $faq = new Faq();
                            $faq->setQuestion($yfaq['question']);
                            $faq->setAnswer($yfaq['faq_answer']);
                            $faq->setUserId(1);
                            $faq->setCreatedAt(new \DateTime());
                            $faq->setUpdatedAt(new \DateTime());
                            $em->persist($faq);
                            $em->flush();
                        }
                    }
                }
            }
            if (!$yr->logout()) echo 'uuups, tried to logout, but session still alive...';
        } catch (Exception $e) {
            $output->writeln('Nie udało się pobrać mail klienta z Yetiforce');
            $output->writeln('Wystąpił błąd: ');
            $output->writeln($e->getCode());
            $output->writeln($e->getFile());
            $output->writeln($e->getMessage());
            $output->writeln($e->getTraceAsString());
        }

        $em = $this->getDoctrine()->getManager();
        $genusRepository = $em->getRepository(Faq::class);
        $faq = new Faq();

        return $this->render('dashboard.html.twig', [
            'genusCount' => 23,
            'publishedGenusCount' => 12,
            'randomGenus' => $faq
        ]);
    }

    /**
     * @Route("/knowledgebase", name="admin_knowledgebase")
     */
    public function knowledgebaseAction()
    {
        $em = $this->getDoctrine()->getManager();
        $bases = $em->getRepository('App:KnowledgeBase')->findAll();

        return $this->render('knowledgebase.html.twig', [
            'bases' => $bases
        ]);
    }

    /**
     * @Route("/article", name="admin_article")
     */
    public function articleAction()
    {
        $em = $this->getDoctrine()->getManager();
        $bases = $em->getRepository('App:Article')->findAll();

        return $this->render('article.html.twig', [
            'bases' => $bases
        ]);
    }
}
