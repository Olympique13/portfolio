# Portfolio with Symfony & TailwindCss

Ce portfolio me permet d'acquérir de nouvelles compétences avec le framework Symfony.

# Pré-requis :
## Outils utilisés

- Symfony 7.2 (framework PHP)
- Composer 2.8 (gestionnaire de dépendances PHP)
- npm 8.18 (gestionnaire de paquets JavaScript)
- Tailwind CSS 3.4 (framework CSS)

# Cloner et utiliser le projet

## Ajouter les fichiers sur votre environnement local

Rendez-vous sur votre invite de commande dans votre dossier `www/` et clonez le projet :


```
git clone https://github.com/Olympique13/portfolioSymfony.git
```

## Copier les fichiers vers votre environnement local
```
git pull origin main
```

## Mettre à jour les packages, composants etc..

```
cd monRepo
composer install
npm install
php bin/console cache:clear
npm run watch
```

Une fois ces étapes terminées, vous pouvez commencer à travailler sur le projet localement.

***

## Project status

Toujours en cours de modification ! (15/02/2025)


```
portfolio
├─ .env
├─ .env.dev
├─ .env.test
├─ .idea
│  ├─ discord.xml
│  ├─ inspectionProfiles
│  │  └─ Project_Default.xml
│  ├─ modules.xml
│  ├─ php.xml
│  ├─ portfolioSymfony.iml
│  ├─ vcs.xml
│  └─ workspace.xml
├─ assets
│  ├─ app.js
│  ├─ bootstrap.js
│  ├─ competence.js
│  ├─ contact.js
│  ├─ controllers
│  │  └─ csrf_protection_controller.js
│  ├─ controllers.json
│  ├─ homepage.js
│  ├─ images
│  │  ├─ gestion_projet
│  │  │  ├─ GitLab1.png
│  │  │  ├─ GitLab2.png
│  │  │  ├─ Miro1.jpg
│  │  │  ├─ Miro2.jpg
│  │  │  ├─ Monday1.png
│  │  │  ├─ Monday2.png
│  │  │  └─ Slack1.png
│  │  └─ o
│  ├─ js
│  │  ├─ accueil.js
│  │  ├─ aos.js
│  │  ├─ competence.js
│  │  └─ contact.js
│  └─ styles
│     ├─ app.css
│     └─ homepage.css
├─ bin
│  ├─ console
│  └─ phpunit
├─ compose.override.yaml
├─ compose.yaml
├─ composer.json
├─ composer.lock
├─ config
│  ├─ bundles.php
│  ├─ packages
│  │  ├─ asset_mapper.yaml
│  │  ├─ cache.yaml
│  │  ├─ csrf.yaml
│  │  ├─ debug.yaml
│  │  ├─ doctrine.yaml
│  │  ├─ doctrine_migrations.yaml
│  │  ├─ framework.yaml
│  │  ├─ mailer.yaml
│  │  ├─ messenger.yaml
│  │  ├─ monolog.yaml
│  │  ├─ notifier.yaml
│  │  ├─ routing.yaml
│  │  ├─ security.yaml
│  │  ├─ stof_doctrine_extensions.yaml
│  │  ├─ translation.yaml
│  │  ├─ twig.yaml
│  │  ├─ twig_component.yaml
│  │  ├─ validator.yaml
│  │  ├─ vich_uploader.yaml
│  │  ├─ webpack_encore.yaml
│  │  └─ web_profiler.yaml
│  ├─ preload.php
│  ├─ routes
│  │  ├─ framework.yaml
│  │  ├─ security.yaml
│  │  └─ web_profiler.yaml
│  ├─ routes.yaml
│  └─ services.yaml
├─ importmap.php
├─ migrations
│  ├─ Version20250122111115.php
│  ├─ Version20250122112123.php
│  ├─ Version20250122114115.php
│  └─ Version20250215011049.php
├─ package-lock.json
├─ package.json
├─ postcss.config.js
├─ public
│  ├─ .htaccess
│  └─ index.php
├─ README.md
├─ src
│  ├─ Controller
│  │  ├─ Admin
│  │  │  ├─ CompteRenduCrudController.php
│  │  │  ├─ ContactCrudController.php
│  │  │  ├─ DashboardController.php
│  │  │  ├─ StageCrudController.php
│  │  │  └─ UserCrudController.php
│  │  ├─ LoginController.php
│  │  ├─ PageController.php
│  │  ├─ RegistrationController.php
│  │  └─ StageController.php
│  ├─ DataFixtures
│  │  ├─ AppFixtures.php
│  │  ├─ ContactFixture.php
│  │  └─ StageFixtures.php
│  ├─ Entity
│  │  ├─ CompteRendu.php
│  │  ├─ Contact.php
│  │  ├─ Stage.php
│  │  └─ User.php
│  ├─ Form
│  │  ├─ ArticleType.php
│  │  ├─ CategorieType.php
│  │  ├─ ContactType.php
│  │  ├─ LoginType.php
│  │  ├─ RegistrationFormType.php
│  │  └─ SearchType.php
│  ├─ Kernel.php
│  ├─ Repository
│  │  ├─ CategoryRepository.php
│  │  ├─ CompteRenduRepository.php
│  │  ├─ ContactRepository.php
│  │  ├─ StageRepository.php
│  │  └─ UserRepository.php
│  └─ Security
│     └─ EmailVerifier.php
├─ symfony.lock
├─ tailwind.config.js
├─ templates
│  ├─ admin
│  │  └─ admin.html.twig
│  ├─ base.html.twig
│  ├─ footer.html.twig
│  ├─ login
│  │  └─ login.html.twig
│  ├─ navbar.html.twig
│  ├─ page
│  │  ├─ accueil.html.twig
│  │  ├─ competence.html.twig
│  │  ├─ contact.html.twig
│  │  ├─ sio.html.twig
│  │  └─ veille.html.twig
│  ├─ registration
│  │  ├─ confirmation_email.html.twig
│  │  └─ register.html.twig
│  └─ stage
│     ├─ compteRendu.html.twig
│     └─ index.html.twig
├─ tests
│  └─ bootstrap.php
├─ translations
└─ webpack.config.js

```