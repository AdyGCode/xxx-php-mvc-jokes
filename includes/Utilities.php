<?php
/**
 * FILE TITLE GOES HERE
 *
 * DESCRIPTION OF THE PURPOSE AND USE OF THE CODE
 * MAY BE MORE THAN ONE LINE LONG
 * KEEP LINE LENGTH TO NO MORE THAN 96 CHARACTERS
 *
 * Filename:        Utilities.php
 * Location:        session-05
 * Project:         SaaS-FED-Notes
 * Date Created:    13/08/2024
 *
 * Author:          YOUR NAME <STUDENT_ID@tafe.wa.edu.au>
 *
 */

class Utilities
{
    public static function dump(): void
    {
        echo "<pre class='bg-gray-100 color-black m-2 p-2 rounded shadow flex-grow text-sm'>";
        array_map(function ($x) {
            var_dump($x);
        }, func_get_args());
        echo "</pre>";
    }

    public static function dd(): void
    {
        echo "<pre class='bg-gray-100 color-black m-2 p-2 rounded shadow flex-grow text-sm'>";
        array_map(function ($x) {
            var_dump($x);
        }, func_get_args());
        echo "</pre>";
        die();
    }
}


