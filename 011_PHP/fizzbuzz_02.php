<!DOCTYPE html>

<html>

    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            table, tr, td {
                border: 1px Solid Black;
                border-collapse: collapse;
                text-align: right;
            }
            td {
                width: 2em;
            }
        </style>

    </head>

    <body>

<table>
    <?php
        for ($y = 1; $y <= 9; ++$y) {
            echo "<tr>";
            for ($x = 1; $x <= 9; ++$x) {
                $v = $x * $y;
                echo "<td>$v</td>";
            }
            echo "</tr>";
        }
    ?>
</table>

    </body>

</html>

