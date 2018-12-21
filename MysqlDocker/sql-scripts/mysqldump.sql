drop database IF EXISTS FlaskBlogApp;
create database FlaskBlogApp;
use FlaskBlogApp;



-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: FlaskBlogApp
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_user`
--

DROP TABLE IF EXISTS `blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_username` varchar(45) DEFAULT NULL,
  `user_password` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user`
--

LOCK TABLES `blog_user` WRITE;
/*!40000 ALTER TABLE `blog_user` DISABLE KEYS */;
INSERT INTO `blog_user` VALUES (1,'Oya','benliogl@yahoo.com','pbkdf2:sha256:50000$PnZrYb57$d0396b9708538ab245737332d9b1855965332c554866d793de62c0c71aab4bbe'),(2,'Aytekin','aytekin@yahoo.com','pbkdf2:sha256:50000$qbRBglOE$b30be1b98282ad58c97486b566fe4d7603edb2ded596ccd09ff74ad01133aa09'),(3,'Ece','ece@yahoo.com','pbkdf2:sha256:50000$AMdo7AxQ$c64433ba449dc1ec990e656ae36a17331e386c9ca28eb8ead89b0d935a8c3290'),(4,'Patis','patis@yahoo.com','pbkdf2:sha256:50000$B3f6y1oV$876edacf853abaf5fd6cf7c707eee2201a0fc1627d37b94204db836479aa2c23'),(5,'Leila','leila@yahoo.com','pbkdf2:sha256:50000$tCpPCaEj$564a7b0147ae2640eaed623f55c8e312951e73d39ffbf16ba2ec7d6c810cc366');
/*!40000 ALTER TABLE `blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blog`
--

DROP TABLE IF EXISTS `tbl_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(45) DEFAULT NULL,
  `blog_description` varchar(5000) DEFAULT NULL,
  `blog_user_id` int(11) DEFAULT NULL,
  `blog_date` datetime DEFAULT NULL,
  `blog_file_path` varchar(200) DEFAULT NULL,
  `blog_accomplished` int(11) DEFAULT '0',
  `blog_private` int(11) DEFAULT '0',
  PRIMARY KEY (`blog_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blog`
--

LOCK TABLES `tbl_blog` WRITE;
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
INSERT INTO `tbl_blog` VALUES (3,'Today is Thursday.... Homework time...','again!!!',1,'2018-12-08 19:45:44','',0,0),(4,'merhaba','deneme',1,'2018-12-08 19:46:06','static/Uploads/af32f94b-994e-474d-ba96-6bd07202d517.jpg',0,0);
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_comments` (
  `blog_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `blog_comment` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comments`
--

LOCK TABLES `tbl_comments` WRITE;
/*!40000 ALTER TABLE `tbl_comments` DISABLE KEYS */;
INSERT INTO `tbl_comments` VALUES (3,1,'','<script>alert(\'HERE IS XSS!!!\')</script>');
/*!40000 ALTER TABLE `tbl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_likes`
--

DROP TABLE IF EXISTS `tbl_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_likes` (
  `blog_id` int(11) NOT NULL,
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_like` int(11) DEFAULT '0',
  PRIMARY KEY (`like_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_likes`
--

LOCK TABLES `tbl_likes` WRITE;
/*!40000 ALTER TABLE `tbl_likes` DISABLE KEYS */;
INSERT INTO `tbl_likes` VALUES (3,1,1,0),(4,2,1,1);
/*!40000 ALTER TABLE `tbl_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-08 19:53:50

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createUser`(
    IN p_name VARCHAR(20),
    IN p_username VARCHAR(20),
    IN p_password VARCHAR(250)
)
BEGIN
    IF ( select exists (select 1 from blog_user where user_username = p_username) ) THEN
     
        select 'Username Exists !!';
     
    ELSE
     
        insert into blog_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
     
    END IF;
END$$
DELIMITER ;


USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetCommentsByBlogId`;

DELIMITER $$
USE `FlaskBlogApp`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetCommentsByBlogId`(
IN p_blog_id bigint
)
BEGIN
select blog_id,comment_id,user_name,blog_comment from tbl_comments where blog_id = p_blog_id;
END$$
 
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_addBlog`;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addBlog`(
    IN p_title varchar(45),
    IN p_description varchar(1000),
    IN p_user_id bigint,
    IN p_file_path varchar(200),
    IN p_is_private int,
    IN p_is_done int
)
BEGIN
    insert into tbl_blog(
        blog_title,
        blog_description,
        blog_user_id,
        blog_date,
        blog_file_path,
        blog_private,
        blog_accomplished
    )
    values
    (
        p_title,
        p_description,
        p_user_id,
        NOW(),
        p_file_path,
        p_is_private,
        p_is_done
    );

    SET @last_id = LAST_INSERT_ID();
    insert into tbl_likes(
        blog_id,
        user_id,
        blog_like
    )
    values(
        @last_id,
        p_user_id,
        0
    );
     
END$$
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1;


USE `FlaskBlogApp`;
DROP FUNCTION IF EXISTS getSum;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `getSum`(
    p_blog_id int
) RETURNS int(11)
BEGIN
    select sum(blog_like) into @sm from tbl_likes where blog_id = p_blog_id;
RETURN @sm;
END$$
DELIMITER ;


USE `FlaskBlogApp`;
DROP Function IF EXISTS `hasLiked`;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `hasLiked`(
    p_blog int,
    p_user int
) RETURNS int(11)
BEGIN  
    select blog_like into @myval from tbl_likes where blog_id =  p_blog and user_id = p_user;
RETURN @myval;
END$$
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetAllBlogs`;

DELIMITER $$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetAllBlogs`(
    p_user int
)
BEGIN
    select blog_id,blog_title,blog_description,blog_file_path,getSum(blog_id),hasLiked(blog_id,p_user), user_name
    from tbl_blog, blog_user where blog_private = 0 and user_id = blog_user_id;
END$$
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetAllBlogsPublic`;

DELIMITER $$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetAllBlogsPublic`(
)
BEGIN
    select blog_id,blog_title,blog_description,blog_file_path,getSum(blog_id), user_name
    from tbl_blog, blog_user where blog_private = 0 and user_id = blog_user_id;
END$$
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetAllBlogsWithSearch`;

DELIMITER $$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetAllBlogsWithSearch`(
	IN p_search_text varchar(200)
)
BEGIN
    select blog_id,blog_title,blog_description,blog_file_path,getSum(blog_id), user_name
    from tbl_blog, blog_user where blog_private = 0 and user_id = blog_user_id 
    and (LOWER(blog_description) like CONCAT('%',LOWER(p_search_text),'%') or 
    LOWER(blog_title) like CONCAT('%',LOWER(p_search_text),'%') or 
    LOWER(user_name) like CONCAT('%',LOWER(p_search_text),'%'));
END$$
DELIMITER ;



USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_AddUpdateLikes`;

DELIMITER $$
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddUpdateLikes`(
    p_blog_id int,
    p_user_id int,
    p_like int
)
BEGIN
     
    if (select exists (select 1 from tbl_likes where blog_id = p_blog_id and user_id = p_user_id)) then
 
         
        select blog_like into @currentVal from tbl_likes where blog_id = p_blog_id and user_id = p_user_id;
         
        if @currentVal = 0 then
            update tbl_likes set blog_like = 1 where blog_id = p_blog_id and user_id = p_user_id;
        else
            update tbl_likes set blog_like = 0 where blog_id = p_blog_id and user_id = p_user_id;
        end if;
         
    else
         
        insert into tbl_likes(
            blog_id,
            user_id,
            blog_like
        )
        values(
            p_blog_id,
            p_user_id,
            p_like
        );
 
 
    end if;
END$$

DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_getLikeStatus`;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getLikeStatus`(
    IN p_blog_id int,
    IN p_user_id int
)
BEGIN
    select getSum(p_blog_id),hasLiked(p_blog_id,p_user_id);
END$$
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_updateBlog`;
 
DELIMITER $$
USE `FlaskBlogApp`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateBlog`(
IN p_title varchar(45),
IN p_description varchar(1000),
IN p_blog_id bigint,
In p_user_id bigint,
IN p_file_path varchar(200),
IN p_is_private int,
IN p_is_done int
)
BEGIN
update tbl_blog set
    blog_title = p_title,
    blog_description = p_description,
    blog_file_path = p_file_path,
    blog_private = p_is_private,
    blog_accomplished = p_is_done
    where blog_id = p_blog_id and blog_user_id = p_user_id;
END$$
 
DELIMITER ;


USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetBlogById`;

DELIMITER $$
USE `FlaskBlogApp`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetBlogById`(
IN p_blog_id bigint,
In p_user_id bigint
)
BEGIN
select blog_id,blog_title,blog_description,blog_file_path,blog_private,blog_accomplished from tbl_blog where blog_id = p_blog_id and blog_user_id = p_user_id;
END$$
 
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetBlogByIdPublic`;

DELIMITER $$
USE `FlaskBlogApp`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetBlogByIdPublic`(
IN p_blog_id bigint
)
BEGIN
select blog_id,blog_title,blog_description,blog_file_path,blog_private,blog_accomplished from tbl_blog where blog_id = p_blog_id;
END$$
 
DELIMITER ;


USE `FlaskBlogApp`;
DELIMITER $$
CREATE PROCEDURE `sp_deleteBlog` (
IN p_blog_id bigint,
IN p_user_id bigint
)
BEGIN
delete from tbl_blog where blog_id = p_blog_id and blog_user_id = p_user_id;
END$$
 
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_GetBlogByUser`;
 
DELIMITER $$
USE `FlaskBlogApp`$$
CREATE PROCEDURE `sp_GetBlogByUser` (
IN p_user_id bigint
)
BEGIN
    select * from tbl_blog where blog_user_id = p_user_id;
END$$
 
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validateLogin`(
IN p_username VARCHAR(20)
)
BEGIN
	select * from blog_user where user_username = p_username;
END$$
DELIMITER ;

USE `FlaskBlogApp`;
DROP procedure IF EXISTS `sp_addComment`;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addComment`(
    IN p_blog_id bigint,
    IN p_user_name varchar(45),
    IN p_comment varchar(85)
)
BEGIN
    insert into tbl_comments(
        blog_id,
        user_name,
        blog_comment
    )
    values
    (
        p_blog_id,
        p_user_name,
        p_comment
    );
    
END$$
DELIMITER ;