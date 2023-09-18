
<?php
    require_once('./utils/connect_db.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSMSU Music Award 2023</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="relative lg:overflow-y-scroll lg:overflow-x-hidden  lg:flex lg:flex-col bg-cover object-cover bg-center bg-no-repeat bg-fixed w-screen h-screen bg-[url('http://202.28.34.197/midterm65/images/bg.jpg')]">
        <div class="h-[5.5rem] lg:h-[7.5rem] w-full flex justify-center lg:justify-end py-6 px-4">
            <div class="text-white text-xl lg:text-4xl font-bold">CSMSU Music Award 2023</div> 
        </div>
        <div class="relative w-full px-4 lg:w-[80rem] mx-auto">
            <div class="text-white text-2xl my-1">วงดนตรี</div>
            
            <div class="relative my-1">
                <form action="index.php" method="get">
                    <select value="<?php echo (isset($_GET['bid']) && $_GET['bid'] ) ? $_GET['bid'] : 0  ?>" class="px-2 py-2 bg-white rounded-md outline-none" 
                        name="bid"
                        onchange="this.form.submit()">
                        <option <?php echo  (isset($_GET['bid']) && $_GET['bid'] == 0) || !isset($_GET['bid']) ? 'selected' : ''  ?> value="0">วงดนตรีทั้งหมด</option>
                        <?php
                                // query category type
                                $sql = "select * from brand_type";
                                $stmt = $conn->prepare($sql);
                                $stmt->execute();
                                $result = $stmt->get_result();
                                while($row = $result->fetch_assoc()) { ?>
                                    <option <?php echo (isset($_GET['bid']) && $_GET['bid'] == $row['bid']) ? 'selected' : ''  ?> value="<?php echo $row['bid'] ?>"><?php echo $row['b_name'] ?></option>
                                <?php } ?>
                        ?>
                    </select>
                </form>
            </div>

            <div class="grid grid-cols-3 w-full gap-4 py-4">
            <?php 
            
                if(isset($_GET['bid']) && $_GET['bid'] != 0){
                    $sql = "select * from artist where bid = ? order by vote_count desc";
                    $stmt_fetch = $conn->prepare($sql);
                    $stmt_fetch->bind_param('i', $_GET['bid']);
                }else{
                    $sql = "select * from artist order by vote_count desc";
                    $stmt_fetch = $conn->prepare($sql);
                }


                $stmt_fetch->execute();
                $result_fetch = $stmt_fetch->get_result();
                while ($row = $result_fetch->fetch_assoc()) { ?>
                    <a href="show.php?aid=<?php echo $row['aid']?>">
                        <div class="h-[8rem] lg:h-[18rem] bg-gray-300 cursor-pointer
                                rounded-2xl hover:scale-105 transition-all 
                                duration-300 bg-cover object-cover 
                                bg-center bg-no-repeat 
                                bg-[url('<?php echo $row['image'] ?>')]">
                        </div>              
                    </a>
                <?php } ?>

            ?> 
            </div>

            <div class="py-4 text-center text-white"> พัฒนาโดย Aj.M CSMSU @ 2023</div>


        </div>
</body>
</html>