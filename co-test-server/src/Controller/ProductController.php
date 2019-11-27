<?php
namespace App\Controller;
use App\Entity\Product;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
class ProductController extends ApiController
{
    /**
    * @Route("/products", methods="GET")
    */
    public function index(ProductRepository $productRepository)
    {
        $products = $productRepository->transformAll();
        return $this->respond($products);
    }
    
}