# XXX PHP MVC Jokes Application

<a name="readme-top" id="readme-top"></a>

Base Code for a Micro-MVC Framework based Joke Database

Used by students at North Metropolitan TAFE for assessment purposes.

#### Built With

[![PHP][Php.com]][Php-url]
[![Laravel][Laravel.com]][Laravel-url]
[![Tailwindcss][Tailwindcss.com]][Tailwindcss-url]
[![PhpStorm][PhpStorm.com]][PhpStorm-url]

## Definitions

| Term                | Definition                                                                                                  |
|---------------------|-------------------------------------------------------------------------------------------------------------|
| BREAD               | Database operations to Browse, Read, Edit, Add and Delete data                                              |
| CRUD                | More commonly used term over BREAD. Create (Add), Retrieve (Browse/Read), Update (Edit) and Delete (Delete) |
| Relational Database | ...                                                                                                         |
| One to One          | ...                                                                                                         |
| One to Many         | ...                                                                                                         |
| Many to Many        | ...                                                                                                         |
| Polymorphism        | ...                                                                                                         |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Description

This small demonstration application was developed to assist in the
learning of defining and using relationships in Laravel applications.

The application contains examples of one or more of the following RDBMS table relationships:

- One to One
- One to Many / Many to One
- Many to Many

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Table of Contents

TO DO: Add extra, or update the contents as needed, then remove this line.

- [Description](#description)
- [Definitions](#definitions)
- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [Licence](#licence)
- [Badges](#badges)
- [Features](#features)
- [Tests](#tests)
- [Contact](#contact)

## Installation

> **CLI Shell**
>
> Instructions are given using the BASH or Git-BASH CLI only.

> **Default Project Location**
>
> We presume you are using the bash shell within Windows Terminal and have a work folder called
`Source/Repos` in your account's
> root folder (eg. `/c/Users/YourName/Source/Repos`).

> **Project Naming Requirements**
>
> Replace
> - `XXX` with YOUR INITIALS,
> - `YYYY` with the current year and
> - `SN` with the current semester.
>
> For example: ajg-php-mvc-jokes-2025-s1

Clone the repository https://github.com/AdyGCode/xxx-php-mvc-jokes using the following commands.

```shell
cd $HOME/Source/Repos
git clone https://github.com/AdyGCode/xxx-php-mvc-jokes xxx-php-mvc-jokes-YYYY-sN
```

Change into the folder and run the `composer` and `npm` installers:

```shell
cd xxx-php-mvc-jokes-YYYY-sN
composer install
composer update
npm install
```

### Create RDBMS User & Database

Create the Database, Database user password, plus tables adn seed data for your chosen RDBMS. 

#### MariaDB and MySQL

Using PhpMyAdmin or a similar GUI based MySQL/RDBMS administration interface, execute the
provided SQL files for your DBMS.

#### PostgreSQL

TODO: Instructions for PostgreSQL are to be completed.

#### Links to SQL Scripts

| DBMS       | User & DB Script                                | Tables & Seed data                                |
|------------|-------------------------------------------------|---------------------------------------------------|
| MariaDB    | [setup-mariadb.sql](./config/setup-mariadb.sql) | [tables-mariadb.sql](./config/tables-mariadb.sql) |
| MariaDB    | [setup-mysql.sql](./config/setup-mysql.sql)     | [tables-mysql.sql](./config/tables-mysql.sql)     |
| PostgreSQL | [TODO: Not available](#)                        | [TODO: Not available](#)                          |



You now need a second terminal instance that is in the applications' root folder so you are able
to run:

```shell
composer run dev
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

> Add details of how to use this demonstration application

![Admin Dashboard](storage/app/public/images/laravel-many-many.png)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Credits

- Broek, J. van den (2023). How to Use a Many-to-Many Relationship in
  Laravel. [online] laracoding.com. Available
  at: https://laracoding.com/how-to-use-a-many-to-many-relationship-in-laravel/ [Accessed 6 May 2024].
- Ahmad, A. (2020). Laravel Many to Many Relationship Explained. [online] Medium. Available
  at: https://medium.com/@afrazahmad090/laravel-many-to-many-relationship-explained-822b554c1973 [Accessed 6 May 2024].
- Savani, H. (n.d.). Laravel Many to Many Eloquent Relationship
  Tutorial. [online] www.itsolutionstuff.com. Available
  at: https://www.itsolutionstuff.com/post/laravel-many-to-many-eloquent-relationship-tutorialexample.html [Accessed 6 May 2024].

### General Credits

- Font Awesome. (n.d.). Fontawesome.com. https://fontawesome.com
- Laravel - The PHP Framework For Web Artisans. (2011). Laravel.com. https://laravel.com
- PHP: Hypertext Preprocessor. (n.d.). Www.php.net. https://php.net
- TailwindCSS. (2023). Tailwind CSS - Rapidly build modern websites
  without ever leaving your HTML. Tailwindcss.com. https://tailwindcss.com/
- JetBrains (2019). PhpStorm. [online] JetBrains. Available
  at: https://www.jetbrains.com/phpstorm/.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Badges

[![Forks][forks-shield]][forks-url]
[![Downloads][downloads-shield]][downloads-url]

[![Languages][languages-shield]][languages-url]
[![Issues][issues-shield]][issues-url]

[![Educational Community Licence][licence-shield]][licence-url]


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Features

> Features may be added in the future

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tests

> Tests to be developed


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Adrian Gould - Adrian.Gould@nmtafe.wa.edu.au

Project Link: https://github.com/AdyGCode/laravel-11-many-to-many-demo

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Licence

Please see the [Educational Community License](License.md) for more details.

Any code based upon this project must also give the appropriate credit
both in the source code and also on nay associated promotional, educational,
corporate or other materials both digital and non-digital.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## References & Further Study

- https://laracoding.com/
- https://yajrabox.com/docs/laravel-datatables/10.0
- https://laracoding.com/how-to-use-a-many-to-many-relationship-in-laravel/
- https://laracoding.com/how-to-use-a-one-to-one-relationship-in-laravel/
- https://medium.com/@afrazahmad090/laravel-many-to-many-relationship-explained-822b554c1973
- https://www.itsolutionstuff.com/post/laravel-many-to-many-eloquent-relationship-tutorialexample.html
- https://medium.com/@prevailexcellent/laravel-many-to-many-relationship-complete-tutorial-16025acd5450
- https://wpwebinfotech.com/blog/laravel-many-to-many-relationship/
- https://appdividend.com/2022/01/21/laravel-many-to-many-relationship/
- https://masteringbackend.com/posts/laravel-many-to-many-relationships-with-crud-example/
- https://www.iankumu.com/blog/laravel-many-to-many-relationship/
- https://masteringbackend.com/posts/laravel-one-to-one-relationship-with-example/
- https://kinsta.com/blog/laravel-relationships/
- https://www.itsolutionstuff.com/post/laravel-one-to-one-eloquent-relationship-tutorialexample.html
-

Medium articles require a subscription to view

- https://medium.com/@maitrikt1998/laravel-one-to-one-relationship-full-guide-84569cb009c8
- https://raviyatechnical.medium.com/laravel-eloquent-relationships-laravel-one-to-one-eloquent-relationship-tutorial-69a2835de23d
- https://arjunamrutiya.medium.com/unveiling-laravels-one-to-one-polymorphic-relationship-a-step-by-step-guide-0a79b4118386
- https://medium.com/@codesolutionstuff/laravel-one-to-one-eloquent-relationship-tutorial-5be6f5161e72
- https://parvez1487.medium.com/laravel-table-relationship-methods-with-example-phpflow-com-aea87ce132e5
- https://medium.com/@mwaqasiu/unlock-the-power-of-one-to-one-relationships-in-laravel-examples-and-step-by-step-implementation-508773cc15e2

Other articles not relevant to this project

- https://medium.com/@soulaimaneyh/php-laravel-advanced-file-storage-and-uploading-7296f562bcaf
- https://towardsdev.com/how-to-make-reusable-blade-form-components-on-laravel-cc2f831c769d
- https://medium.com/@awais.sds/generate-laravel-11-api-crud-in-2-min-2124540990f9
- https://medium.com/@mohammad.roshandelpoor/monitoring-and-error-tracking-in-laravel-59c31b985c0d
- https://medium.com/@dayoolapeju/exception-error-handling-in-laravel-25843a8aabb3
- https://medium.com/@mwaqasiu/creating-test-data-in-laravel-a-comprehensive-guide-to-factories-and-seeders-375f516f7da
- https://medium.com/@mwaqasiu/unlocking-the-power-of-has-one-of-many-relationship-in-laravel-real-life-examples-with-eager-ff2c5c9b74ef
- https://medium.com/@mwaqasiu/translating-text-in-laravel-made-easy-with-translatetexthelper-and-google-translate-library-214c7c76d655
-

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[forks-shield]: http://img.shields.io/github/forks/adygcode/laravel-11-many-to-many-demo.svg?style=for-the-badge

[forks-url]: https://github.com/AdyGCode/laravel-11-many-to-many-demo/network/members

[languages-shield]: http://img.shields.io/github/languages/count/adygcode/laravel-11-many-to-many-demo.svg?style=for-the-badge

[languages-url]: https://github.com/AdyGCode/laravel-11-many-to-many-demo/network/members

[downloads-shield]: http://img.shields.io/github/downloads/adygcode/laravel-11-many-to-many-demo/total?style=for-the-badge

[downloads-url]: https://github.com/AdyGCode/laravel-11-many-to-many-demo/network/members

[issues-shield]: http://img.shields.io/github/issues/adygcode/laravel-11-many-to-many-demo.svg?style=for-the-badge

[issues-url]: https://github.com/adygcode/laravel-11-many-to-many-demo/issues

[licence-shield]: https://img.shields.io/badge/opensourceinitiative-3DA639?style=for-the-badge

[licence-url]: https://github.com/adygcode/laravel-11-many-to-many-demo/blob/main/License.md

[product-screenshot]: images/screenshot.png

[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white

[Laravel-url]: https://laravel.com

[Tailwindcss.com]: https://img.shields.io/badge/Tailwindcss-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white

[Tailwindcss-url]: https://tailwindcss.com

[Livewire.com]: https://img.shields.io/badge/Livewire-4E56A6?style=for-the-badge&logo=livewire&logoColor=white

[Livewire-url]: https://livewire.laravel.com

[Inertia.com]: https://img.shields.io/badge/Inertia-9553E9?style=for-the-badge&logo=inertia&logoColor=white

[Inertia-url]: https://inertiajs.com

[Php.com]: https://img.shields.io/badge/Php-777BB4?style=for-the-badge&logo=php&logoColor=white

[Php-url]: https://inertiajs.com

[PhpStorm.com]: https://img.shields.io/badge/Phpstorm-000000?style=for-the-badge&logo=phpstorm&logoColor=white

[PhpStorm-url]: https://jetbrains.com/phpstorm/
