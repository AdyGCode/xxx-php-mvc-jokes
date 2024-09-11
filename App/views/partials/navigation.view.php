<?php
/**
 * Page 'Header' and Navigation
 *
 * Filename:        navigation.view.php
 * Location:        App/views/partials
 * Project:         SaaS-FED-Notes
 * Date Created:    DD/MM/YYYY
 *
 * Author:          YOUR NAME <STUDENT_ID@tafe.wa.edu.au>
 *
 */

use Framework\Middleware\Authorise;
use Framework\Session;

$authenticated = new Authorise();
if ($authenticated->isAuthenticated()){
    $user = Session::get('user')??'n/a';
    $given_name = $user['given_name']??'n/a';
}
?>

<header class="bg-black text-white p-4 flex-grow-0 flex flex-row align-middle content-center">
    <h1 class="flex-0 w-32 text-xl p-4 ">
        <a href="#"
           class="py-4 px-4 -mx-4 -my-4 font-bold rounded text-sky-300 hover:text-sky-700 hover:bg-sky-300
                     transition ease-in-out duration-500">
            MVC
        </a>
    </h1>
    <nav class="flex flex-row gap-4 py-4 flex-grow">

        <p><a href="/"
              class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                Home
            </a></p>

        <!-- Show these when visitor is registered & authenticated -->
        <p><a href="/"
              class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                Jokes
            </a></p>

        <p><a href="/"
              class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                Categories
            </a></p>

        <p><a href="/"
              class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                Users
            </a></p>
        <!-- /Show -->

        <div class="flex-grow"></div>

        <?php
        if ($authenticated->isAuthenticated()):
            ?>
            <p class="text-zinc-300 ">NickName &gt</p>

            <form method="POST" action="/" class="">
                <button class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                    <i class="fa fa-search"></i> Logout
                </button>
            </form>
        <?php
        else:
            ?>
            <p><a href="/"
                  class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                    Login
                </a></p>
            <p><a href="/"
                  class="pb-2 px-1 text-text-zinc-700-200 hover:text-sky-300
                     border-0 border-b-2 hover:border-b-sky-500
                     transition ease-in-out duration-500">
                    Register
                </a></p>
        <?php
        endif;
        ?>

        <form method="GET" action="/" class="block mx-5">
            <input type="text" name="keywords" placeholder="Joke search..."
                   class="w-full md:w-auto px-4 py-2 focus:outline-none"/>
            <button class="w-full md:w-auto
                           bg-sky-500 hover:bg-sky-600
                           text-white
                           px-4 py-2
                           focus:outline-none transition ease-in-out duration-500">
                <i class="fa fa-search"></i> Search
            </button>
        </form>

    </nav>
</header>

