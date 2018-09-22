<?php

namespace App\Controller;

use App\Exception\NoCookieForYou;
use App\Exception\NoCookiesLeft;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use App\Entity\Faq;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

class MainController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function homepageAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $genusRepository = $em->getRepository(Faq::class);

        $data = json_decode($request->getContent(), true);

        if('POST' === $request->getMethod()) {
            $data = json_decode($request->getContent(), true);
            $randomfaq = $em->getRepository('App:Faq')
                ->findRandomFaq();

            return new JsonResponse(['status' => 200, 'return' => ['question' => $randomfaq->getQuestion(), 'answer' => $randomfaq->getAnswer()], 'error' => '']);
        }

        $faqs = $em->getRepository('App:Faq')
            ->findRandom();

        return $this->render('homepage.html.twig', [
            'faqs' => $faqs
        ]);
    }
}
