<?php
namespace App\Entity;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\DBAL\Types\TextType;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ProductRepository")
 */
class Product
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;
    /**
     * @ORM\Column(type="integer")
     */
    private $count;

    /**
     * @ORM\Column(type="text")
     */	
    private $details;

    public function getId(): ?int
    {
        return $this->id;
    }
    public function getTitle(): ?string
    {
        return $this->title;
    }
    public function getCount(): ?int
    {
        return $this->count;
    }
    public function getDetails(): ?string
    {
       return $this->details;
    }
}