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

$pageTitle = "Add | Users | XXX-MVC-Jokes";

loadPartial("header", ["pageTitle"=>$pageTitle]);
loadPartial('navigation');

?>

<main class="container mx-auto bg-zinc-50 py-8 px-4 shadow shadow-black/25 rounded-b-lg flex flex-col flex-grow">
    <article>
        <header class="bg-zinc-700 text-zinc-200 -mx-4 -mt-8 p-8 mb-8 flex">
            <h1 class="grow text-2xl font-bold ">Users - Add</h1>
            <p class="text-md flex-0 px-8 py-2 bg-emerald-500 hover:bg-emerald-600 text-white rounded transition ease-in-out duration-500">
                <a href="/users/create">Add User</a>
            </p>
        </header>

        <section>

        <?= loadPartial('errors', [
            'errors' => $errors ?? []
        ]) ?>

            <form method="POST" action="/users">

                <h2 class="text-2xl font-bold mb-6 text-left text-gray-500">
                    User Information
                </h2>

                <section class="mb-4">
                    <label for="GivenName" class="mt-4 pb-1">Given Name:</label>
                    <input type="text" id="GivenName"
                           name="given_name" placeholder="Given Name"
                           class="w-full px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"
                           value="<?= $user['given_name'] ?? '' ?>"/>
                </section>

                <section class="mb-4">
                    <label for="FamilyName" class="mt-4 pb-1">Family Name:</label>
                    <input type="text" id="FamilyName"
                           name="family_name" placeholder="Family Name"
                           class="w-full px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"
                           value="<?= $user['family_name'] ?? '' ?>"/>
                </section>

                <section class="mb-4">
                    <label for="Email" class="mt-4 pb-1">Email:</label>
                    <input type="email" id="Email"
                           name="email" placeholder="Email Address"
                           class="w-full px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"
                           value="<?= $user['email'] ?? '' ?>"/>
                </section>

                <section class="mb-4">
                    <label for="Password" class="mt-4 pb-1">Password:</label>
                    <input type="password" id="Password"
                           name="user_password" placeholder="Password"
                           class="w-full px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"/>
                </section>

                <section class="mb-4">
                    <label for="PasswordConfirmation" class="mt-4 pb-1">Confirm password:</label>
                    <input type="password" id="PasswordConfirmation"
                           name="password_confirmation" placeholder="Confirm Password"
                           class="w-full px-4 py-2 border border-b-zinc-300 rounded focus:outline-none"/>
                </section>

                <button type="submit"
                        class="w-full bg-green-500 hover:bg-green-600 text-white px-4 py-2 my-3
                               rounded focus:outline-none">
                    Save
                </button>

                <a href="/users"
                   class="block text-center w-full bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded
                      focus:outline-none">
                    Cancel
                </a>

            </form>

        </section>

    </article>
</main>


<?php
loadPartial("footer");

