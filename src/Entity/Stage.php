<?php

namespace App\Entity;

use App\Repository\StageRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Gedmo\Mapping\Annotation as Gedmo;


#[ORM\Entity(repositoryClass: StageRepository::class)]
class Stage
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $adresse = null;

    #[ORM\Column(length: 255)]
    private ?string $entreprise = null;

    #[ORM\Column(length: 255)]
    private ?string $tuteur = null;

    #[ORM\Column(length: 255)]
    private ?string $profession = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $debut = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $fin = null;

    #[ORM\Column(length: 15)]
    private ?string $telephone = null;

    #[ORM\Column(length: 255)]
    private ?string $email_tuteur = null;

    #[ORM\OneToMany(mappedBy: 'stage', targetEntity: CompteRendu::class)]
    private Collection $compteRendus;

    #[ORM\Column(length: 255)]
    private ?string $logo = null;

    #[ORM\Column(length: 255)]
    #[Gedmo\Slug(fields: ['entreprise'])]
    private ?string $slug = null;

    public function __construct()
    {
        $this->compteRendus = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): static
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getEntreprise(): ?string
    {
        return $this->entreprise;
    }

    public function setEntreprise(string $entreprise): static
    {
        $this->entreprise = $entreprise;

        return $this;
    }

    public function getTuteur(): ?string
    {
        return $this->tuteur;
    }

    public function setTuteur(string $tuteur): static
    {
        $this->tuteur = $tuteur;

        return $this;
    }

    public function getProfession(): ?string
    {
        return $this->profession;
    }

    public function setProfession(string $profession): static
    {
        $this->profession = $profession;

        return $this;
    }

    public function getDebut(): ?\DateTimeImmutable
    {
        return $this->debut;
    }

    public function setDebut(\DateTimeImmutable $debut): static
    {
        $this->debut = $debut;

        return $this;
    }

    public function getFin(): ?\DateTimeImmutable
    {
        return $this->fin;
    }

    public function setFin(\DateTimeImmutable $fin): static
    {
        $this->fin = $fin;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(string $telephone): static
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getEmailTuteur(): ?string
    {
        return $this->email_tuteur;
    }

    public function setEmailTuteur(string $email_tuteur): static
    {
        $this->email_tuteur = $email_tuteur;

        return $this;
    }

    /**
     * @return Collection<int, CompteRendu>
     */
    public function getCompteRendus(): Collection
    {
        return $this->compteRendus;
    }

    public function addCompteRendu(CompteRendu $compteRendu): static
    {
        if (!$this->compteRendus->contains($compteRendu)) {
            $this->compteRendus->add($compteRendu);
            $compteRendu->setStage($this);
        }

        return $this;
    }

    public function removeCompteRendu(CompteRendu $compteRendu): static
    {
        if ($this->compteRendus->removeElement($compteRendu)) {
            // set the owning side to null (unless already changed)
            if ($compteRendu->getStage() === $this) {
                $compteRendu->setStage(null);
            }
        }

        return $this;
    }

    public function getLogo(): ?string
    {
        return $this->logo;
    }

    public function setLogo(string $logo): static
    {
        $this->logo = $logo;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }
}
