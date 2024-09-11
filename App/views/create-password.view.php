<?php
/**
 * Home Page View
 *
 * Filename:        home.view.php
 * Location:        /App/views
 * Project:         XXX-PHP-MVC-Jokes
 * Date Created:    23/08/2024
 *
 * Author:          YOUR NAME <STUDENT_ID@tafe.wa.edu.au>
 *
 */

loadPartial('header');
loadPartial('navigation');

?>

<main class="container mx-auto bg-zinc-50 py-8 px-4 shadow shadow-black/25 rounded-b-lg">
    <article>
        <header class="bg-zinc-700 text-zinc-200 -mx-4 -mt-8 p-8 text-2xl font-bold mb-8">
            <h1>Create Password Hash Utility</h1>
        </header>
        <section class="mx-auto w-3/4 flex-wrap justify-center my-8 gap-8">

            <form method="POST" action="/auth/password">
                <section class="flex flex-col my-8 gap-8">
                    <label for="Password" class="py-2 w-1/4">Enter Password to Hash:</label>
                    <input type="text" id="Password"
                           name="password" placeholder="Password"
                           value="<?= $password ?? null ?>"
                           class="grow px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"/>
                </section>

                <section  class="">
                    <button type="submit"
                            class="w-1/4 bg-sky-500 hover:bg-sky-600 text-white px-4 py-2 rounded
                                   focus:outline-none transition ease-in-out duration-500">
                        Create!
                    </button>
                </section>

            <?php
            if (isset($passwordHash)):
                ?>
                <section class="flex flex-row my-8 gap-8 p-2">
                    <div class="grow flex flex-row bg-red-700 text-white shadow rounded">
                    <h4 class="flex-0 w-1/4 p-2 -ml-2 bg-red-400 text-black text-lg rounded-l">
                        Hashed Password:
                    </h4>
                    <p class="grow p-2">
                        <?= $passwordHash ?>
                    </p>
                    </div>
                </section>

            <?php
            endif;
            ?>
            </form>


        </section>


        <section class="mx-auto w-1/2 m-8 bg-zinc-200 text-sm  text-zinc-800 p-4 rounded-lg shadow">
            <header class="-mx-4 bg-zinc-700 text-zinc-200 text-md text-semibold p-4 -mt-4 mb-4 rounded-t flex-0">
                <h4>
                    Useful References
                </h4>
            </header>
            <dl class="grid grid-cols-5 gap-2">
                <dt class="col-span-1">Tutorial Part 1:</dt>
                <dd class="col-span-4">
                    <a href="https://github.com/AdyGCode/SaaS-FED-Notes/tree/main/session-07"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-blue-500 hover:border-blue-500">
                        https://github.com/AdyGCode/SaaS-FED-Notes/tree/main/session-07
                    </a>
                </dd>
                <dt class="col-span-1">Tutorial Part 2:</dt>
                <dd class="col-span-4">
                    <a href="https://github.com/AdyGCode/SaaS-FED-Notes/tree/main/session-07"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-purple-500 hover:border-purple-500">
                        https://github.com/AdyGCode/SaaS-FED-Notes/tree/main/session-07
                    </a>
                </dd>
                <dt class="col-span-1">Source Code:</dt>
                <dd class="col-span-4">
                    <a href="https://github.com/AdyGCode/XXX-PHP-MVC-Jokes-Demo"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-red-500 hover:border-red-500">
                        https://github.com/AdyGCode/XXX-PHP-MVC-Jokes-Demo
                    </a>
                </dd>
                <dt class="col-span-1">HelpDesk</dt>
                <dd class="col-span-4">
                    <a href="https://help.screencraft.net.au"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-orange-500 hover:border-orange-500">
                        https://help.screencraft.net.au
                    </a>
                </dd>
                <dt class="col-span-1">HelpDesk FAQs</dt>
                <dd class="col-span-4">
                    <a href="https://help.screencraft.net.au/hc/2680392001"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-amber-500 hover:border-amber-500">
                        https://help.screencraft.net.au/hc/2680392001
                    </a>
                </dd>
                <dt class="col-span-1">Make a Request</dt>
                <dd class="col-span-4">
                    <a href="https://help.screencraft.net.au/help/2680392001"
                       class="underline underline-offset-2 text-zinc-900 rounded border-2 border-transparent hover:text-white hover:bg-lime-500 hover:border-lime-500">
                        https://help.screencraft.net.au/help/2680392001</a>
                    (TAFE Students only)
                </dd>
            </dl>

        </section>

    </article>
</main>


<?php
loadPartial('footer');
?>
