<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <?php
    require_once 'vendor/autoload.php';
    $faker = Faker\Factory::create();


    date_default_timezone_set('Asia/Ho_Chi_Minh');
    echo date('Y/m/d g:i a') . '<br>';

    $bienMang = array_fill(0, 20, '');
    for ($i = 0; $i < count($bienMang); $i++) {
        $bienMang[$i] = $faker->firstName();
        echo $bienMang[$i] . '<br>';
    }


    // $bienMang = ["Earl", "Ebrl", "Matts", "Maztc", "Mazax", "Mazav", "Mozell"];
    // $bienMang = [["Earl", "Ebrl"], ["Matts", "Maztc", "Mazav", "Mazav"], "Mozell"];
    // $bienMang = [[["Earl"], ["Ebrl"]], [["Matts"], [[["Maztc"], ["Mazav"]], ["Macav"]]], ["Mozell"]];

    // print("<pre>" . print_r($bienMang, true) . "</pre>");


    function sortByindex(&$arrSort, $deep = 0)
    {
        for ($i = 0; $i < count($arrSort) - 1; $i++) {
            for ($j = $i + 1; $j < count($arrSort); $j++) {
                if ($arrSort[$j][$deep] < $arrSort[$i][$deep]) {
                    $temp = $arrSort[$i];
                    $arrSort[$i] = $arrSort[$j];
                    $arrSort[$j] = $temp;
                }
            }
        }
    }

    sortByindex($bienMang, 0);

    function checkToDeQuy(&$arrCheck, $deep)
    {
        for ($i = 0; $i < count($arrCheck); $i++) {
            if (count($arrCheck[$i]) > 1) {
                sortByindex($arrCheck[$i], $deep);
                splitName($arrCheck[$i], $deep);
                checkToDeQuy($arrCheck[$i], $deep + 1);
            }
        }
    }
    function array_flatten($array)
    {
        if (!is_array($array)) {
            return false;
        }
        $result = array();
        foreach ($array as $key => $value) {
            if (is_array($value)) {
                $result = array_merge($result, array_flatten($value));
            } else {
                $result = array_merge($result, array($key => $value));
            }
        }
        return $result;
    }

    //phương thức k trả về giá trị, hàm trả về giá trị
    function splitName(&$arrIn, $deep)
    {

        $flag = '';
        $arrReturn = [];
        for ($i = 0; $i < count($arrIn); $i++) {
            $now = $arrIn[$i];
            $curentFlag = substr($now, $deep,  1);
            // echo 'curentFlag ' . $curentFlag . ' ';
            if ($flag == '') {
                $flag = substr($now, $deep,  1);
                array_push($arrReturn, [$now]);
                continue;
            }
            if ($curentFlag == $flag) {
                array_push($arrReturn[count($arrReturn) - 1], $now);
            } else {
                array_push($arrReturn, [$now]);
                $flag = $curentFlag;
            }
        }
        $arrIn = $arrReturn;
    }

    splitName($bienMang, 0);
    checkToDeQuy($bienMang, 1);
    $bienMang = array_flatten($bienMang);

    echo '<br> mảng sau sắp xếp <br>';
    for ($i = 0; $i < count($bienMang); $i++) {
        echo $bienMang[$i] . '<br>';
    }


    ?>

    <!-- <?php echo 'hello world'; ?> -->

</body>

</html>