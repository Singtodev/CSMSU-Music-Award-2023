-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2023 at 06:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_brand`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `aid` int(255) NOT NULL,
  `bid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `vote_count` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`aid`, `bid`, `name`, `description`, `image`, `vote_count`) VALUES
(1, 4, 'BTS', 'BTS หรือชื่อเต็ม ๆ คือ Bangtans Boy (บังทัน บอยส์) หรือ บังทันโซยอนดัน ในภาษาเกาหลี มีความหมายว่า Bulletproof Boy Scouts (เด็กผู้ชายในเกราะกันกระสุน, เหล่าเด็กชายผู้กีดขวางการกดขี่และการมีอคติ) และต่อมาได้มีการปรับเปลี่ยนความหมายของชื่อเป็น Beyond the Scene ซึ่งแปลว่า วัยรุ่นผู้พัฒนาสู่ความใฝ่ฝันอย่างไม่หยุดยั้งและไม่ยึดติดกับสถานภาพปัจจุบัน\r\n', 'https://ichef.bbci.co.uk/news/640/cpsprodpb/E475/production/_99458485_bts-2017-ama-backstage-portrait-billboard-1548.jpg', 15),
(2, 4, 'GOT7', 'ก็อตเซเวน (อังกฤษ: GOT7; เกาหลี: 갓세븐) เป็นบอยแบนด์เกาหลีใต้ ก่อตั้งโดยเจวายพีเอนเตอร์เทนเมนต์ ประกอบด้วยสมาชิกจำนวนเจ็ดคนคือ เจบี, มาร์ก, แจ็กสัน, จินย็อง, ย็องแจ, แบมแบม และยูกย็อม เปิดตัวครั้งแรกในวันที่ 16 มกราคม 2014 กับอีพีชื่อ Got it ? ซึ่งขึ้นสูงสุดที่อันดับที่ 2 บนแกออนอัลบั้มชาร์ต และอันดับที่ 1 บนชาร์ต บิลบอร์ด เวิลด์อัลบั้มชาร์ต กลุ่มได้รับความสนใจจากการแสดงบนเวทีของพวกเขา ซึ่งรวมถึงองค์ประกอบศิลปะการต่อสู้แบบทริกกิง (martial arts tricking) ปัจจุบันตัววง GOT7 ได้อยู่ในการดูแลของ Warner Music Korea โดยที่สมาชิกแต่ละคนอยู่ต่างสังกัดกัน', 'https://thebiaslistcom.files.wordpress.com/2018/03/got7-look.jpg?w=640', 7),
(3, 4, 'BLACKPINK', 'Blackpink (Korean: 블랙핑크; RR: Beullaekpingkeu, commonly stylized in all caps or as BLɅϽKPIИK) is a South Korean girl group formed by YG Entertainment, consisting of members Jisoo, Jennie, Rosé, and Lisa. The group debuted in August 2016 with their single album Square One, which featured \"Whistle\" and \"Boombayah\", their first number-one entries on South Korea\"s Gaon Digital Chart and the US Billboard World Digital Song Sales chart, respectively.', 'https://www.nme.com/wp-content/uploads/2022/09/blackpink-born-pink-yg-entertainment-270922-696x442.jpg', 32),
(4, 1, '4EVE (โฟร์อีฟ)', 'โฟร์อีฟ (อังกฤษ: 4EVE) เป็นเกิร์ลกรุปสัญชาติไทย และเป็นศิลปินกลุ่มแรกในสังกัดเอ็กซ์โอเอ็กซ์โอเอนเตอร์เทนเมนต์ ในเครือเวิร์คพอยท์ เอ็นเทอร์เทนเมนท์ สมาชิกภายในวงเป็นผู้ชนะจากรายการ โฟร์อีฟเกิร์ลกรุปสตาร์ ซึ่งเป็นรายการค้นหาศิลปินหญิง ประกอบด้วยสมาชิกจำนวนเจ็ดคนคือ มายด์, โจริญ, ตาออม, แฮนน่า, ฝ้าย, พั้นช์ และอ๊ะอาย เปิดตัวอย่างเป็นทางการด้วยซิงเกิลแรกคือ อูห์ลาล่า! (Oohlala!) เมื่อวันที่ 23 ธันวาคม พ.ศ. 2563 และมีอัลบั้มแรกคือ เดอะเฟิสต์อัลบั้ม (The First Album) เพลงวัดป่ะหล่ะ? ขึ้น 10 อันดับแรกของ Spotify Thailand Charts', 'https://cms.kapook.com/uploads/tag/44/ID_43312_642fd7698ab75.jpg', 0),
(5, 1, 'Tilly Birds (ทิลลี่เบิร์ด)', 'ทิลลี่เบิร์ด หรือ ทิลลี่เบิร์ดส (อังกฤษ: Tilly Birds) เป็นวงดนตรีอัลเทอร์เนทีฟร็อก จากกรุงเทพมหานคร ภายใต้สังกัด ยีนแลป ในเครือจีเอ็มเอ็ม แกรมมี่ เป็นที่รู้จักจากเพลง \"คิดแต่ไม่ถึง\" \"เพื่อนเล่น ไม่เล่นเพื่อน\" และ \"ถ้าเราเจอกันอีก\"', 'https://i.ytimg.com/vi/PHjlZKWPdQo/maxresdefault.jpg', 1),
(6, 1, 'Three Man Down', 'ทรีแมนดาวน์เริ่มต้นจากกิตที่กำลังเข้าเรียนมหาวิทยาลัย แล้วเขาต้องการทำวงดนตรีก็เลยหาเพื่อนมารวมวง จนมาเจอกับเตเข้าจึงตกลงทำวงด้วยกัน แล้วเตก็ชวนตูนและโอม เพื่อนของเขามาเป็นสมาชิกด้วย โดยแรกเริ่มวงเป็นวงร็อก โดยชื่อทรีแมนดาวน์นั้นมาจากการที่สมาชิกวงทรีแมนดาวน์เคยมีวงสมัยมัธยมกัน 3 วง แล้ววงก็ยุบไปเมื่อขึ้นมหาวิทยาลัย ทรีแมนดาว์นก็เหมือน 3 คนที่ตายไปแล้วนั่นเอง', 'https://image.tnews.co.th/uploads/images/md/2022/08/vZBK4ypHXxNXwUUVFDq5.webp?x-image-process=style/LG', 0),
(7, 1, 'PiXXiE', 'PiXXiE ประกอบไปด้วย 3 สาว 3 สไตล์ เบล–สุชาดา สอนพันธ์, พิมมา–พิมพ์มาดา ใจสักเสริญ และ อิงโกะ–อินท์ปาลี โชติหิรัญธนนนท์ ที่บอกได้เลยว่าพกพาความสามารถทั้งร้องเเละเต้นมาแบบเต็มที่ ทั้งสวย ใส ซน เท่ เเละน่ารัก', 'https://dudeplace.co/wp-content/uploads/2023/01/PiXXiE_Pr-Photo_Notbad_Group_Closeup-1.jpg', 0),
(8, 2, 'มนต์แคน แก่นคูน', 'มนต์แคน แก่นคูน มีชื่อจริงว่า สิบเอก กิตติคุณ บุญค้ำจุน (ชื่อเดิม เพชรพร บุญค้ำจุน) เกิดเมื่อวันอาทิตย์ที่ 20 กรกฎาคม 2516 ที่บ้านม่วงกาชัง ตำบลสวาท อำเภอเลิงนกทา จังหวัดยโสธร จบการศึกษาชั้นประถมศึกษาจากโรงเรียนบ้านม่วงกาชัง และระดับมัธยมศึกษาตอนต้นจากโรงเรียนเลิงนกทา ในวัยเด็กนั้น มนต์แคน ไม่เคยคิดว่าจะได้มาเป็นนักร้องที่มีชื่อเสียงอย่างทุกวันนี้ แต่เขาได้ซึมซับการร้องเพลงมาจาก \"พ่อทองคำ\" พ่อแท้ ๆ ที่เป็นหมอลำกลอนคู่', 'https://storage.thaipost.net/main/uploads/photos/big/20210106/image_big_5ff52c72e343d.jpg', 0),
(9, 2, 'โจอี้ ภูวศิษฐ์', 'โจอี้ ภูวศิษฐ์ JOEY PHUWASIT หรือ โจอี้ ภูวศิษฐ์ อนันต์พรสิริ หนุ่มร็อกเสียงดี สายเลือดอีสานข้น ๆ จาก เมืองร้อยเอ็ด ที่ฝันอยากเป็นนักร้องตั้งแต่เด็ก ๆ ทำให้ตลอดระยะเวลาแห่งการเดินทางสู่ความฝันของเขามุ่งมั่นไม่เคยยอมแพ้ \"โจอี้\" จบการศึกษาจาก ม.ราชภัฎร้อยเอ็ด สาขาดนตรีไทย ทำให้สามารถเล่นเครื่องดนตรีได้อย่างชำนาญคือ กีตาร์ และ พิณ เป็นคนขี้อาย อารมณ์ดี และมองโลกในแง่บวกเสมอ โดยเปิดตัวด้วย \"ดวงเดือน\" เพลงแรกในฐานะศิลปินเดี่ยวค่าย Genie Records ล่าสุด เพลง \"นะหน้าทอง\" เพลงใหม่ ยอดวิวทะลุ 10 ล้านวิว และมาแรงอันดับ 1 หมวดเพลง ใน Youtube', 'https://static.thairath.co.th/media/4DQpjUtzLUwmJZZSE6WtZZaYg2USbl3VDIy5A1PCxRht.jpg', 26),
(10, 2, 'มีนตรา อินทิรา', 'มีนตรา อินทิรา มีชื่อจริงว่า อินทิรา โมราเลส ชื่อเล่น มีนตรา เกิดเมื่อวันที่ 19 พฤศจิกายน 2539 ที่จังหวัดอุดรธานี มีนตรา เริ่มต้นเส้นทางการเป็นนักร้องจากการเข้าประกวด คว้าไมค์คว้าแชมป์ ปี 3 เมื่อตอนอายุ 15 ปี และได้รางวัลชนะเลิศ Champ Of The Year และทำให้เธอได้เซ็นสัญญาเป็นศิลปินสังกัด Grammy Gold เป็นระยะเวลา 1 ปี ต่อมา หลังจากที่เธอหมดสัญญา ในปี 2558 เธอก็ได้เข้าร่วมแข่งขันในรายการเวที The Voice Thailand Season 4 ทีมโค้ชโจอี้บอย และได้เข้าไปถึงรอบ Knock Out หลังจากนั้นก็เข้าแข่งขันในรายการ สมรภูมิชิงเพลง และสามารถโค่นบัลลังก์ศิลปินต้นฉบับอย่าง เต๋า ภูศิลป์ ได้ ในเพลง ความคึดฮอดบ่เคยพาไผกลับมา และได้มาเป็นนักร้องและออกอัลบั้มในสังกัด Grammy Gold และมีเพลงฮิตติดชาร์ตมาแล้วหลายเพลง', 'https://i.ytimg.com/vi/DsZQfU2xaac/maxresdefault.jpg', 1),
(11, 3, 'Justin Bieber', 'Justin Drew Bieber (/biːbər/ BEE-bər; born March 1, 1994)[1][2] is a Canadian singer. Bieber is recognized for his genre-melding musicianship and has played an influential role in modern-day popular music.[3] He was discovered by American record executive Scooter Braun and signed with RBMG Records in 2008, gaining recognition with the release of his debut seven-track EP My World (2009) and soon establishing himself as a teen idol.', 'https://ichef.bbci.co.uk/news/976/cpsprodpb/17C2A/production/_126622379_gettyimages-1414522781.jpg', 0),
(12, 3, 'Taylor Swift', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her discography spans multiple genres, and her songwriting—often inspired by her personal life—has received critical praise and wide media coverage. Born in West Reading, Pennsylvania, Swift moved to Nashville at age 14 to become a country artist. She signed a songwriting deal with Sony/ATV Music Publishing in 2004 and a recording contract with Big Machine Records in 2005. Her 2006 self-titled debut album made her the first female country singer to write or co-write a U.S. platinum-certified album entirely.', 'https://variety.com/wp-content/uploads/2020/01/taylor-swift-variety-cover-5-16x9-1000.jpg?w=681&h=383&crop=1', 0),
(13, 3, 'OneRepublic', 'วันรีพับลิก (อังกฤษ: OneRepublic) เป็นวงดนตรีแนวป็อปร็อกชาวอเมริกันมาจากโคโลราโดสปริงส์ รัฐโคโลราโด ก่อตั้งในปี ค.ศ. 2003 โดยไรอัน เท็ดเดอร์ และแซ็ก ฟิลคินส์ วงประสบความสำเร็จผ่านทางมายสเปซตั้งแต่ยังไม่เซ็นสัญญากับค่ายเพลงใด ๆ จนกระทั่งในปี ค.ศ. 2003 วงได้พบกับนักแสดงจากฮอลลีวูด เคลลี แบร์เร็ตต์ เธอโทรศัพท์ไปยังตัวแทนฝ่ายคัดสรรและพัฒนาศิลปิน เพื่อติดต่อลูกพี่ลูกน้อง จิมมี เอียนเนอร์ และดอนนี เอียนเนอร์ ซึ่งเป็นประธานบริษัทโซนีในขณะนั้น ให้มาชมการแสดงของวง พวกเขาเซ็นสัญญากับค่ายเพลงโซนี บีเอ็มจี เป็นเวลาสามปี ก่อนย้ายไปอยู่ค่ายมอสลีย์มิวสิกกรุ๊ป', 'https://s1.ticketm.net/dam/a/a62/ba0a37d2-f25e-4c4a-ad50-9781b2a0ea62_1621921_TABLET_LANDSCAPE_LARGE_16_9.jpg', 0),
(14, 5, 'SARAN', '\"SARAN\" เป็นศิลปินแร็ปเปอร์คนหนึ่งที่ผมชอบมาก เพราะว่าเมื่อเวลาที่ SARAN ได้ขึ้นเวทีหรือแร็ปนั้นเขาเป็นคนที่มี energy สูงมาก และคำที่เขาใช้ในการแร็ปก็คมมากเช่นกัน และ SARAN เขาก็ได้ผ่านสังเวียนการแร็ปมามากมายนับไม่ถ้วน ทุกคนอาจจะสงสัยแล้วใช่ไหมละครับว่าเขาเป็นใคร วันนี้ ขอได้เล่า จะเล่าให้ฟังครับ', 'https://static.naewna.com/uploads/news/source/736236.jpg', 11),
(15, 5, 'ดาจิม', 'สุวิชชา (สุ-วิด-ชา) สุภาวีระ หรือ ดาจิม สร้างชื่อจากการทำเพลงใต้ดิน โดยออกผลงานชุดแรก Hip Hop Under World (ฮิพฮอพอันเดอร์เวิร์ล) เมื่อปี พ.ศ. 2543 ช่วงนั้นใช้วิธีฝากขายตามร้านต่างๆ เช่น ร้านดีเจสยาม, ร้านน้องท่าพระจันทร์ จนมีชื่อเสียงในกลุ่มคนฟังเพลงใต้ดิน งานชุด 2 Hip Hop Above The Law (ฮิพฮอพ อโบฟเดอะลอว์)(2544) จึงโด่งดังอย่างมาก ดาจิมสร้างเพลงฮิตมากมายเช่น อย่าให้กูเจอ, มันอยู่ใต้พรม และ เสือกทำไม จนทำให้ดาจิมถูกตำรวจจับในข้อหา ร่วมกันผลิตแถบเสียงที่สื่อไปทางลามกอนาจาร หลังจากนั้นได้เข้ามาอยู่ค่ายแกรมมี่ ออกผลงานชุดที่ 3 Rap Thai (แร๊พไทย) (2545) แต่ชุดนี้ได้ลดความรุนแรงของการใช้คำในเพลงลงมา ดาจิมมีผลงานกับทางแกรมมี่ได้ 3 ชุด ก็กลับมาทำเพลงใต้ดินกับค่าย N.Y.U Club (เอ็น-วาย-ยู-คลับ) เช่นเดิม', 'https://www.musicarms.net/wp-content/uploads/2018/10/%E0%B8%94%E0%B8%B2%E0%B8%88%E0%B8%B4%E0%B8%A1-300x196.jpg', 3),
(16, 5, 'ฟักกลิ้งฮีโร่', 'ณัฐวุฒิ ศรีหมอก หรือ กอล์ฟ นักแต่งเพลงภายใต้สังกัดก้านคอคลับ เคยเป็นสมาชิกดูโอ้ สิงห์เหนือเสือใต้ เป็นที่รู้จักในเพลง ราตรีสวัสดิ์ ซึ่งร่วมร้องกับ ธีร์ ไชยเดช (ชัย-ยะ-เดช) กอล์ฟออกผลงานกับ สิงห์เหนือเสือใต้ ได้ 2 ชุด มีเพลงฮิตอย่าง Good และ ล้ม หลังจากนั้นก็ได้มาเป็นศิลปินร่วม Featuring กับคนอื่นๆมากมาย ไม่ว่าจะเป็นเพลง พูดไม่คิด แจมกับวง Season 5 (ซีซั่นไฟว์) หรือ สวัสดีวันจันทร์ ที่ได้ศิลปินเพื่อชีวิตขั้นเทพอย่าง ปู พงษ์สิทธิ์ มาร่วมแจมด้วย ปัจจุบันเน้นทำงานเบื้องหลังให้กับศิลปินต่างๆ รวมถึงเขียนเพลง ชูใจ ซึ่งเป็นชื่อลูกสาวตัวเอง ทำยอดวิวถึง 12 ล้านวิวใน Youtube และคุ้นตากับการเป็นพิธีกร The Rapper (เดอะ แร๊พเปอร์) รวมถึง กรรมการใน The Mask Singer', 'https://www.musicarms.net/wp-content/uploads/2018/10/%E0%B8%9F%E0%B8%B1%E0%B8%81%E0%B8%81%E0%B8%A5%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B8%AE%E0%B8%B5%E0%B9%82%E0%B8%A3%E0%B9%88-300x191.jpg', 2),
(17, 1, 'ค็อกเทล', 'ค็อกเทล (อังกฤษ: Cocktail) เป็นวงดนตรีร็อกสัญชาติไทย จากกรุงเทพมหานคร ก่อตั้งขึ้นเมื่อวันที่ 24 ธันวาคม พ.ศ. 2545 [1] เป็นศิลปินแนวคลาสสิกร็อก โดยมีต้นกำเนิดจากการรวมวงดนตรีหลาย ๆ วงในโรงเรียนเตรียมอุดมศึกษา ในระดับมัธยมปลายมาออกจำหน่ายอัลบั้มโดยมีชื่อว่า ค็อกเทล จึงใช้ชื่อนี้ในการแสดงดนตรีเรื่อยมา ปัจจุบัน ค็อกเทล ออกจำหน่ายอัลบั้มแล้วทั้งสิ้น 8 อัลบั้ม 3 อีพี รวมแล้วมากกว่า 90 เพลง', 'https://jms-charpente.com/wp-content/uploads/2021/07/53-e1626533558265.jpg', 0),
(18, 1, 'JSPKK (แจ๊ส สปุ๊กนิค ปาปิยอง กุ๊กกุ๊ก)', 'แจ๊ส ชวนชื่น เป็นนักแสดง นักแสดงตลก พิธีกร และยูทูบเบอร์ และนักร้อง', 'https://www.innnews.co.th/wp-content/uploads/2023/02/F8BA8153-2EC8-4B66-AD81-10495B3EC2D9.jpeg', 0),
(19, 2, 'ไมค์ ภิรมย์พร', 'ไมค์ ภิรมย์พร เป็นนักร้องลูกทุ่งและนักแสดงชาวไทย[1][2][3]มีผลงานเพลงออกมาอย่างต่อเนื่อง และเป็นที่นิยมครองใจมหาชนจนถึงปัจจุบัน สามารถทำสถิติยอดขายได้ทะลุเกินกว่า 19 ชุด เขาอยู่ในวงการบันเทิงมาแล้ว 28 ปี โดยมีผลงานเพลงอันเป็นที่รู้จักมากมาย อาทิ ละครชีวิต, เหนื่อยไหมคนดี, ยาใจคนจน, ขายแรงแต่งนาง, ผ้าขาวบนบ่าซ้าย, กลับคำสาหล่า, บุญผลา', 'https://s.isanook.com/jo/0/rp/r/w300/ya0xa0m1w0/aHR0cHM6Ly9qb294LWNtcy1pbWFnZS0xMjUxMzE2MTYxLmZpbGUubXlxY2xvdWQuY29tLzIwMjEvMDkvMjcvMmNhMDExOTUtMTljNC00Y2E5LThiMDEtODFhYzdlMTU5ZTUwLmpwZy8xMDAw.jpg', 0),
(20, 2, 'พี สะเดิด', 'พี สะเดิด นักร้องเพลงลูกทุ่งเพื่อชีวิตนักดนตรีชายซุปเปอร์สตาร์ชาวไทย อดีตสังกัดค่ายแกรมมี่โกลด์ในเครือ จีเอ็มเอ็ม แกรมมี่ ปัจจุบันเป็นนักร้องอิสระ เจ้าของฉายา ตำนานร็อกอีสานของเมืองไทย', 'https://static.thairath.co.th/media/dFQROr7oWzulq5FZUIVGIHyNF5HhU6VhJbIufJZhmFu9n68KjhiGlRZ43C4dTSAH9cE.webp', 1),
(21, 2, 'ไผ่ พงศธร', 'ไผ่ พงศธร[1](เกิด 12 มิถุนายน พ.ศ. 2525) ชื่อเล่น ไผ่ เป็นนักร้องลูกทุ่งและนักแสดงชาวไทย สังกัดค่ายแกรมมี่โกลด์ เจ้าของฉายา “หนุ่มตามฝันจากบ้านไกล“ เขาอยู่ในวงการบันเทิงมาแล้ว 18 ปี[2] และเป็นนักฟุตบอลให้กับสโมสรฟุตบอลยโสธร ในไทยลีก3', 'https://s.isanook.com/jo/0/rp/r/w300/ya0xa0m1w0/aHR0cHM6Ly9qb294LWNtcy1pbWFnZS0xMjUxMzE2MTYxLmZpbGUubXlxY2xvdWQuY29tLzIwMjEvMTIvMjUvZDQxYWYwZmItMTdjNS00MTQ5LThjOTMtMGIyYmVhMTQyODFmLmpwZy8xMDAw.jpg', 0),
(22, 3, 'lil nas x', 'ontero Lamar Hill (born April 9, 1999), known by his stage name Lil Nas X (/nɑːz/ NAHZ), is an American rapper, singer, and songwriter. He rose to prominence with the release of his country rap single \"Old Town Road\"', 'https://media.pitchfork.com/photos/6144b19c53ec0a2981160add/2:1/w_1920,c_limit/Lil-Nas-X.jpg', 0),
(25, 3, '1nonly', 'Nathan Fuller (April 6, 2004) widely known as 1nonly is an American-born singer, rapper, dad to raku and songwriter born in Las Vegas, Nevada. He is best acknowledged for his hit single \'\'Stay With Me\'\' accumulating over 100 million streams on Spotify. His primary genre of music is considered \'\'Aesthetic Rap\'\', however his initial start of his musical career started with the production of \"Bedroom Pop\" generating songs such as \"Forever In Love\" and \"I Fell In Love With You One Night\".\r\n\r\n', 'https://yt3.googleusercontent.com/2QrJN1cAJ1OQJQBalXGgmW9LUi33nzka4s1_RUkW_l_wpkYoxa6cLCax3vVrpKjq6jbEjGTItg=s176-c-k-c0x00ffffff-no-rj', 0),
(26, 3, 'JVKE', 'Jacob Dodge Lawson (born March 3, 2001),[1] known professionally as Jvke (stylized in all caps and pronounced \"Jake\"[2]), is an American singer-songwriter, producer, and social media personality. During the COVID-19 lockdowns, he started creating TikTok videos for his songs, one of which, \"Upside Down\", went viral in 2021 with it being used in over 14 million TikTok videos. His debut album, This Is What ____ Feels Like (Vol. 1–4) (2022), peaked at number 40 on the Billboard 200,[3] while the song \"Golden Hour\" peaked at number 10 on the Billboard Hot 100.', 'https://www.billboard.com/wp-content/uploads/2022/09/JVKE-cr-Brandon-Pugsley-2022-billboard-1548.jpg?w=942&h=623&crop=1', 0),
(30, 4, 'iKon', 'iKon is a K-pop boy group with seven members formed through a survival competition called WIN. As soon as the group debuted, their 1st studio album topped the charts in South Korea.', 'https://www.90daykorean.com/wp-content/uploads/2015/07/ikon-768x384.webp', 0),
(31, 4, 'Seventeen (세븐틴)', 'Seventeen is a 13-member group and is one of the K-Pop industry’s biggest South Korean boy bands. This puts them on par with the Super Junior in terms of size. The group is signed under Pledis Entertainment which originally planned to have 17 members. However, 4 of them left even before the group had their debut.', 'https://www.90daykorean.com/wp-content/uploads/2015/07/Seventeen-768x384.webp', 0),
(32, 4, 'NCT (엔시티)', 'NCT is an acronym for “Neo Culture Technology” and is one of the K-pop boy bands on this list with the most members as a 23-member group. This goes beyond the number of Super Junior had at their peak. NCT has four subunits: NCT U, NCT 127, NCT Dream, and WayV. They have several genres: K-pop, Mandopop J pop, hip-hop, R&B, and EDM.\r\n\r\n', 'https://www.90daykorean.com/wp-content/uploads/2015/05/NCT-768x576.jpg', 0),
(33, 4, 'MONSTA X (몬스타엑스)', 'This 6-member K-pop boy band was created through the survival program NO.MERCY. MONSTA X in May 2015, under Starship Entertainment. MONSTA X is also under the US label Maverick Agency as of February 2019. In October 2019, former band member Wonho announced his departure from the group.', 'https://www.90daykorean.com/wp-content/uploads/2015/05/monsta-x-monbebe-scaled-1-768x432.jpg', 0),
(34, 5, 'Drake', 'Aubrey Drake Graham (/ɔːˈbriː/ aw-BREE; born October 24, 1986) is a Canadian rapper, singer, and songwriter.[4] An influential figure in contemporary popular music, Drake has been credited for popularizing singing and R&B sensibilities in hip hop. Gaining recognition by starring as Jimmy Brooks in the CTV teen drama series Degrassi: The Next Generation (2001–08), he pursued a career in music, releasing his debut mixtape Room for Improvement in 2006. He followed this with the mixtapes Comeback Season (2007) and So Far Gone (2009) before signing with Young Money Entertainment.[5]', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcST_Hp440wSpMUvTq3hb3OX6-rp8qJKG5nJ6CUN8MbPtN7QS9mQlY6n6QLUHe2tZF-sCISXDuN0o5a9N0k', 0),
(35, 5, 'The Weeknd', 'Abel Tesfaye known professionally as the Weeknd, is a Canadian singer, songwriter, and record producer. He is noted for his unconventional music production', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS-TfsaKW04nQqScGOF-f2-jGE9b6ra2LZD7tL1cvAUSTQg1n-n', 0),
(36, 5, 'Jay-Z', 'Shawn Corey Carter (born December 4, 1969), known professionally as Jay-Z, is an American rapper, record producer, and entrepreneur.', 'https://rickeysmileymorningshow.com/wp-content/uploads/sites/56/2023/02/16759500750414.jpg?strip=all&quality=80&w=779&crop=0,0,100,1024px', 0),
(37, 5, 'Rihanna', 'Robyn Rihanna Fenty (/riˈænə/ i ree-AN-ə;[2][3][n 1] born February 20, 1988) is a Barbadian singer, songwriter, businesswoman, and actress. She is widely regarded as one of the most prominent singers of the 21st century. After signing with Def Jam in 2005, Rihanna soon gained recognition with the release of her first two studio albums, Music of the Sun (2005) and A Girl Like Me (2006), both of which were influenced by Caribbean music and peaked within the top ten on the US Billboard 200 chart. Her third album, Good Girl Gone Bad (2007), incorporated elements of dance-pop and established her status as a major icon in the music industry. The chart-topping single \"Umbrella\" earned Rihanna her first Grammy Award and catapulted her to global stardom.', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Rihanna_Fenty_2018.png', 0),
(38, 1, 'เต้ย อภิวัฒน์', 'ประวัติ ครูเต้ย อภิวัฒน์  หรือ อภิวัฒน์ บุญเอนก เกิดวันที่ 23 กันยายน 2536 เกิดที่ อำเภอเขมราฐ จังหวัดอุบลราชธานี คนบ้านเดียวกันกับ เนสกาแฟ ศรีนคร เรียนมัธยมศึกษาที่โรงเรียนเขมราฐพิทยาคม จบปริญญาจากมหาวิทยาลัยราชภัฏมหาสารคาม จากคณะครุศาสตร์ เรียนทั้วหมด 5 ปี ปัจจุบันมีอาชีพประจำคือ เป็นคุณครูประจำอยู่ที่ โรงเรียนบ้านกุดธาตุ อำเภอหนองนาคำ จังหวัดขอนแก่น สอนในระดับชั้นมัธยมศึกษาตอนต้น ประจำภาควิชาศิลปศึกษา ดนตรี และนาฏศิลป์ พร้อมกับเป็นนักร้องอินดี้หนุ่มหน้าใส 100 ล้านวิวอีกด้วย และล่าสุดวันนี้ (16 กย.65) ได้เปิดตัวภรรยา พร้อมลูกสาว ', 'https://static.thairath.co.th/media/Dtbezn3nNUxytg04aoY91yM4XHMqPHGn5TNJmOiumKNQXS.webp', 0),
(39, 2, 'ต่าย อรทัย', 'ต่าย อรทัย มีชื่อจริง อรทัย ดาบคำ เกิดวันพฤหัสบดีที่ 27 มีนาคม พ.ศ. 2523 ที่บ้านคุ้มแสนชะนี ตำบลพรสวรรค์ อำเภอนาจะหลวย จังหวัดอุบลราชธานี เป็นบุตรของนายสาง ดาบคำ และนางนิตยา ดาบคำ เป็นบุตรสาวคนโต และมีน้องชายอีก 3 คน ในวัยเด็กเธออาศัยอยู่กับยายตั้งแต่บิดามารดาแยกทางกัน เธอสำเร็จการศึกษาชั้นประถมศึกษาจากโรงเรียนบ้านคุ้มแสนชะนี ระดับชั้นมัธยมศึกษาจากโรงเรียนนาจะหลวย และระดับปริญญาตรีจากมหาวิทยาลัยรามคำแหง และ จบการศึกษาเมื่อปี พ.ศ. 2546 [4] มีฐานะค่อนข้างขัดสน พออายุได้ 11 ขวบ เธอไปร้องเพลงที่วงนิวฟ้าอีสานเพื่อหารายได้จุนเจือเพื่อครอบครัว', 'https://t2.gstatic.com/images?q=tbn:ANd9GcSSHjiwBjFIxIxmPVAzNH9pTPynNVTZ5-tzP-omUWYJ9QSEI9wb', 0),
(40, 3, 'Fujii Kaze', 'The coronavirus outbreak in Japan from around the latter half of February 2020 greatly impacted various industries, including food and beverage, leisure, and entertainment. While the outlook remains uncertain for the live music industry in the country a year and a half into the pandemic, some hope had returned in the form of in-person concerts that had resumed from August last year, which took place by adhering to strict protocols including mandatory masks, no cheers or conversations allowed, and the capacity being reduced to less than half to maintain social distance.', 'https://www.billboard.com/wp-content/uploads/2021/09/Fujii-Kaze-cr-Yosuke-Kamiyama-billboard-japan-2021-billboaord-1548-1632940369.jpg?w=942&h=623&crop=1', 30);

-- --------------------------------------------------------

--
-- Table structure for table `brand_type`
--

CREATE TABLE `brand_type` (
  `bid` int(255) NOT NULL,
  `b_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_type`
--

INSERT INTO `brand_type` (`bid`, `b_name`) VALUES
(1, 'ไทย'),
(2, 'ไทยลุกทุ่ง'),
(3, 'สากล'),
(4, 'เกาหลี'),
(5, 'แร็ป');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `fk_artist_bid` (`bid`);

--
-- Indexes for table `brand_type`
--
ALTER TABLE `brand_type`
  ADD PRIMARY KEY (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `aid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `brand_type`
--
ALTER TABLE `brand_type`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `fk_artist_bid` FOREIGN KEY (`bid`) REFERENCES `brand_type` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
