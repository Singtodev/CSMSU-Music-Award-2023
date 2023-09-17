
<?php

    require_once('./utils/connect_db.php');

    if(isset($_GET['aid'])){
        $sql = "select  * 
                from artist , brand_type
                where artist.bid = brand_type.bid
                and   aid = ?";
        $stmt_fetch = $conn->prepare($sql);
        $stmt_fetch->bind_param('i', $_GET['aid']);
        $stmt_fetch->execute();
        $result_fetch = $stmt_fetch->get_result();
        $result = $result_fetch->fetch_assoc();
    }


    if(isset($_GET['aid']) && isset($result) && isset($_GET['vote'])){
        $sql = "update artist set vote_count = vote_count + 1 WHERE aid = ?";
        $stmt_add_vote = $conn->prepare($sql);
        $stmt_add_vote->bind_param('i',$_GET['aid']);
        $stmt_add_vote->execute();
        $aid = $_GET['aid'];
        header("Location: show.php?aid=$aid");
    }
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSMSU Music Award 2023</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="relative lg:overflow-y-scroll lg:overflow-x-hidden  lg:flex lg:flex-col bg-cover object-cover bg-center bg-no-repeat bg-fixed w-screen h-screen bg-[url('http://202.28.34.197/midterm65/images/bg.jpg')]">

        <div class="h-[5.5rem] lg:h-[7.5rem] w-full flex  justify-center lg:justify-end py-6 px-4">
            <div class="text-white text-xl lg:text-4xl font-bold">CSMSU Music Award 2023</div> 
        </div>

        <div class="relative w-full lg:max-w-[80rem] lg:min-w-[80rem] mx-auto  mb-4 px-4">
            <div class="text-white text-xl lg:text-2xl mb-6">
                <a href="index.php?bid=0"><span class="text-[#0DCAF0]">หน้าแรก</span></a>
                <span class="text-white">/</span>
                <span class="text-white ">
                    <?php echo (!isset($_GET['aid']) || !isset($result)) ? 'ไม่พบข้อมูล' : $result['name']  ?>
                </span>
            </div>

            <?php 
                    if(isset($result)){?>
                        <div class="relative max-w-[60rem] mx-auto flex  rounded-md flex-col bg-white border border-white">
                            <div class="h-[20rem] lg:h-[40rem]  bg-white rounded-t-md
                                    bg-cover object-cover
                                    bg-center bg-no-repeat 
                                    bg-[url('<?php echo $result['image'] ?>')]
                                ">
                            </div>
                            <div class="relative p-5 text-black flex flex-col">
                                <div class="py-2"><?php echo $result['name'] ?> - <?php echo $result['b_name'] ?></div>
                                <div class="py-1"><?php echo $result['description'] ?></div>
                                <form action="show.php">
                                    <input type="hidden" name="aid" value="<?php echo $result['aid']?>">
                                    <input type="hidden" name="vote">
                                    <div class="flex items-center flex-row gap-x-4 justify-end my-2 w-full">
                                        <button type="submit" onclick="return confirm('ยืนยันการโหวต <?php echo $result['name'] ?>')">
                                            <i class="fa-solid fa-heart text-red-600 text-2xl"></i>
                                        </button>
                                        <div>(<?php echo $result['vote_count'] ?>)</div>
                                    </div>
                                </form>
                            </div>

                        </div>
                   <?php } ?>            

        </div>
        <div class="py-4 text-center text-white"> พัฒนาโดย Aj.M CSMSU @ 2023</div>
</body>
</html>