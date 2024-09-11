<?php
/**
 * FILE TITLE GOES HERE
 *
 * DESCRIPTION OF THE PURPOSE AND USE OF THE CODE
 * MAY BE MORE THAN ONE LINE LONG
 * KEEP LINE LENGTH TO NO MORE THAN 96 CHARACTERS
 *
 * Filename:        index.view.php
 * Location:        ${FILE_LOCATION}
 * Project:         XXX-PHP-MVC-Jokes
 * Date Created:    DD/MM/YYYY
 *
 * Author:          YOUR NAME <STUDENT_ID@tafe.wa.edu.au>
 *
 */

$pageTitle = "Show | Users | XXX-MVC-Jokes";

loadPartial("header", ["pageTitle" => $pageTitle]);
loadPartial('navigation');

?>

<main class="container mx-auto bg-zinc-50 py-8 px-4 shadow shadow-black/25 rounded-b-lg flex flex-col flex-grow">
    <article>
        <header class="bg-zinc-700 text-zinc-200 -mx-4 -mt-8 p-8 mb-8 flex">

            <h1 class="grow text-2xl font-bold ">Users - Detail</h1>

            <p class="text-md flex-0 px-8 py-2 bg-emerald-500 hover:bg-emerald-600 text-white rounded transition ease-in-out duration-500">
                <a href="/users/create">Add User</a>
            </p>

            <form method="GET" action="/users/search" class="block mx-5">
                <input type="text" name="keywords" placeholder="User search..."
                       class="w-full md:w-auto px-4 py-2 focus:outline-none"/>
                <button class="w-full md:w-auto
                           bg-sky-500 hover:bg-sky-600
                           text-white
                           px-4 py-2
                           focus:outline-none transition ease-in-out duration-500">
                    <i class="fa fa-search"></i> Search
                </button>
            </form>

        </header>

            <?= loadPartial('message') ?>

        <section class="w-1/2 mx-auto bg-white shadow rounded p-4 flex flex-col">

            <h4 class="-mx-4 bg-zinc-700 text-zinc-200 text-2xl p-4 -mt-4 mb-4 rounded-t flex-0 flex justify-between">
                <?= $user->given_name ?> <?= $user->family_name ?>
            </h4>

            <section class="flex-grow flex flex-row">

                <section class="grow">
                    <h5 class="text-lg font-bold">
                        Joined:
                    </h5>
                    <p class="grow text-lg text-zinc-600 mb-4">
                        <?= $user->created_at ?>
                    </p>

                    <h5 class="text-lg font-bold">
                        Last Update:
                    </h5>
                    <p class="grow text-lg text-zinc-600 mb-6">
                        <?= $user->updated_at ?? "n/a" ?>
                    </p>

                    <h5 class="text-lg font-bold">
                        Added by:
                    </h5>
                    <p class="grow text-lg text-zinc-600 mb-6">
                        <?= $user->added_by ?? "n/a" ?>
                    </p>

                    <?php
                    if (Framework\Authorisation::isOwner($user->user_id) || Framework\Authorisation::isUser($user->id)) :
                        ?>
                        <form method="POST"
                              class="border-0 border-t-1 border-zinc-300 text-lg flex flex-row">
                            <a href="/users/edit/<?= $user->id ?>"
                               class="px-16 py-2 bg-sky-500 hover:bg-sky-600 text-white rounded transition ease-in-out duration-500">
                                Edit
                            </a>

                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit"
                                    class="ml-8 px-4 py-2 bg-red-500 hover:bg-red-600 text-white rounded transition ease-in-out duration-500">
                                Delete
                            </button>
                        </form>

                    <?php
                    endif;
                    ?>
                </section>

                <img class="object-cover"
                     src="https://dummyimage.com/200x200/a1a1aa/fff&text=Image+Here"
                     alt="">

            </section>




        </section>

    </article>
</main>


<?php
require_once basePath("App/views/partials/footer.view.php");
?>

