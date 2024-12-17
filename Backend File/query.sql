-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 03:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softwareengineering`
--

-- --------------------------------------------------------

--
-- Table structure for table `bouquet`
--

CREATE TABLE `bouquet` (
  `id` int(11) NOT NULL,
  `bouquet_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `people` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `flowers` varchar(100) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bouquet`
--

INSERT INTO `bouquet` (`id`, `bouquet_name`, `description`, `people`, `event`, `flowers`, `image_url`, `price`) VALUES
(1, 'Yellow Bliss', 'As a symbol of joy, happiness, and friendship, a Yellow Bliss bouquet of yellow tulips is the perfect gift choice to express your feelings to the most special person in your life.', 'LOVER, MARRIED COUPLE, PARENTS, BESTIE', 'BIRTHDAY, ANNIVERSARY, AND OTHER HAPPY DAYS', 'TULIPS', 'https://millionbloom.com/cdn/shop/files/Yellow-Bliss_4f4f21f8-fa7f-4109-aa50-2380a7156d60_550x.jpg?v=1689679015', 299000),
(2, 'Rosy Love', 'Rosy Love flower bouquet is a beautiful choice to give to loved ones on various occasions. The combination of red roses, which symbolize love and affection, and baby\'s breath, which means new hope and eternal love, creates a very stunning and meaningful look.', 'CRUSH, LOVER', 'VALENTINE', 'PINK ROSE, WHITE ROSE, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/MillionBloom-RosyLove_4_550x.jpg?v=1689817668', 449000),
(3, 'Pink Perfection', 'Celebrate a special moment with a Pink Perfection bouquet. The combination of four types of flowers: pink gerberas, pink roses, carnations, and white daisies will give a romantic and elegant touch to the recipient.', 'MARRIED COUPLE, LOVER, BESTIE', 'BIRTHDAY, VALENTINE, SHOWING AFFECTION', 'GERBERA, PINK ROSE, CARNATION', 'https://millionbloom.com/cdn/shop/products/pink-perfection-449020_550x.jpg?v=1689317048', 399000),
(4, 'Cool Water Cascade', 'A floral arrangement that reflects the beauty of nature in perfect harmony. Each flower is carefully selected to create a composition of colors that are enchanting and calming, like a clear waterfall flowing gently in the middle of the forest. Within each flower there is a deep meaning. Camellia reminds us of sincere and infinite love; Carnation and Lily tell of unfading affection and happiness; while Baby\'s breath and hydrangea are about purity and eternity within.', 'COUPLE, RECONCILIATION', 'APOLOGY, SHOWING AFFECTION', 'HYDRANGEA, LILY, CAMELIA', 'https://millionbloom.com/cdn/shop/files/NewCatalog2.A_1100x.png?v=1694491558', 399000),
(5, 'My Fated Valentine', 'My Fated Valentine is a representation of a deep and fated love, perfect for celebrating Valentine\'s Day. With 80 Red Roses symbolizing intense and eternal love, combined with Black Ribbon and White Korean Wrapping, this arrangement creates an elegant and meaningful impression to express your feelings.', 'COUPLE, CRUSH', 'VALENTINE', 'RED ROSE, BABY\'S BREATH, TULIPS', 'https://millionbloom.com/cdn/shop/files/MillionBloom-PassionateLove_2_550x.png?v=1689817576', 349000),
(6, 'Pristine Purity', 'Pristine Purity is a symbol of eternal purity and serenity, very suitable to be presented in the celebration of Eid al-Fitr. creating a harmonious display to express your hopes and prayers. Pristine Purity presents a calming beauty, an elegant way to share happiness and purity on a very crucial day.', 'FAMILY, BRIDE, COUPLE, BESTIE', 'EID AL-FITR, WEDDING, ENGAGEMENT', 'HYDRANGEA, WHITE ROSE, PEONY', 'https://millionbloom.com/cdn/shop/files/RamadanCatalog9.A_1100x.png?v=1710926525', 299000),
(7, 'Blooming Inauguration', 'A stunning combination of daisies symbolizing purity and new beginnings, hydrangeas with shades of gratitude and beauty, and peonies representing prosperity and good fortune. Bringing positive vibes, good wishes, and beauty to complete a grand opening or conveying memorable congratulations.', 'GRADUATE, ENTREPRENEUR', 'GRAND OPENING, CONGRATULATIONS', 'DAISY, HYDRANGEA, PEONY', 'https://down-id.img.susercontent.com/file/f88c73472deab2fed391f2782eb5b006.webp', 599000),
(8, 'Pink Painted Gerberas', 'Feel the comfort and warmth through a bouquet of Pink Painted Gerbera flowers. The soft pink color, combined with a prominent brown or dark yellow flower core will make it the right choice to express feelings of love, admiration, and happiness. Pink daisy flowers symbolize happiness, tenderness, and purity. The pink color of the daisy gives a soft and calming impression, and symbolizes affection and joy.', 'COUPLE, MARRIED', 'ANNIVERSARY, VALENTINE', 'DAISY, GERBERA', 'https://millionbloom.com/cdn/shop/files/PinkPaintedGerberas_550x.png?v=1689656528', 399000),
(9, 'Baby Blues', 'Baby Blues flower bouquet with a charming color combination of White Rose, Blue Hydrangea, and Baby Breath flowers combined to create an elegant look. This Baby Blues flower bouquet has the meaning of expressing happiness with someone, as well as sincere and deep affection.', 'BRIDE', 'WEDDING', 'WHITE ROSE, HYDRANGEA, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/Baby-Blues-Transparent_550x.png?v=1689562862', 249000),
(10, 'Angelic Beauty', 'Angelic Beauty table flower bouquet is the perfect choice to express your sincere feelings of affection to someone special. Each stem arranged in Angelic Beauty uses fresh Lily flowers, and will give an elegant impression wherever it is placed. Lily flowers have the meaning of a new beginning.', 'COUPLE, MARRIED, RECONCILIATION, BESTIE', 'VALENTINE, APOLOGY, WEDDING', 'LILY, JASMINE', 'https://millionbloom.com/cdn/shop/files/Angelic-Beauty-Vase-Transparent_550x.png?v=1689156715', 599000),
(11, 'Golden Dreams Vase', 'Brighten someone special\'s day. The combination of sunflowers and baby\'s breath that is presented will add strong joy. In the language of flowers, sunflowers are often interpreted as an expression of gratitude, appreciation, or loyalty. This flower is also often given as a gift on special moments such as birthdays, weddings, or as an expression of love and affection.', 'COUPLE, CRUSH, BESTIE', 'SHOWING AFFECTION', 'SUNFLOWER, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/6-New-Product-1_1100x.png?v=1692011892', 549000),
(12, 'Graceful Garden', 'This bouquet is a perfect blend of elegance, brightness and natural beauty. In some cultures, the combination of roses and the sun can be interpreted as a symbol of passionate love and burning happiness.', 'COUPLE, CRUSH, LOVED ONES, BESTIE', 'SHOWING AFFECTION', 'SUNFLOWER, RED ROSE, GARDENIA', 'https://millionbloom.com/cdn/shop/files/Graceful-Garden-Transparent_550x.png?v=1689316450', 699000),
(13, 'Romantic Spark', 'Romantic Spark is the epitome of a soft and sweet spark of love, perfect for celebrating Valentine\'s Day. With a soft and feminine color palette, this set consists of 20 Pink Baby Breath, wrapped in White Wrapping and Korean Pink Tile Fabric, and tied with Pink Ribbon, creating a charming romantic atmosphere to show your affection. Pink Baby Breath symbolizes sincerity and gentle affection.', 'LOVED ONES', 'VALENTINE', 'BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/DSC01616_f7d07d05-6348-4eaf-ab90-ccf5e29bfd8a_1100x.png?v=1706605716', 299000),
(14, 'Springtime Delight', 'Springtime Delight flower bouquet brings a strong and alluring touch of color through the combination of selected flowers. It can be the right gift bouquet to liven up the atmosphere, making it look graceful and elegant. Pink Rose, or pink roses, symbolize affection, tenderness, and beauty, and are often given as gifts in romantic relationships or to express affection.', 'COUPLE', 'ANNIVERSARY', 'PINK ROSE, GERBERA, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/Springtime-Delight-Transparent_550x.png?v=1689321657', 599000),
(15, 'Delicate Beauty', 'Feel the elegance of the color combination of Delicate Beauty flower bouquet. The beautiful palette of blue Hydrangea that gives tranquility, plus pink carnations and white roses, further add an atmosphere of elegance in each petal. Not only beautiful, this bouquet also has a sweet aroma that will fill your room. Blue Hydrangea symbolizes infinite beauty, White & Pink Rose: love, affection, and beauty. Pink Carnation: tenderness, beauty, and warmth. Blue Eryngium for eternity, victory, and inspiration.', 'BRIDE', 'WEDDING', 'HYDRANGEA, WHITE ROSE, CARNATION', 'https://millionbloom.com/cdn/shop/files/Delicated-Beauty-Transparent_550x.png?v=1689318792', 749000),
(16, 'Dreamy Clouds', 'Dreamy Clouds flower bouquet is the perfect choice for a sweet and romantic gift. The beautiful and soft Baby\'s Breath flowers offer a graceful and elegant look. Baby\'s Breath (Gypsophila) symbolizes purity, simplicity, and sincerity. This flower bouquet is also suitable as a gift to express feelings or as a decoration to beautify a room or special event.', 'BRIDE, MARRIED COUPLE', 'WEDDING, ANNIVERSARY', 'BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/products/babybreathwhite_550x.png?v=1689561787', 299000),
(17, 'Orchid’s Wonderland', 'Orchid\'s Wonderland is the embodiment of magic and extraordinary beauty, perfect for celebrating Valentine\'s Day, expressing feelings of deep and elegant love.', 'COUPLE', 'VALENTINE', 'ORCHID, HYDRANGEA', 'https://millionbloom.com/cdn/shop/files/DSC01625_44cbbf13-d5a0-4199-9acc-61d117639a4e_1100x.png?v=1706671503', 499000),
(18, 'Dreamy Daffodil', 'The Dream Daffodil flower bucket is a representation of joy and hope, specially designed to bring a warm and inspiring atmosphere. With its elegant simplicity and profound message, Dream Daffodil is the perfect choice to brighten up the day of anyone who receives it.', 'LOVED ONES, BESTIE', 'SUPPORTING', 'DAFFODIL', 'https://st.depositphotos.com/1810390/1699/i/450/depositphotos_16994357-stock-photo-daffodils-in-vase-closeup.jpg', 399000),
(19, 'Whispering Love', 'This pink flower arrangement has the meaning of true love, suitable as an expression of affection and loyal love for someone.', 'LOVED ONES, BESTIE', 'SHOWING AFFECTION', 'DAISY, PINK ASTRIDGE, CARNATION', 'https://millionbloom.com/cdn/shop/files/Whispering-Love-Transparent_550x.png?v=1689328119', 749000),
(20, 'Sapphire Dreams', 'Express your feelings with the Sapphire Dreams flower arrangement. The combination of blue hydrangeas, which symbolize apology, and white baby\'s breath, which symbolize eternal love, will convey a powerful and meaningful message to anyone who receives it. The hydrangeas in the Sapphire Dreams flower arrangement symbolize beauty, abundance, and fertility. This flower has an elegant and calming light blue color.', 'RECONCILIATION', 'APOLOGY', 'HYDRANGEA, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/sapphire-dreams_550x.png?v=1689590583', 699000),
(21, 'Fantabulous Fairytale', 'Fantabulous Fairytale is the embodiment of a fantastic love story, perfect for celebrating Valentine\'s Day. Baby Breath Pink symbolizes sincerity and tenderness of feelings, giving a surprise that radiates the magic of love and unforgettable romance.', 'DARLING, BESTIE, BRIDE', 'WEDDING, VALENTINE, SHOWING AFFECTION', 'BABY\'S BREATH, BABY\'S BREATH', 'https://millionbloom.com/cdn/shop/files/DSC01604_1100x.png?v=1706605630', 499000),
(22, 'Endless Love', 'Endless Love is a stunning flower arrangement, composed of Red & White Rose flowers arranged in a heart shape in the middle of the bouquet. This flower bouquet is perfect as an expression of love for someone you value. Red Rose symbolizes sincere and passionate love, while White Rose symbolizes cleanliness, elegance, and purity. The combination of the two colors creates perfect beauty, representing sincere and unwavering love.', 'BRIDE, COUPLE', 'VALENTINE, ANNIVERSARY, WEDDING', 'RED ROSE, WHITE ROSE', 'https://millionbloom.com/cdn/shop/files/Endless-Love_550x.png?v=1689586686', 599000);

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `id` int(11) NOT NULL,
  `flower_name` varchar(100) DEFAULT NULL,
  `color_flower` varchar(50) DEFAULT NULL,
  `flower_meaning` text DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`id`, `flower_name`, `color_flower`, `flower_meaning`, `image_url`) VALUES
(1, 'Rose', 'Red', 'Red roses symbolize all the qualities that speak to a powerful and genuinely beautiful love story.', 'https://deorchids.com/wp-content/uploads/2023/08/Arti-Bunga-Mawar-Berdasarkan-Warna.jpg'),
(2, 'Rose', 'White', 'White roses symbolize loyalty, purity, and innocence.', 'https://hips.hearstapps.com/housebeautiful/assets/16/13/14281082049_db3839cb85_k.jpg'),
(3, 'Tulip', 'Yellow', 'Yellow tulips have the meaning of cheerfulness and very close friendship. They symbolize friendship and happiness.', 'https://tse3.mm.bing.net/th?id=OIP.uM7uVbkqad7O9J5In9NFSAHaFj&pid=Api&P=0&h=220'),
(4, 'Jasmine', 'White', 'Jasmine flower symbolizes love, beauty, and romance.', 'https://img.crocdn.co.uk/images/products2/pl/00/00/00/16/pl0000001668.jpg?width=940&height=940'),
(5, 'Orchid', 'Red', 'This flower symbolizes determination, courage, and passion.', 'https://s.kaskus.id/images/2019/04/09/10421592_20190409042229.jpg'),
(6, 'Astridge', 'Pink', 'Pink daisies are usually a symbol of love, romance, and tenderness. Their color gives a feminine impression.', 'https://mmc.tirto.id/image/2023/02/22/bunga-aster-istock-1353932512_ratio-16x9.jpg'),
(7, 'Babys Breath', 'Pink', 'This flower is defined as a babys breath, which means innocence and purity. It also often symbolizes new hope and love.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYpxhUnwDqyCd3fs6Bt2aEZB_iyHLhNG2McA&s'),
(8, 'Lily', 'Pink', 'Lily flowers symbolize love and admiration from one person to another.', 'https://shorturl.at/AHlFj'),
(9, 'Sunflower', 'Yellow', 'This flower symbolizes hope, optimism, and positivity. Its bright colors can improve mood.', 'https://www.floraly.com.au/cdn/shop/articles/pexels-susanne-jutzeler-1169084_2.jpg?v=1597813597'),
(10, 'Gardenia', 'White', 'Gardenia means purity or holiness. It gives trust, hope, clarity of dreams, and protection.', 'https://www.provenwinnerscolorchoice.com/wp-content/uploads/2024/01/Gardenia-Pillow-Talk-1.jpg'),
(11, 'Hydrangea', 'Blue', 'This flower symbolizes a cold heart that seeks an apology and regret for past actions.', 'https://bibitbunga.com/wp-content/uploads/2017/04/arti-dan-makna-hydrangea-biru.jpg'),
(12, 'Peony', 'Pink', 'Peonies convey the meaning of romance, romantic love, and beauty in all forms.', 'https://www.nature-and-garden.com/wp-content/uploads/sites/4/2017/04/peony.jpg'),
(13, 'Daisy', 'Orange', 'The daisy flower signifies hidden feelings of love and admiration, beauty, sincerity, and simplicity.', 'https://www.wallpaperflare.com/static/507/376/985/orange-daisies-photo-flower-wallpaper.jpg'),
(14, 'Lavender', 'Purple', 'Lavender flowers symbolize loyalty, purity, and love. Often associated with personal growth.', 'https://www.pegasusproducts.com/wp-content/uploads/2019/10/Flower-Sage_Salvia-officinalis-1017x1024.'),
(15, 'Camelia', 'Pink', 'Camellia flowers symbolize longing and are given to someone who has been missed for a long time.', 'https://bibitbunga.com/wp-content/uploads/2017/04/Arti-dan-makna-bunga-camelia.jpg'),
(16, 'Iris', 'Blue', 'The iris flower is a graceful and elegant symbol of apology and reconciliation. ', 'https://shorturl.at/SSCT4'),
(17, 'Peach Chrysanthemum', 'Purple', 'This flower symbolizes passion, enthusiasm, and warmth. The orange color creates cheerfulness and positivity.', 'https://www.noarovivaio.it/files/2022-02-23-c54d2599-e5c2-4a2a-9c33-6cabb63522b7.jpeg'),
(18, 'Lavandula Pinnata', 'Orange', 'Lavandula depicts elegance and femininity, symbolizing growth. This flower is often given to brides.', 'https://www.noarovivaio.it/files/2022-02-23-c54d2599-e5c2-4a2a-9c33-6cabb63522b7.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bouquet`
--
ALTER TABLE `bouquet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bouquet`
--
ALTER TABLE `bouquet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
