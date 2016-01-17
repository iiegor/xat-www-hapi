-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: xat
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `badge`
--

DROP TABLE IF EXISTS `badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badge` (
  `id` varchar(255) NOT NULL,
  `chatid` varchar(255) NOT NULL,
  `Test` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge`
--

LOCK TABLES `badge` WRITE;
/*!40000 ALTER TABLE `badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `index` int(255) NOT NULL AUTO_INCREMENT,
  `chatid` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `unbandate` bigint(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`index`),
  KEY `chatid` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bg` varchar(255) NOT NULL,
  `outter` varchar(255) NOT NULL,
  `sc` longtext NOT NULL COMMENT 'scroller message',
  `ch` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `radio` varchar(255) NOT NULL COMMENT 'radio ip',
  `pass` varchar(255) NOT NULL,
  `button` text NOT NULL,
  `attached` varchar(255) NOT NULL DEFAULT '',
  `pool` varchar(55) NOT NULL,
  `pools` varchar(255) NOT NULL,
  `gback` varchar(55) NOT NULL,
  `gline` varchar(255) DEFAULT NULL,
  `link` text NOT NULL,
  `bad` text NOT NULL,
  `announce` varchar(255) DEFAULT NULL,
  `blastban` varchar(255) DEFAULT NULL,
  `blastkick` varchar(255) DEFAULT NULL,
  `blastpro` varchar(255) DEFAULT NULL,
  `blastde` varchar(255) DEFAULT NULL,
  `lang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'Lobby','http://oi60.tinypic.com/1r6io9.jpg','',' Happy Halloween Ëƒ;] -HaX #ff6600',0,'142.4.212.72','http://69.64.38.76:8035/sid=1','2d36f3befee0c39062b040dcRdhlt2a02451d1fb9528566a7a7a66e0b268a2fc66b5cd12f244f6e4ca0106641d054fca62ad7d3174a67cb71761c5622ccaf6c5a46ff','#FFFFFF','Help','0 2 1','{\'m\':\'Lobby\',\'t\':\'ChillZone\',\'b\':\'Banned\',\'rnk\':\'9\'}','kmoon','wary,hehe,chew,evil,cd,wt,yum,smirk,smirk2,mad,goo,sleepy','','','','4','4','3','4',NULL);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `visible` int(1) NOT NULL DEFAULT '1',
  `id` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registered` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `pool` int(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `powers`
--

DROP TABLE IF EXISTS `powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powers` (
  `id` int(255) NOT NULL DEFAULT '0',
  `section` varchar(255) NOT NULL DEFAULT 'p0' COMMENT 'P string index',
  `name` varchar(255) NOT NULL COMMENT 'Power name',
  `subid` bigint(20) NOT NULL COMMENT 'ID in the p string',
  `cost` int(11) NOT NULL,
  `limited` int(1) NOT NULL DEFAULT '0',
  `description` varchar(10000) NOT NULL,
  `amount` int(255) NOT NULL DEFAULT '0' COMMENT 'Amount to sell',
  `topsh` longtext NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `powers`
--

LOCK TABLES `powers` WRITE;
/*!40000 ALTER TABLE `powers` DISABLE KEYS */;
INSERT INTO `powers` VALUES (0,'p0','allpowers',1,0,1,'test',1,'allpowers',''),(1,'p0','topman',2,180,0,'Your icon will go to the top of your section (eg moderator/member) even if you have a high id number unless another user also has this power',0,'',''),(2,'p0','subhide',4,90,0,'Set your star or heart to black (from red) even if you are a subscriber (have days). All other subscriber features still work eg glitter.',0,'',''),(3,'p0','mod8',8,450,0,'On any chat where you are a moderator you will be able to ban for up to 8 hours (up from 6).',0,'',''),(4,'p0','zoom',16,270,0,'When anybody mouses over your picture it will enlarge so that they can get a better look. Also you can zoom anyones picture on the chat.',0,'',''),(5,'p0','nofollow',32,90,0,'Normally friends can locate you and follow you around from chat to chat. This power allows you to block them from locating and following you.',0,'',''),(6,'p0','invert',64,180,0,'Make almost any smilie upside down. To make a smilie upside down add #i to the smilie code eg (cd#i). Works with () smilies only.',0,'',''),(7,'p0','mirror',128,90,0,'Mirror almost any smilie left to right. To make a smilie mirror add #m to the smilie code eg (cd#m). Works with () smilies only.',0,'',''),(8,'p0','noaudies',256,9,0,'Turns off the audies sound effects. Any messages with an audie will just beep like any other message. Audies still work if you click on them.',0,'',''),(9,'p0','reghide',512,90,0,'Remove your star or heart so that you show on the user list like an unregistered user. All other subscriber features still work eg glitter.',0,'',''),(10,'p0','nopc',1024,180,0,'Block incoming PC (private chat) from all users except friends. You can still initiate a PC. Owners, Mods and xat staff can always PC you.',0,'',''),(11,'p0','tempmod',2048,585,0,'NOTE YOU HAVE TO BE AN OWNER TO USE THIS POWER! Make a user a moderator from 1 minute to 24 hours. To use private chat the user and send him a message like /m2.5 which in this case would make him a moderator for 2 hours 30 minutes.',0,'',''),(12,'p0','hat',4096,90,0,'For a Turkish cap or baseball hat use (hat#t#FF0000). For a US football helmet use (hat#f#000080). You can use any color with a hex code. More hats will be added. Some hats may only available for holidays.',0,'',''),(13,'p0','red',8192,135,0,'Color any \"yellow\" smilie red. To make a smilie red add #r to the smilie code eg (d#r). If you have multiple color powers you can create custom colored smilies. Works with () smilies only.',0,'',''),(14,'p0','green',16384,135,0,'Color any yellow smilie green. To make a smilie green add #g to the smilie code eg (d#g). If you have multiple color powers you can create custom colored smilies. Works with () smilies only.',0,'',''),(15,'p0','blue',32768,135,0,'Color any yellow smilie blue. To make a smilie blue add #b to the smilie code eg (d#b). If you have multiple color powers you can create custom colored smilies. Works with () smilies only.',0,'',''),(16,'p0','light',65536,135,0,'Light/Dark any \"yellow\" smilie. To make a smilie lighter add pluses to the smilie #+++, darker add minuses #---- to the smilie code. If you have multiple color powers you can create custom colored smilies. Works with () smilies only.',0,'',''),(17,'p0','heart',131072,597,1,'Give a heart shape to any \"yellow\" smilie. To make a heart smilie add #h to the smilie code eg (biggrin#h). If you have color powers you can change the color. EG for a pink heart use: (love#h#ff99ff). Works with () smilies only.',0,'',''),(18,'p0','shuffle',262144,22,0,'Selects a random picture from a strip of pictures you specify. Set your avatar to be a horizontal strip of square pictures and a random picture will be shown with each message. Tool to help make a strip.',0,'',''),(19,'p0','animate',524288,360,0,'Make an animated avatar from a strip of pictures you specify. Set your avatar to be a horizontal strip of square pictures and an animation will be shown as your avatar. You can convert animated GIFs to picture strips here',0,'',''),(20,'p0','square',1048576,90,0,'Give a cyan square shape to any \"yellow\" smilie. To make a cyan square smilie add #s to the smilie code eg (smile#s). If you have color powers you can change the color. EG for purple use: (biggrin#s#800080). Works with () smilies only.',0,'',''),(21,'p0','nameglow',2097152,360,0,'Give a neon glow to your name on the chat box. To add a green glow add (glow) to the end of your name. If you have color powers you can add a custom colored glow. EG for red use: (glow#r) or white use: (glow#FFFFFF)',0,'',''),(22,'p0','cycle',4194304,450,0,'Give a cycle of rainbow colors to any \"yellow\", heart or square smilie. To make an cycle smilie add #y to the smilie code. EG (smile#y). To make a heart smiley cycle use: (wink#h#y), To make a square smiley cycle use: (frown#s#y). Works with ( ) Smilies only.',0,'',''),(23,'p0','hexagon',8388608,90,0,'Give a pink hexagon shape to any \"yellow\" smilie. To make a pink hexagon smilie add #x to the smilie code eg (smile#x). If you have color powers you can change the color. EG for purple use: (biggrin#x#800080). Works with () smilies only.',0,'',''),(24,'p0','clear',16777216,3300,1,'Give a clear background to any \"yellow\" smilie. To make a clear smilie add #c to the smilie code eg (smile#c). Works with () smilies only.',0,'',''),(25,'p0','boot',33554432,13716,1,'NOTE YOU HAVE TO BE AN OWNER OR MODERATOR TO USE THIS POWER! Boot a user to another chat. To boot click on the user and choose kick, there is a box to enter the group to kick them to e.g. \"Illusion\". If you boot people to inappropriate rooms or otherwise abuse the power it is a violation of the terms and you will forfeit the power. More info',0,'',''),(26,'p0','octogram',67108864,135,0,'Give a light green octogram shape to any \"yellow\" smilie. To make a octogram smilie add #o to the smilie code eg (smile#o). If you have color powers you can change the color. EG for purple use: (biggrin#o#800080). Works with () smilies only.',0,'',''),(27,'p0','show',134217728,45,0,'Allow other users to see your xats and days. Xats and days will appear on the powers dialog',0,'',''),(28,'p0','superkick',268435456,175,0,'Allows you to Kick lower ranks. Main Owners can kick Owners, Owners can kick mods and Members can kick banned members and BANNED guests. If you have boot power you can boot lower ranks as well!',0,'',''),(29,'p0','invisible',536870912,468,0,'NOTE: YOU MUST BE AN OWNER TO USE THIS POWER! Become invisible and show your status as offline/not present and still see the chat messages. To enable this power, have it checked it in the powers box. When you first turn up on a chat you will be invisible, if you talk you will appear online. You are only invisible to users you out rank.',0,'',''),(30,'p0','pink',1073741824,450,0,'Turn your pawn pink. When this power is enabled you will show as pink on the user list. NOTE: YOU MUST BE A GUEST, MEMBER OR OWNER IN  MODE TO USE THIS POWER',0,'',''),(31,'p0','31',2147483648,1000,0,'',0,'',''),(32,'p1','guestself',1,225,0,'Type /g in the main chat to turn yourself into a guest. Useful if you don\'t want to be a member on a chat or you want to resign as mod or not be main owner for a while. NOTE: If you de-owner yourself make sure you can get it back!',0,'',''),(33,'p1','sinbin',2,270,0,'NOTE YOU HAVE TO BE AN OWNER TO USE THIS POWER! Strip a moderator of kick and ban power from 1 minute to 24 hours. To use private chat the user and send him a message like /n2.5 which in this case would sinbin for 2 hours 30 minutes.',0,'',''),(34,'p1','diamond',4,738,1,'Give a purple diamond shape to any \"yellow\" smilie. To make a diamond smilie add #d to the smilie code eg (smile#d). If you have color powers you can change the color. EG for red use: (biggrin#d#FF0000). Works with () smilies only.',1,'',''),(35,'p1','purple',8,22500,0,'Turn your pawn purple. When this power is enabled you will show as purple on the user list no matter what your status. xat\'s first epic power is expensive so will be very rare.',2,'',''),(36,'p1','ttth',16,360,0,'Send a giant smiley kiss (for free) and ignore someone you don\'t want to talk to in one step. Type /t in the message or /tMessage#smiley.',0,'',''),(37,'p1','hands',32,270,0,'Put hands on other \"yellow\" smilies. Set different actions and mix/match for interesting combos. To make a biggrin doing loser use (biggrin#loser). To make a d smilie with thumbsup moving rotating at the wrist use (d#thumbsup#wrist). See wiki for more.',0,'loser,rockon,palms,thumbsup,thumbsdown,flip,shh,bye,hug,clap,backoff,hehe,hmm,crazy,ono,shrug',''),(38,'p1','hairm',64,135,0,'Put male hair styles on \"yellow\" smilies. To make a confused with a male hair style use (confused#hairm). If you have color powers, the hair can be colored e.g. (confused#hairm2#rg) or (confused#hairm3#800080). It can also be used with other powers such as hands. The price will go up when more styles are added.',0,'hairm2,hairm3,emo,nrd,punk',''),(39,'p1','hairf',128,180,0,'Put female hair styles on \"yellow\" smilies. To make a confused with a female hair style use (confused#hairf). If you have color powers, the hair can be colored e.g. (confused#hairf2#rg) or (confused#hairf3#800080). It can also be used with other powers such as hands. The price will go up when more styles are added.',0,'hairf2,hairf3,hairf4,g1,goth',''),(40,'p1','fade',256,1638,1,'Give a ghost like fade effect to any \"yellow\" smilie. To make a smilie fade add #f to the smilie code eg (smile#f).',0,'noface',''),(41,'p1','gag',512,1116,1,'Allows you to gag guests and members for up to an hour, assuming you have the necessary rank to ban. To gag someone click on them and press ban, select the duration and reason and press the gag button.',0,'',''),(42,'p1','costumes',1024,270,0,'Put costumes on \"yellow\" smilies. To make a confused with a jester hat use (confused#jester). If you have color powers, the costumes can be colored e.g. (confused#cb#g) or (confused#ninja#800080). It can also be used with other powers such as hands. The price will go up when more costumes are added.',0,'ninja,cb,police,nurse,jester,sphinx,dhat,crown,partyhat,facemask,sherlock,prop,grad,dunce2,straw,ribbon',''),(43,'p1','six',2048,2124,1,'Turn your \"yellow\" smilies into devils. To make a devil smilie use (cry2#6). To use it with the pitchfork use (cry2#r#six). It can be used with the smilie option mode: To use devils smilies for all your yellows type /o6 in to the chatbox, to return to normal type /o',0,'',''),(44,'p1','dood',4096,225,0,'Allows you to import images into doodle. Load a doodle you have been working on before, load a background or load a picture to draw on. To import an image, post the url to the image (direct link for photobucket) into the chat box and press the new Load button on doodle. See wiki for more information.',0,'',''),(45,'p1','angel',8192,10000,1,'Add wings, a halo, a cloud and prayer hands to any yellow smiley. For example to add all the effects use (angel#angel#halo#cloud#pray).',0,'halo,cloud,pray',''),(46,'p1','mute',16384,468,0,'FOR OWNERS ONLY! Allows  you to silent ban a user. This will ban a user wihout them knowing. To mute a user click on their name and press ban, select the duration and press\nthe mute button. NOTE: the max time to mute a user is 1 hour.',0,'',''),(47,'p1','radio',32768,225,0,'Take radio stations with you as you visit different chat groups. Support your favorite radio stations by sharing them with your fellow chatters, if anyone clicks on your radio smilie they will tune in as well. See wiki for more.',0,'',''),(48,'p1','fruit',65536,639,1,'Give a fruity background to any \"yellow\" smilie. Eg (smile#fruit) (d#apple) (yum#pear) (eek#orange) (wink#plum) (hello#lemon). Works with () smilies only.',0,'apple,lemon,pear,orange,plum,banana',''),(49,'p1','sport',131072,360,1,'Support your team! Add sport effects to yellow smilies - #shirt, #football, #soccer, #ball, #bb, #sport, #shirts, #foam, #weight. See wiki for more.',0,'shirt,soccer,football,shirts,ball,bb,foam,weight,trophy,helmet,cupw',''),(50,'p1','num',262144,360,0,'Add 1-3 letters or numbers to some smilies. Examples: (l#num#numiÃƒÂ¢Ã¢â€žÂ¢Ã‚Â¥u) (noface#num#num8). Note may need other powers for all effects. See wiki for more',0,'',''),(51,'p1','hush',524288,292,0,'Hush a chat. Stop everyone on a chat talking so you can make an announcement etc. Eg /hm60Announcement! See wiki. NOTE THIS IS AN OWNER POWER. THIS POWER WILL NOT BE LIMITED',0,'',''),(52,'p1','halloween',1048576,600,1,'Halloween smilies and effects. Smileys are: (halloween) (ghost) (grim) (tomb) (bat) (pkn) (cdn) (mmy) (frk) (wh). This power will be limited but there will be a chance for all to buy. See wiki for details',0,'pknlaugh,tort,pkn,wh,frk,mmy,cdn,grim,tomb,bat,ghost,dig,die',''),(53,'p1','anime',2097152,270,0,'Anime smilies, tops, hairstyles and accessories. 22 in all! E.g. (anime) (headband) (fan) (tear) (haira1). See wiki for details',0,'hypno,dizzy,rage,headband,fan,comeon,grin,grump,tear,awe,doh,pouty,maniac,squint,ahhh,quiver,haira1,haira2,haira3,haira4,haira5,astro,haira6,haira7,haira8,haira9,haira10',''),(54,'p1','status',4194304,360,0,'Show a status message under your name on the chat. To use type $status=Having breakfast in the chat. See wiki for details',0,'',''),(55,'p1','thanksgiving',8388608,706,1,'Thanksgiving themed smilies. Smileys are: (pilgrimm) (pilgrimf) (indian) (indian2) (indian3) (chef) (dining) (eatleg) (feast). This power will be limited.',0,'pilgrimm,pilgrimf,indian,indian2,indian3,chef,dining,feast2,eatleg',''),(56,'p1','snowy',16777216,363,1,'Use snowflake backgrounds for smiles eg (d#snowy). Add snow to yellow smilies: (d#snows). Use the Snowy kiss and glitter.',0,'snows',''),(57,'p1','christmas',33554432,2061,1,'26 seasonal smilies and effects eg (scarf) (give) (shiver) (wreath) (sball) (xb1) (tree). See wiki for details',0,'beard,bell,cane,ches,elf,give,pole,sack,sball,scarf,sdeer,sfeet,shiver,sledge,slist,smound,spull,stock,tree,wreath,xb1,xb4,skiss,bulb,sgift',''),(58,'p1','count',67108864,180,0,'Countdown timer, shows time remaining until a specified event e.g. New Year. Mechanical and LED styles. See wiki for details',0,'',''),(59,'p1','stick',134217728,270,0,'Create your own custom animated stickmen and use them on the chat box as smilies and avatars. See wiki for details',0,'',''),(60,'p1','dx',268435456,81,0,'Allows you to convert some of your days to xats. Note when you use the power it goes. Convert now!',0,'',''),(61,'p1','tempmem',536870912,175,0,'Make a guest into a member for 1 minute up to 24 hours. To use, private chat the guest and send /mb2.5 which would make a member for 2 hours 30 minutes. THIS POWER WILL NOT BE LIMITED',0,'',''),(62,'p1','valentine',1073741824,2610,1,'Valentine smilies, (beat) (bheart) (cupid) (card) (hug2) (hug3) (ilu) (lhand) (ring) (rose) (rose2) (valentine)\n See wiki for details',0,'beat,bheart,cupid,card,hug2,hug3,ilu,lhand,ring,rose,rose2',''),(63,'p1','63',2147483648,1000,0,'',0,'',''),(64,'p2','blueman',1,900,0,'Turn your pawn dark blue. When this power is enabled you will show as dark blue on the user list if you are a guest or member. NOTE: YOU MUST BE A GUEST, MEMBER OR OWNER IN $TEALTH MODE TO USE THIS POWER!',0,'',''),(65,'p2','party',2,180,0,'Have a party on xat with party smilies: (balloon) (bride) (cake) (clink) (dance) (dance2) (dance3) (groom) (photo) (popper) (toast) (phat). See wiki for details',0,'balloon,bride,cake,phat,clink,pdance,pdance2,pdance3,groom,photo,popper,toast',''),(66,'p2','irish',4,720,1,'Celebrate St Patrick\'s day with these smilies: (irish) (clover2) (drink) (igirl) (iman) (pot) (rainbow) (shi) (tap). $WIKI',0,'clover2,drink,igirl,iman,pot,rainbow,shi,tap,drum,bagpipes',''),(67,'p2','flashrank',8,585,0,'Make your pawn fade between your pawn color power (purple, pink, blueman) and your rank on the chat. Mods can make use of pink and blueman powers if they have flashrank.',0,'',''),(68,'p2','easter',16,243,1,'Celebrate Easter with these smilies: (easter) (basket) (bunny) (bunny2) (chick) (egg2) (eggb) (paintegg). $WIKI',1,'basket,bunny,bunny2,chick,egg2,eggb,paintegg',''),(69,'p2','nopm',32,135,0,'Block incoming PMs (private messages) from all users except friends. Owners, Mods and xat staff can always PM you. $WIKI',0,'',''),(70,'p2','banish',64,270,1,'Users who are banned for more than 1 hour will be banished i.e. can\'t see the messages, members or guests $WIKIP',0,'','1'),(71,'p2','circus',128,225,0,'Roll up, roll up, the circus is in town. Get your ticket for the Cirque du xat. e.g. (juggler) (firewand) (acrobat) (splat). 16 in all. $WIKI',0,'acrobat,balloonart,cannon,clown,eleride,fireblow,firewand,highwire,uniwire,juggler,lion,splat,tamer,uni,unirope,wheel',''),(72,'p2','gkaoani',256,900,1,'Lets any subs, on the group you assign it to, use the 30 kaoani style smilies. It includes kaoani versions of many classic smilies and new expressions. The owner of the power can also use the kaoani back in a combo on any chat e.g. (redface#gkaoani). Not limited. ',1,'kbiggrin,kclap,kconfused,kcool,kcrying,kdizzy,keek,keyerub,kfit,kfrown,kglare,khehe,khello,khug,kkiss,klove,kmad,kmischief,knod,krant,kredface,ksad,ksleepy,ksmile,ksmirk,kstraight,kstruggle,ktongue,kun,kwink','1'),(73,'p2','military',512,534,1,'Military themed smilies. Smileys are: (camo) (coastguard) (drillserg) (gasmask) (m1h) (marine) (pilot) (sailor) (sailor2) (salute) (smoke) (military#w2). This power will be limited.',0,'camo,coastguard,drillserg,gasmask,m1h,marine,pilot,sailor,sailor2,salute,smoke',''),(74,'p2','gline',1024,810,1,'Lets a chat owner change the smilie line to a set of smilies of their choosing. The smilies must be non-combos available to all, group smilie powers like gkaoani can be used. Not limited. ',0,'','1'),(75,'p2','bump',2048,180,0,'Bump is used to draw a friends attention to a private chat tab, by shaking the chat box, playing a sound and turning the padlock red. You can bump friends and if mod or above, people of lower rank. $WIKI',0,'',''),(76,'p2','gkaliens',4096,3258,1,'Lets anyone, on the group you assign it to, use the kalien style smilies. The owner of the power can also use the kalien back in a combo on any chat e.g. (redface#gkaliens). LIMITED. ',1,'kachat,kacrazy,kafang,kafill,kagab,kagrin,kagsp,kalook,kao,kaoo,kapunch,kaswt,katalk,katear,katears,kaum,kaupset,kawink','1'),(77,'p2','scifi',8192,659,1,'Science fiction smilies: (scifi) (alienb) (alien2) (beam) (borg) (cylon) (jetpack) (laser) (ufo) (vial) (vr). Limited. $WIKI',0,'alien2,alienb,beam,blob,borg,cylon,jetpack,laser,vial,vr,ufo',''),(78,'p2','supporter',16384,90,0,'Support your favorite group by assigning this power. Includes supporter smilies: (supporter) (cheerleader) (horn) (pennant) (corndog). $WIKIP',0,'cheerleader,horn,pennant,corndog,vuvu','1'),(79,'p2','tempown',32768,292,0,'Make a mod into an owner for 1 minute up to 24 hours. To use, private chat the mod and send /mo5.5 which would make an owner for 5 hours 30 minutes. Not limited. $WIKI',0,'',''),(80,'p2','gcontrol',65536,450,1,'Set who can ban who, can set the scroller, how long mods can ban for and much more. See wiki',1,'','1'),(81,'p2','tickle',131072,1000,0,'',0,'',''),(82,'p2','sea',262144,270,0,'sea themed smilies. Try out these smilie option codes: /o#diver#weed#bubbles#w20_20 and /o#fish#weed#bubbles#w16_20 this will make all your () smilies have the combo effect. To cancel just type /o $WIKIP',0,'fish,fish2,fish3,bubbles,crab,diver,dolphin,jellyfish,octopus,shrimp,starfish,turtle,weed','1'),(83,'p2','silly',524288,180,0,'Silly smilies: (silly) (bonk) (burp) (crazy2) (dopey) (impact) (irked) (itchy) (mischief2) (nose) (raspberry) (rolleye) (spit) (string).  ',0,'bonk,burp,crazy2,dopey,impact,irked,itchy,mischief2,nose,raspberry,rolleye,spit,string',''),(84,'p2','blastpro',1048576,360,0,'BlastPro shows animations when someone on the chat gets promoted e.g member to moderator. 2 BlastPros assigned unlocks a second animation, 4 unlocks a third. ',0,'','1'),(85,'p2','flag',2097152,225,0,'Over 180 flags with flapping animation. Support your team or country. Not limited. See wiki',0,'',''),(86,'p2','blastban',4194304,450,0,'BlastBan is a GROUP power that shows animations when someone on the chat gets banned. 2 BlastBans assigned unlocks a second animation, 4 unlocks a third, 8 unlocks a forth. $WIKIP',0,'','1'),(87,'p2','independence',8388608,284,1,'Celebrate USA / Independence Day with these smilies: (independence) (abe) (bbq) (flagwave) (fwlaunch) (glowstick) (liberty) (sparkler) (starburst) (starbounce) (starring) (tiphat) (usface) (usss). LIMITED. $WIKI',0,'abe,bbq,flagwave,fwlaunch,glowstick,liberty,sparkler,starbounce,starburst,starring,tiphat,usface,usss',''),(88,'p2','blastde',16777216,2772,1,'BlastDe is a GROUP power that shows animations when someone on the chat gets a lower rank. 2 BlastDes assigned unlocks a second animation, 4 unlocks a third, 8 unlocks a forth. LIMITED. $WIKIP',0,'','1'),(89,'p2','summer',33554432,148,1,'Have fun in the sun.(summer) (beachbbq) (cooler) (efan) (fishing) (frisbee) (goggles) (kayak) (laytowl) (pina) (sanddig) (sandplay) (bands) (towl) (waterbottle) (waterskii)  LIMITED.',0,'beachbbq,cooler,efan,fishing,frisbee,goggles,kayak,laytowl,pina,sanddig,sandplay,bands,towl,waterbottle,waterskii',''),(90,'p2','bad',67108864,180,1,'A GROUP power that allows you to add your own bad words to the bad words filter. Bonus smilies included. $WIKIP',1,'biker,slingshot,thief,fbomb,liar','1'),(91,'p2','rapid',134217728,234,0,'ignore, unban, ban, gag, mute, member and guest with one mouse click. $WIKI',0,'',''),(92,'p2','horror',268435456,306,1,'A GROUP power that allows you to add flix (background animations) to your chat. Bonus horror smilies included. Also for halloween only seasonal pawns for the chat. $WIKIP',0,'mist,franken,goblin,knife,pkncut,spider,triclops,vamp,warewolf','1'),(93,'p2','mint',536870912,90,0,'Set a minimum transfer amount you will accept. When active, each mint power raises the transfer limit by 50 xats or 4 days. Also includes bonus smilies (lob) (hit) (dodge) (moring) (mobounce). $WIKI',0,'hit,dodge,lob,mobounce,moring',''),(94,'p2','blastkick',1073741824,270,0,'BlastKick is a GROUP power that shows animations when someone on the chat gets kicked. 2 BlastKicks assigned unlocks a second animation, 4 unlocks a third, 8 unlocks a forth. $WIKIP',0,'',''),(95,'p2','95',2147483648,1000,0,'',0,'',''),(96,'p3','winter',1,450,0,'24 winter and christmas smilies and up to 6 flix backgrounds (needs up to 32 assigned). $WIKIP',0,'carolers,decortree,giftdrop,giftrattle,gingerbread,pullsled,antler,shovel,accident,snowboard,snowfight,snowm,xface,snowmobile,ornament,earmuffs,snowglobe,cold,freezing,snowover,snowangel,windy,icecube','1'),(97,'p3','adventure',2,954,1,'Adventure themed smilies: (adventure) (campfire) (canopy) (compass) (firstaid) (hangglider) (hunting) (lantern) (map) (marshmallow) (iceaxe) (swing) (waterskiing) (zipline) (smokes) LIMITED. $WIKI',0,'campfire,canopy,compass,firstaid,hangglider,hunting,lantern,map,marshmallow,iceaxe,swing,waterskiing,zipline,smokes',''),(98,'p3','feast',4,517,1,'A feast of 30 food smilies and up to 3 flix backgrounds (needs up to 4 assigned). $WIKIP',1,'bowleat,burger,burgerlook,candycorn,carrot,cherry,chicken,chili,chipeat,coffeesplash,donut,eatspagetti,eattakeout,eggcook,eggplant,fortunecookie,fries,icecream,icecreameat,peanut,popcorn,pretzel,soupeat,spam,stirpan,takeout,thinkfood,toast2,pizza','1'),(99,'p3','single',8,135,0,'Prevent other users marrying or bffing you. Includes broken heart on pawn [put (hat#z) in your name] and (asif) (heartbounce) (one) (heartburst) bonus smilies.. $WIKI',0,'asif,one,heartburst,heartbounce,noway',''),(100,'p3','link',16,360,0,'Create custom link words for your chat. GROUP POWER. $WIKIP',0,'','1'),(101,'p3','shocker',32,936,1,'Shocker themed smilies: (duck) (electrocute) (eyepop) (flamed) (lookaround) (scream) (wow) (dazed) (hazey) (drool) (footmouth) (mindblow) (misspeak) (relieved) (uvula) (arc) LIMITED. $WIKI',0,'duck,electrocute,eyepop,flamed,lookaround,scream,wow,dazed,hazey,drool,footmouth,mindblow,misspeak,relieved,uvula,arc','1'),(102,'p3','fairy',64,3474,1,'Fairy flix animated backgrounds and smilies. Price will drop and then the power will be withdrawn. LIMITED. GROUP POWER. $WIKIP',0,'butterfly,fcrown,fhair,fhat,flower2,frog,fwings,heartwand,mushrooms,shards','1'),(103,'p3','namecolor',128,6500,0,'Color your name on the chat box. N.B. you also need nameglow and color powers. EG for a purple name use: (glow#0#800080) or white with black glow: (glow#000001#FFFFFF). $WIKI',0,'',''),(104,'p3','gkbear',256,594,1,'Cute bear smilies. Price will drop and then the power will be withdrawn. LIMITED. GROUP POWER. $WIKIP',0,'kbawe,kbcold,kbcry,kbdance,kbpunch,kbsad,kbscream,kbweep,kbwink,kbyawn','1'),(105,'p3','angry',512,1300,1,'Don\'t get upset, get the angry power and vent your frustration with these smilies. LIMITED. $WIKI',0,'explode,facepalm,bite,hissyfit,mutter,potstir,pullhair,raging,ticked,yell,flame,grumpy2,headache,timebomb',''),(106,'p3','gscol',1024,270,0,'Set a default color for smilies. Eg you can have pink bears or aliens on the gline. GROUP POWER. $WIKIP',0,'','1'),(107,'p3','ugly',2048,348,1,'Be different with new \"ugly\" style smilies. LIMITED. $WIKI',0,'uangel,udemon,uevil,uhappy,ulook,uthink,usad,uscratch,usmile,utongue,uwink',''),(108,'p3','love',4096,270,0,'love smilies and also flix animated backgrounds for groups. UNLIMITED. $WIKIP',0,'coy,flirt,freehugs,heartbeat,heartblow,ihu,lovedraw,ucute,uhot',''),(109,'p3','barge',8192,234,0,'Allows owners and mods to move into full pools by barging another user out. $WIKI',0,'',''),(110,'p3','gkkitty',16384,374,0,'Kitty smilies for groups. If the power is assigned any sub can use the kitty smilies on the group. LIMITED. $WIKIP',0,'kkbiggrin,kkconfused,kkcool,kkcrying,kkd,kkdance,kkdead,kkeek,kkfrown,kkhide,kkhug,kkmad,kknme,kkpaws1,kkpaws2,kkpaws3,kkredface,kkscn,kkshock,kksleepy,kksmile,kkstraightface,kkstruggle,kktongue,kkun,kkwary,kkwink,kkx3,kkxd,kkyawn','1'),(111,'p3','fantasy',32768,225,0,'Fantasy themed smilies: (fantasy) (axe) (darkeyes) (dragon) (flail) (hole) (helmet2) (medusa) (orcm) (elf2) (ogre) (orcf) (invis) (scroll) (slash) (smskull) (sword) (wizard). $WIKI',0,'axe,darkeyes,dragon,flail,hole,helmet2,medusa,orcm,elf2,ogre,orcf,invis,scroll,slash,smskull,sword,wizard',''),(112,'p3','announce',65536,1800,0,'An announce message will be shown to all joining the chat at the bottom of the message list. $WIKIP',0,'','1'),(113,'p3','hero',131072,505,1,'(hero) (daggers)  (electro) (epi) (fireball) (flying) (genie) (iceman) (invisi) (jekyl) (maddr) (telekin) (amazon) and more. LIMITED. $WIKI',0,'daggers,electro,epi,fireball,flying,genie,iceman,invisi,jekyl,maddr,telekin,amazon,upaway,ripshirt',''),(114,'p3','rankpool',262144,720,1,'Create a pool for members/mods etc only and give the first two pools a custom name. $WIKIP',0,'','1'),(115,'p3','spin',524288,270,0,'Make smilies spin with the spin power. $WIKI',0,'',''),(116,'p3','animal',1048576,180,0,'Smilies of animals. ',0,'doggy,giraffe,goat,lion2,monkey,mouse,panda2,raccoon,sheep,unicorn',''),(117,'p3','music',2097152,270,0,'Use the side app to make smilies that play music. $WIKI',0,'disco,dj,drums,flute,guitar,harp,piano,trumpet,violin,zippo',''),(118,'p3','gkpanda',4194304,718,1,'Panda smilies for groups. If the power is assigned any sub can use the panda smilies on the group. LIMITED. ',1,'kpfit,kpembarassed,kppaws,kpd,kpannoyed,kppaws2,kplove,kpjoy,kpcrying,kphurt','1'),(119,'p3','unwell',8388608,315,1,'Unwell themed smilies. N.B. price will decrease over time. LIMITED. $WIKI',0,'blownose,chill,cough,icepack,sickface,sneeze,soup,thermometer,crutches,feint,cough2,headknock,crutches,sweats',''),(120,'p3','events',16777216,234,0,'View a log of bans, kicks etc. See wiki',0,'',''),(121,'p3','zap',33554432,117,0,'Shake the user when you kick them and send an optional audie. $WIKI',0,'cringe,shake,shocking',''),(122,'p3','sins',67108864,1368,1,'Seven sinful smilies plus power smiliey. LIMITED. ',0,'envy,gluttony,greed,lust,pride,sloth,wrath',''),(123,'p3','outfit',134217728,450,0,'Outfit your smiles.',0,'whip,turban,tophat,tinfoil,sombrero,paperbag,paperbag2,grandpa,grandma,glassesslip,disguise,curlers,braces,blindfold,beret',''),(124,'p3','wildwest',268435456,657,1,'Wild west smilies and two western kisses. $WIKI',0,'undertaker,sheriff,ropeg,ropeb,push,prospector,outlaw,native,bullride,bartender',''),(125,'p3','work',536870912,212,1,'Over 20 working smilies. LIMITED. ',0,'officeworker,driver,doctor,chef2,burgerflipper,blacksmith,astronaut,teacher,stewardess,shepherd,scientist,plumber,paperboy,miner,mechanic,judge,journalist,gardener,fortuneteller,fireman',''),(126,'p3','banpool',1073741824,175,1,'NOTE: RANKPOOL is also required to use this power. Make all banned users go into a special pool. $WIKIP',0,'','1'),(127,'p3','127',2147483648,1000,0,'',0,'',''),(128,'p4','beach',1,225,1,'Fun beach smilies in time for the summer. LIMITED ',0,'icman,lifeguard,lotion,metaldetect,sandbury,sandfun,shkhat,sunburn,surf,tanning',''),(129,'p4','candy',2,408,1,'candy themed smilies including two backs and two hands. LIMITED ',0,'candy,cdycorn,cdyback,donuteat,eatchoco,floss,gum,lolipop,mm',''),(130,'p4','gback',4,13500,1,'Set a default background for the smilies in your chat. EPIC. $WIKIP',1,'','1'),(131,'p4','zodiac',8,225,0,'Zodiac themed kaoani style smilies: (aries) (taurus) (gemini) (cancer) (leo) (virgo) (libra) (scorpio) (sagittarius) (capricorn) (aquarius)  (pisces) $WIKI',0,'aries,taurus,gemini,cancer,leo,virgo,libra,scorpio,sagittarius,capricorn,aquarius,pisces',''),(132,'p4','flower',16,1089,1,'(Flower) can be used as back. (fangry) (fcry) (fcool) (feek) (fconfused) (ftongue) (fredface) (fcrying) (fsleepy) (fbiggrin) (fsad) (fwink) $WIKI',0,'fangry,fcry,fcool,feek,fconfused,ftongue,fredface,fsleepy,fbiggrin,fsad,fwink',''),(133,'p4','space',32,270,0,'Ten space themed smilies and a kiss. $WIKI',0,'eclipse,meteorite,nasa,radiotele,rocket,satellite,saucer,shuttle,space,telescope',''),(134,'p4','snakeban',64,540,0,'A snakebanned user has the chance to get out of the ban by completing a snake game. ',0,'sncool,sneek,snredface,snconfused,snfrown,snbiggrin,snangry,snsleepy,sncry,snsmile,snwink','1'),(135,'p4','stoneage',128,69,0,'IMPORTANT: Will be sold for 24 hours only. Prehistoric and caveman smilies. $WIKI',0,'caveman,dino,cavewoman,cavework,cavebeard,caveclothes,torch,spear,rocksmash,cavehair,boneswing,wallart,stickfire,cavebeard2',''),(136,'p4','spaceban',256,1017,1,'A spacebanned user has the chance to get out of the ban by completing a space game. ',0,'moonb','1'),(137,'p4','dance',512,135,0,'Make your smilies dance. $WIKI',0,'dance1,dance2,dance3,dance4,dance5,dance6,dance7,dance8,dance9,dance10,dance11',''),(138,'p4','kpeng',1024,180,0,'Kaoani penguin smilies. $WIKI',0,'kpesneeze,kpeshy,kpeshame,kpejoy,kpeglare,kpefit,kpedots,kpedizzy,kpeclap,kpeangry,kpedance,kpepop',''),(139,'p4','nerd',2048,196,1,'Nerd smilies for all you geeks. LIMITED. $WIKI',0,'aplus,bowtie,brain,coder,gates,nglasses,nsci,phone,read,calc',''),(140,'p4','matchban',4096,1143,1,'A matchbanned user has the chance to get out of the ban by completing a smiley matching game .. $WIKI',0,'','1'),(141,'p4','school',8192,118,1,'Smilies for the classroom. $WIKI',1,'backpack,daycare,gts,punished,rubber,schoolgirl,sbell,studying,tabsc,teacher2,writing',''),(142,'p4','silentm',16384,234,0,'Make a member without a message. Owners only unless changed by gcontrol. $WIKI',0,'',''),(143,'p4','punch',32768,270,0,'Punch bag smilies with new style faces. $WIKI',0,'pconfused,pcrying,pcute,pdead,pfury,pgiggle,pglare,pjump,pmanic,punched,pshades,pshy,psleepy,pthink',''),(144,'p4','away',65536,90,0,'Automatically show you are away from the chat. $WIKI',0,'',''),(145,'p4','peace',131072,180,0,'Peace themed smilies. NOT LIMITED. $WIKI',0,'dove,dove2,dove3,hglass,phair1,phair2,phair3,rbe,reggae',''),(146,'p4','kchick',262144,455,1,'Kaoani chick smilies. LIMITED. $WIKI',0,'kccrying,kcdizzy,kceek,kcglare,kclook,kcsad,kcsmug,kctongue,kcwink',''),(147,'p4','carve',524288,241,1,'Pumpkin carve smiles and bonus: (dracula) (grim2) (pknhide). LIMITED. $WIKI',1,'carveduh,carvegrin,carvescream,carvesly,carvesmile,dracula,grim2,pknhide,vampire',''),(148,'p4','spooky',1048576,300,1,'Scare your friends with spooky smilies and flix animations. ',0,'sixeyes,bat2,blackcat,blackwidow,ghost2,hockeymask,plant,bloodyknife,scarecrow','1'),(149,'p4','kdog',2097152,200,1,'Kaoani dog smilies. LIMITED. $WIKI',0,'kdcheer,kdcrazy,kddead,kdfit,kdglare,kdsad,kdshocked,kdsleepy,kdsmile,kdtired,kdwoo',''),(150,'p4','bot',4194304,900,0,'Allow a bot to access your group. Please read wiki before buying.',2,'bot2,bot3,bot4','1'),(151,'p4','manga',8388608,1683,1,'Manga themed smilies and (manga) effect, 18 in all. E.g. (manga1) (manga2) etc. LIMITED. $WIKI',0,'manga1,manga2,manga3,manga4,manga5,manga6,manga7,manga8,manga9,manga10,manga11,manga12,manga13,manga14,manga15,manga16,manga17',''),(152,'p4','mazeban',16777216,360,1,'A mazebanned user has the chance to get out of the ban by getting to the end of a maze. $WIKI',1,'','1'),(153,'p4','gold',33554432,50000,1,'Gold pawn and smilies. $WIKI',0,'goldb,bars,bar,goldstar',''),(154,'p4','snowman',67108864,133,1,'Snowman themed smilies. (snowman) (smcry) (smgrin) (smlaugh) (smredface) (smsad) (smshocked) (smsleepy) (smtongue) (smmad) (smcool). LIMITED. $WIKI',0,'smcry,smgrin,smlaugh,smredface,smsad,smshocked,smsleepy,smtongue,smmad,smcool',''),(155,'p4','reindeer',134217728,99,0,'Reindeer smilies (reindeer)  (resurprised)  (resmirk)  (resleepy)  (resad)  (reredface)  (relaugh)  (reglare)  (recry)  (recool)  (reangry) (renose). LIMITED. $WIKI',0,'resurprised,resmirk,resleepy,resad,reredface,relaugh,reglare,recry,recool,reangry,renose,reback',''),(156,'p4','santa',268435456,270,0,'Santa smilies and animated flix. $WIKIP',0,'sabiggrin,saconfused,sacry,saglare,saredface,sasad,sastraightface,sasurprised,satongue,sawink',''),(157,'p4','sparta',536870912,112,1,'This is Sparta! LIMITED. $WIKI',0,'spartayell,getready,helmet3,soldier,spants,spartafight,spartan,spartan2,truewar,xerxes',''),(158,'p4','dunce',1073741824,225,0,'Dunce your friends. Add a dunce cap to their pawn. (dunce) (duh) (doh2). $WIKI',0,'duh,doh2',''),(159,'p4','159',2147483648,1000,0,'',0,'',''),(160,'p5','newyear',1,496,1,'Smilies to help bring in the new year including fireworks FX. $WIKI',1,'calendar,celebration,champagne2,champagneback,clink2,firework1,firework2,nyball,nyhat,nykiss,nyparty,sparkler2',''),(161,'p5','can',2,112,1,'Crazy Can smilies. Companion power to Punch, can be mixed with it and used with #noface to make an alternative style of yellow smilies. LIMITED. $WIKI',1,'canangel,canbounce,cancontempt,canfury,canoo,canshifty,canthink,cantwitch,canum,canun',''),(162,'p5','codeban',4,225,0,'A codebanned user has the chance to get out of the ban by completing a code puzzle. $WIKI',0,'','1'),(163,'p5','magicfx',8,99,0,'A magic FX (effect) to add to smilies. LIMITED. $WIKI',0,'',''),(164,'p5','spy',16,173,1,'Espionage themed smilies. LIMITED. $WIKI',1,'crosshair,folder,footprints,headset,keyhole,keypad,peeking,radar,spydrink,spyeye,spying,spypaper,spyrope',''),(165,'p5','kduck',32,710,1,'Kaoani duck smilies. LIMITED. $WIKI',1,'kduckback,kduck1,kduck2,kduck3,kduck4,kduck5,kduck6,kduck7,kduck8,kduck9,kduck10,kduck11,kduck12',''),(166,'p5','heartfx',64,180,0,'Heart effects smilies. $WIKI',0,'heartfx,heartfx2,heartfx3',''),(167,'p5','carnival',128,247,1,'Carnival themed similes. $WIKI',1,'anonmask,beads,brazilboom,carniphant,cjester,cmask,flowersquirt,headdress,kreu,shakeit,wannasamba,yeayea,cjester2,cbird,cangel',''),(168,'p5','topspin',256,225,0,'Add a spin to top and backgrounds of smilies. $WIKI',0,'',''),(169,'p5','movie',512,126,1,'Movie themed smilies. LIMITED. $WIKI',1,'action,admission,booth,cameraman,director,drink2,film,filmroll,popcorn,pose,tickets',''),(170,'p5','monster',1024,180,0,'Cute monster smilies. $WIKI',0,'mangel,mbat,mbear,mchick,mdrip,mfish,mglare',''),(171,'p5','kat',2048,580,1,'Kat kaoani smilies with attitude. LIMITED. $WIKI',0,'kat1,kat2,kat3,kat4,kat5,kat6,kat7,kat8,kat9,kat10,katback',''),(172,'p5','typing',4096,90,0,'Show you are typing a message. $WIKI',0,'typing1',''),(173,'p5','ksheep',8192,157,1,'Kaoani sheep smilies. LIMITED. $WIKI',0,'ksheep1,ksheep2,ksheep3,ksheep4,ksheep5,ksheep6,ksheep7,ksheep8,ksheep9,ksheep10,ksheepback',''),(174,'p5','pulsefx',16384,689,0,'Add a pulsing effect to smilies eg (pulsefx) (d#pulsefxback#r). LIMITED. $WIKI',0,'pulsefxback',''),(175,'p5','blobby',32768,124,0,'Blobby monster smilies. LIMITED. $WIKI',0,'bbclap,bbconfused,bbcry,bbfit,bbglare,bbhug,bblaugh,bboops,bbpout,bbwink,bbback',''),(176,'p5','reverse',65536,180,0,'Cause a users words to be reversed. $WIKI',0,'',''),(177,'p5','fuzzy',131072,291,1,'Fuzzy monster smilies. $WIKI',1,'fzangel,fzback,fzbiggrin,fzcool,fzcrazy,fzd,fzdance,fzsad,fzstretch,fztongue,fztwirl',''),(178,'p5','spiralfx',262144,199,0,'Add spiral effects to smilies. $WIKI',0,'spiralfx2',''),(179,'p5','nursing',524288,103,0,'Nursing smilies for nursing week. LIMITED. $WIKI',0,'crazyn,nblood,nbroken,ndoc,nlist,nmask,nne,noxy,nsurg',''),(180,'p5','gsound',1048576,234,1,'Change the sounds on your group. ',1,'megap,volume,tooloud,canthear,playbtn','1'),(181,'p5','kbee',2097152,368,0,'Kaoani bee smilies. $WIKI',0,'kbeeback,kbeeclap,kbeecry,kbeed,kbeedance,kbeefedup,kbeejoy,kbeemad,kbeepunch,kbeexx,kbeeyay',''),(182,'p5','vortexfx',4194304,687,0,'Add vortex effects to smilies. $WIKI',0,'vortexfx2',''),(183,'p5','jail',8388608,171,0,'Lock up your smilies. $WIKI',0,'ballchain,bobby,copstop,cracker,cuffs,gavel,handsair,jailnumber,mugshot,prisoner',''),(184,'p5','zip',16777216,409,1,'Make a user only able to talk in smilies. $WIKI',1,'',''),(185,'p5','drip',33554432,275,0,'Water drip smilies, 15 in total. drip can be used as a back and try them with #noface. $WIKI',0,'dripclap,dripdance,dripeek,dripfit,dripglare,driphehe,driphello,driphug,driplaugh,dripsad,dripshocked,driptired,dripxd,dripyell',''),(186,'p5','moustache',67108864,90,0,'Add moustaches to your smilies. $WIKI',0,'moustache1,moustache2,moustache3,moustache4,moustache5,moustache6,moustache7,moustache8,moustache9',''),(187,'p5','whirlfx',134217728,815,1,'Whirling FX. See wiki for customization. LIMITED. $WIKI',0,'',''),(188,'p5','doodlerace',268435456,360,1,'Start and control the doodlerace game. To start doodleRace, click Games tab, click doodlerace and then type !bot on the chat and then !start to start playing (you dont need bot power for doodlerace) See wiki',0,'','1'),(189,'p5','olympic',536870912,300,0,'16 olympic smilies to celebrate the games in London. LIMITED. $WIKI',0,'bronzem,goldm,oboxing,ocycling,odiving,ogymnastics,ohurdles,orowing,orunning,oswimming,otennis,otorch,ovolleyball,silverm,oarchery,obasketball,ofencing,ohockey',''),(190,'p5','aliens',1073741824,557,0,'Alien smiles. LIMITED. $WIKI',0,'aliens,alilaugh,alidead,aliclap,alid,alilove,aliscratch,alitalk,alicry,alitongue,aliyay,aliback',''),(191,'p5','191',2147483648,1000,0,'',0,'',''),(192,'p6','matchrace',1,621,0,'Start and control the matchrace game. $WIKI',0,'','1'),(193,'p6','burningheart',2,2700,1,'Burning smilies (burningheart) and (bheartb). $WIKI',0,'bheartb',''),(194,'p6','snakerace',4,180,1,'Play and control a snake game. $WIKI',1,'','1'),(195,'p6','kpig',8,210,0,'kaoani piggy smilies. $WIKI',0,'kpigangry,kpigback,kpigball,kpigfraz,kpiglove,kpigmad,kpigmud,kpigpals,kpigsleep,kpigsnoot,kpigwrite',''),(196,'p6','poker',16,343,0,'Keep a straight face with these poker themed smilies. LIMITED. $WIKI',0,'pclubs,pobluff,pochips,pod,pogirl,poplayer,povip,powin,poyay,pspades,pdiamonds,phearts',''),(197,'p6','pony',32,147,1,'Cute pony smilies. LIMITED. $WIKI',0,'poback,pocall,poclap,pocry,poeat,pofan,poglasses,pohay,pomane,ponyd,powhip',''),(198,'p6','clockfx',64,305,1,'Rotating effects. LIMITED. $WIKI',0,'clockfx2,clockfx3,clockfx4',''),(199,'p6','drop',128,630,1,'Drop style smilies. $WIKI',0,'dropworry,dropumb,dropscratch,droprub,drophey,dropeat,dropdance,dropclap,dropback',''),(200,'p6','spacewar',256,1044,1,'Shoot and destroy other users planets. LIMITED. $WIKIP',0,'','1'),(201,'p6','speech',512,180,0,'Kaoani speech smilies. $WIKI',0,'spd,spfrus,spyay,spkiss,splap,splove,spvamp,spwrite,spxmas,sppup,spback',''),(202,'p6','vampyre',1024,267,1,'Frighten your friends with these vampyre smilies. $WIKI',0,'vbat,vbheart,vblood,vcoffin,vcross,vfangs,vglamour,vrip,vstake,vtongue,vstake,vfangs,vtongue,vglamour,vbat,vblood,vcoffin,vcross,vbheart,vrip',''),(203,'p6','treefx',2048,540,1,'Christmas tree FX for smilies. LIMITED. $WIKI',0,'',''),(204,'p6','claus',4096,244,1,'Comical santa smilies for Christmas. LIMITED. $WIKI',0,'clcool,cld,cleek,clgrin,clmad,clsad,clsmile,clsweat,clwink,clx,clwink,clgrin,clsad,clsmile,cld,clx,cleek,clcool,clmad,clsweat',''),(205,'p6','quest',8192,225,0,'Smilies to help you on your journey. $WIKI',0,'bearer,disappear,dwarf,goblin2,queenelf,sneak,thering,warrior,wizzard,dwarf,sneak,queenelf,goblin2,wizzard,warrior,disappear,bearer,thering',''),(206,'p6','lang',16384,1800,1,'Change the chat text. Important read wiki before buying or using. $WIKIP',0,'','1'),(207,'p6','quest2',32768,100,1,'Continue the quest. LIMITED. $WIKI',1,'1066,agreement,arrow,burnt,dwarf2,dwarfz,elve2,goblin3,newton,pile,1066,dwarfz,dwarf2,arrow,goblin3,newton,burnt,pile,elve2,agreement',''),(208,'p6','glitterfx',65536,225,0,'Glitter effects for smilies. $WIKI',0,'',''),(209,'p6','xavi',131072,450,0,'Make a custom avatar that responds to what you type. See wiki for details',0,'',''),(210,'p6','kmouse',262144,1566,1,'Cute kaoani mouse smilies. LIMITED. $WIKI',1,'kmcheer,kmcry,kmeyerub,kmfit,kmfrustrate,kmglare,kmgrouch,kmhide,kmhug,kmlaugh,kmshock,kmshuffle,kmsleepy,kmsmile,kmback,kmlaugh,kmsleepy,kmfit,kmhide,kmfrustrate,kmsmile,kmgrouch,kmback,kmcry,kmshock,kmhug,kmshuffle,kmeyerub,kmglare,kmcheer',''),(211,'p6','eighties',524288,166,1,'16 I love the eighties smilies. LIMITED. $WIKI',1,'bighair,bigphone,boombox,cassette,dance80,dj80,hoverboard,joystick,skate,slacker1,slacker2,poi,thermochrome,timemachine,skate,boombox,slacker2,slacker1,thermochrome,bigphone,cassette,bighair,poi,dj80,timemachine,dance80,joystick,hoverboard',''),(212,'p6','foe',1048576,225,0,'Mark a user as a foe. $WIKI',0,'',''),(213,'p6','everypower',2097152,2147483647,0,'',0,'',''),(214,'p6','makeup',4194304,151,1,'You\'ll be made up with these smilies. $WIKI',0,'nailpolish,lipgloss,makeupface,blush,perfume,comb,lipstick2,lipstick1,purse,eyeliner',''),(215,'p6','kheart',8388608,412,1,'Heart shaped smilies in kaoani style. $WIKI',1,'kheartb,khkiss,khlips,khring,khroses,khbub,kharrow,kheyes,khmadly,khhurt,khcupid,khily,khhug',''),(216,'p6','kmonkey',16777216,225,0,'Cute monkey smilies in kaoani style. $WIKI',0,'kmodance,kmorage,kmowonder,kmostare,kmoun,kmoredface,kmofrus,kmod,kmoback,kmoblow,kmowhistle,kmonehneh,kmoteeth',''),(217,'p6','nuclear',33554432,450,0,'Nuclear FX for smilies. Highly configurable with app. See wiki for details',0,'nuclearb',''),(218,'p6','stylist',67108864,180,1,'Add style to your smilies. LIMITED. $WIKI',1,'shave,mirror2,shair3,shair2,shair1,shair7,shair6,shair5,shair4,barber',''),(219,'p6','spring',134217728,526,1,'Spring is here. Celebrate with these beautiful smiles. LIMITED. $WIKI',1,'flohat,watercan2,birdy,flowerbed,flowers,rainbow2,inflower,bees,flohide,springhat,watercan,floshow,butterflys',''),(220,'p6','vote',268435456,450,0,'Survey your users with a mini poll. Bonus smilies. $WIKIP',0,'bemused,voting,voting2,cross,tick,placard','1'),(221,'p6','hands2',536870912,180,0,'More hands powers including high five. $WIKI',0,'pointing,highfive,hearno,notlistening,crossed,callme,heehee,prosper,daydreaming,cutthroat,peace2,hands2',''),(222,'p6','eggs',1073741824,207,1,'Egg and Easter smilies. LIMITED. $WIKI',1,'stripegg,basket2,eggwink,chickwalk,eggsleep,eggnod,bunnyears,eggbroke,eggtongue',''),(223,'p6','223',2147483648,1000,0,'',0,'',''),(224,'p7','hearts',1,450,0,'Be game master of a hearts card game. See wiki.',0,'','1'),(225,'p7','kfox',2,422,1,'Foxy smilies. LIMITED. $WIKI',1,'kfoxwhat,kfoxcry,kfoxshades,kfoxd,kfoxtant,kfoxsleep,kfoxtwag,kfoxpsy,kfoxbino,kfoxinl,kfoxggl',''),(226,'p7','kcow',4,119,1,'Kaoani cow smilies. LIMITED. $WIKI.',1,'kwlove,kwswt,kwangry,kwyay,kwsleepy,kwbell,kwcry,kwlaugh,kwscratch,kwwhat,kwmad,kwd,kwfrus,kwnod',''),(227,'p7','sketch',8,180,0,'Animated sketch style smilies. $WIKI.',0,'sksad,skback,skgrr,sksmile,skwink,skoo,skd,skdead,sksix,skfrus,skannoyed',''),(228,'p7','led',16,225,0,'Make a scrolling LED style message. See wiki.',0,'',''),(229,'p7','seaside',32,267,1,'Get ready for summer with the seaside power. $WIKI',0,'sandcastle,shell,coconut,crab2,seatree,flipflops,beachvolley,beachdrink,dolphin2',''),(230,'p7','hair2f',64,275,1,'More female smiley hair styles. $WIKI',1,'hair2f10,hair2f3,hair2f2,hair2f1,hair2f7,hair2f6,hair2f5,hair2f4,hair2f9,hair2f8',''),(231,'p7','statusglow',128,270,0,'Add a green glow to your status (status power required). $WIKI',0,'',''),(232,'p7','super',256,180,0,'New \"super\" style orange smilies. $WIKI',0,'suredface,suconfused,suback,sulaugh,sucool,sutongue,susad,susmile,sucry,sumad,sudead,sulove',''),(233,'p7','wedding',512,227,1,'Celebrate a wedding with these wedding smilies. LIMITED $WIKI',1,'flowersw,throwboquet,arch,invitation,givering,dovew,weddingcake,cakecut,roses',''),(234,'p7','germ',1024,292,0,'Ewwww germs themed smilies. All can be used as backs e.g. (twitch#germ2) To color them use two color codes e.g. (germ6#r#g) $WIKI',0,'germ10,germ4,germ5,germ6,germ7,germ2,germ3,germ8,germ9',''),(235,'p7','cactus',2048,214,1,'Cactus smilies with all new faces and different backgrounds. LIMITED. ',1,'cacdead,cacpanic,cactongue,cacback,cacmad,cacsmile,cacwhat,caclove,cacflaming,cacblow,caccool',''),(236,'p7','slotban',4096,225,0,'A slotbanned user has the chance to get out of the ban by playing a slot machine game. $WIKI',0,'orange2,plum2,slotbar,seven,cherries,spinbutton',''),(237,'p7','fourth',8192,234,0,'Celebrate the 4th July with these festive smilies. $WIKI',0,'usafw,iwantyou,waveflagf,showcal,flagfw,fwbang,fourthcal,waveflagm,usafws,watchfw',''),(238,'p7','switch',16384,450,1,'Be game master of a switch card game. $WIKI',0,'','1'),(239,'p7','cuboid',32768,215,1,'Cubist smilies and back. LIMITED $WIKI',1,'custar,cucool,cushine,cuback,cucat,cusad,cubiggrin,cumaracas,cusmile,cucry',''),(240,'p7','phasefx',65536,180,0,'Create phase effects. Many variants. $WIKI',0,'phaseplan,phaseques,phaseheart',''),(241,'p7','marriage',131072,270,0,'4 new marriage kisses and 10 smilies to help you celebrate your marriage. $WIKI',0,'showring,propose,weddingdrink,catchboquet,groom2,cake2,weddingring,bride2,twohearts',''),(242,'p7','romance',262144,560,1,'Romantic smilies. $WIKI',1,'cuddle,hugme,serenade,iheart,huba,formal,lashes,affection,kisses,hearthands',''),(243,'p7','sticky',524288,225,0,'Smilies inspired by sticky notes. $WIKI',0,'stcool,stcrying,stdevil,stheart,stsleepy,stattention,stangel,stlips,stwhat',''),(244,'p7','kickall',1048576,351,0,'Kick all guests from the chat. $WIKI This power should not be miss used.',0,'',''),(245,'p7','fruities',2097152,227,1,'Fun fruit flavoured smilies. $WIKI',1,'frgrapes,frorange,frpineapple,frlemon,frbanana,frapple,frmelon,frpear,frkiwi,frstrawberry',''),(246,'p7','darts',4194304,810,1,'Dart wheel zing game that can give prizes. $WIKIP',1,'dart,dartthrow','1'),(247,'p7','weather',8388608,225,0,'Smilies for all weathers. $WIKI',0,'foggy,windy2,hotthermo,tornado,stormy,sunny,sunshine,cleary,coldthermo,rainy,snowy2',''),(248,'p7','kangel',16777216,225,0,'kaoani style angels. $WIKI',3,'kantired,kancloud,kanjoy,kanroses,kanthink,kandizzy,kancry,kanlove,kangoo',''),(249,'p7','kdemon',33554432,360,1,'kaoani style demons. $WIKI',0,'kdesweat,kdestir,kdefire,kdefear,kderain,kdewar,kdetri,kdejoy,kderage',''),(250,'p7','autumn',67108864,247,0,'Autumnal smilies. $WIKI',0,'gotleaf,leaves,acorn,jam,squirrel,mushrooms2,sunflower,leaf,scarecrow2',''),(251,'p7','eggy',134217728,99,0,'Egg shaped smilies. LIMITED. $WIKI',0,'eggyes,eggzzz,egggamer,eggupset,eggback,eggshh,eggthumbs,eggcool,eggtickoff,eggcross',''),(252,'p7','redirect',268435456,450,1,'Use this group power to redirect a chat to another chat. $WIKI',0,'redirect2','1'),(253,'p7','ani1',536870912,276,1,'Anime characters and a star FX. LIMITED. $WIKI',1,'a1love,a1pff,a1fx,a1eww,a1heh,a1fedup,a1cry,a1hot,a1adore,a1fan,a1evil',''),(254,'p7','scary',1073741824,496,1,'Scary smilies for Halloween. LIMITED. $WIKI',0,'tomb2,coffin,scarytree,cobweb,scaryghost,pknburning,scaryeyes,scarybat,scaryhat',''),(255,'p7','255',2147483648,1000,0,'',0,'',''),(256,'p8','zwhack',1,540,1,'Use the xat ban hammer to smite those pesky zombies. $WIKI',0,'mallet','1'),(257,'p8','halloween2',2,226,1,'Halloween themed costumed yellow smilies. LIMITED. $WIKI',0,'madsci,docmask,whitehair,zbride,madhat,scissor,zgirl,bloodgirl,zdoc',''),(258,'p8','piracy',4,232,1,'Piracy on the high seas. LIMITED. $WIKI',1,'handhook,octopus2,telescope2,piratemap,piratebird,pirateship,trove,toxicdrink,barrel',''),(259,'p8','froggy',8,306,1,'froggy style smilies. LIMITED. $WIKI',1,'frbiggrin,frchkl,frlove,frmad,frsad,frooo,frdead,frcry,frcool',''),(260,'p8','blackfriday',16,180,0,'Shopping and bargain hunting smilies. $WIKI',0,'bagfight,cart,cashreg,manybags,cashhere,bags,lowprice,pricetag,bargain',''),(261,'p8','winterland',32,270,1,'Get ready for Christmas with the winter wonderland. LIMITED. $WIKI',1,'wtree,snowman2,chimney,fishing2,winterhouse,iceheart,glove,wlamp,ornament2',''),(262,'p8','noel',64,135,0,'Seasonal characters in male and female forms. $WIKI',0,'angelm,snowmanm,snowmanf,reindeerm,gingerwoman,reindeerf,angelf,gingerman,mrssanta,mrsanta',''),(263,'p8','toys',128,198,0,'Toys for Christmas. $WIKI',0,'puzzletoy,locomotivetoy,bearftoy,pyramidtoy,cartoy,ducktoy,spinningtop,dolltoy,helicoptertoy,bearmtoy',''),(264,'p8','badge',256,270,0,'Award a badge pawn to anyone on the chat. $WIKI',0,'',''),(265,'p8','celebrate',512,247,1,'Find a reason to celebrate with this power. LIMITED. $WIKI',0,'celcnny,celyeah,celhorn,celflag,celgrad,celbday,celdance,celbottle,celdrunk,celvictory',''),(266,'p8','hogmanay',1024,229,1,'Bring in the new year with these festive smilies. LIMITED. $WIKI',1,'countdown,nyfireworks,year,nysparkler,firecracker2,nyballoons,nyclock,firecracker',''),(267,'p8','cooking',2048,180,1,'Get cooking with these culinary smilies. LIMITED. $WIKI',1,'whisk,cookkiss,stir,serving,knead,blender,flipegg,flipburger,chop',''),(268,'p8','farm',4096,225,1,'Get back to the farm. LIMITED. $WIKI',1,'sheepback,eggs2,growing,sugarcane,wmback,cowface,rooster,tomatoes,cornback,scarecrw,milking',''),(269,'p8','divorce',8192,225,0,'Divorce in style. 4 new kisses to get divorced with. $WIKI',0,'divring,divm,divf,sadflower,dhammer,divsplit,botm,botf,divbreak,divnolove,brokenheart2',''),(270,'p8','arachnid',16384,225,1,'Creepy arachnid smilies. LIMITED. $WIKI',1,'ar3,ar10,ar1,ar5,ar9,ar2,ar4,ar6,ar7,ar8',''),(271,'p8','sweetheart',32768,180,0,'Heart themed smilies. $WIKI',0,'cupidheart,candleheart,keylove,swans,letterlove,varrow,fourteenth,sweetheart,vballoons,treelove',''),(272,'p8','random',65536,225,0,'Random smilies from your powers eg (random) (randomanime) (randomhands). $WIKI',0,'',''),(273,'p8','ladybug',131072,247,1,'Little red bug, oh so cute. LIMITED. $WIKI',1,'lbbehind,lblove,lbmad,lbdead,lbfly,lbd,lbdizzy,lbcry,lbahh,lbkiss,lbshock',''),(274,'p8','cupcake',262144,216,1,'Cupcake smilies. LIMITED. $WIKI',1,'cchappy,ccsleepy,ccback,ccangry,ccsad,cccry,ccbeye,ccnono,ccredface,ccscn',''),(275,'p8','bitefx',524288,207,0,'Make a smilie look like its being eaten. $WIKI',0,'broccoli,sweet,jelly',''),(276,'p8','luck',1048576,270,1,'The luck of the Irish. LIMITED. $WIKI',1,'clovers,beer2,pwalking,pballoons,potofgold,sheep2,harp2,horseshoe,goldclover,luckbh',''),(277,'p8','tongues',2097152,261,1,'A fun selection of smilies. LIMITED. $WIKI',1,'tobig,tohaught,tothirsty,tocircle,tostarry,toneener,toteeth,toeeh,topfft,tocheeky',''),(278,'p8','springflix',4194304,225,1,'Spring is here. Use these flix animations to decorate your chat. $WIKI',1,'springleaf,springflower,sunflower2,rflowers,butterfly2','1'),(279,'p8','snail',8388608,199,0,'Super snail smilies. LIMITED. $WIKI',0,'snail9,snail8,snail7,snail4,snail3,snail2,snail6,snail5,snail1,snailb,snail10',''),(280,'p8','eventstats',16777216,270,0,'Get events on chats summarized graphically. $WIKI',0,'','1'),(281,'p8','easteregg',33554432,225,0,'Easter eggs and smilies. $WIKI',0,'carrots,easterbasket,rabbit,sleepyegg,birdyeggs,chicken2,ebutterfly,eggchoco,inegg',''),(282,'p8','butterflies',67108864,225,1,'Spring is here and the butterflies are emerging. LIMITED. $WIKI',1,'butterflies2,bfb,butterflies7,butterflies6,butterflies5,butterflies4,butterflies3,butterflies9,butterflies8,butterflies10',''),(283,'p8','springy',134217728,207,1,'Get a spring in your smiley. LIMITED. $WIKI',1,'sprtired,sprback,sprthumbs,sprexhausted,sprevil,sprangry,sprcrazy,sprtongue,sprjump,sprfrus',''),(284,'p8','naughtystep',268435456,270,0,'Put a user on the naughty step. They are limited to one message every 30s. $WIKI',0,'',''),(285,'p8','coffee',536870912,189,0,'Relax with these coffee themed smilies. LIMITED. $WIKI',0,'mhand,sugar,coffeesack,fhand,cappuccino,coffeebeans,coffeemachine,lovecoffee,kettle',''),(286,'p8','hamster',1073741824,270,1,'Cute hamster smilies LIMITED. $WIKI',1,'harock,hajoy,habounce,hacry,haangry,hajump,hadream,hasleep,haexcite,hamsterback,hasway',''),(287,'p8','287',2147483648,0,0,'',0,'',''),(288,'p9','dreams',1,240,0,'Sweet dreams.',0,'climbing,dreaming,dreamsbh,glowworm,indream,lovedream,night,scarydream,zsleep',''),(289,'p9','statuscolor',2,1000,0,'Change the color of your status!',0,'',''),(290,'p9','gamefx',4,300,1,'GAMEFX styled smilies',1,'gamefx,grow,starman,screwattack,bubble,ghosteat,coinfx',''),(291,'p9','worldcup',8,200,1,'Soccer smilies',1,'worldcup,fball,changes,coner,goal,goldball,player,training,vuvu2,whistle',''),(292,'p9','rocks',16,230,0,'Rock smilies',0,'rocks,breakfx,rollingfx,rostar,roteeth,rolook,rocute,rofrown,roahah,rodizzy,roblinky,rolove,rosmirk',''),(293,'p9','troll',32,450,1,'Troll Smilies!!!',0,'troll,troll2,troll3,megusta,lulzsec,foreveralone,yuno,umad,fail,penis,failfish,penis2,penis3,wonder,finger,skull,sleep2,troll,huh,fucku,fart,boobs,boobs1',''),(294,'p9','sapphire',64,22000,1,'Awesome sapphire pawn c:',0,'',''),(295,'p9','awesomepawn',128,45000,1,'AWESOME PAWN!!!',0,'awesomepawn,bloodtrail,slug,cash',''),(296,'p9','yellowcard',256,275,1,'give your friends a yellow card',0,'',''),(297,'p9','ballfx',512,250,0,'ballfx smilie power',0,'ballfx,basketball,bowling,jugglerball,rollingball',''),(298,'p9','winner',1024,565,0,'Winner smilies',0,'winner,laurel,podium,ribbon2,ticker,trophy2,winnerflag,winning,wtape',''),(299,'p9','cutie',2048,850,0,'Cutie power',0,'cutie,cuangry,cubear,cubow,cubunnyears,cuchilled,cuexcited,cuhappy,cupleased,curage,cutired,cuunhappy,baby',''),(300,'p9','summerflix',4096,655,1,'Summerflix',0,'summerflix,scrab,sfan,shell2,sunny2','1'),(301,'p9','pawns',8192,125000,1,'Pawns power Coming soon',1,'chrome,emerald,tecno,yellow',''),(302,'p9','kfrog',16384,300,1,'Froggy themed smilies ^.^',1,'kcry,kfeat,kfrdizzy,kfrhug,kfrlove,kfrmad,kfrog,kfrpop,kfrsad,kfumbre',''),(303,'p9','pawnglow',32768,3000,0,'Put (pglow#hex) in your name to use.',0,'pglow',''),(304,'p9','coolz',65536,350,1,'coolz power',0,'coolz,cocross,cohappy,colove,conoway,cozap,corage,corage2,cosad,cosurprise,cowink,coyoyo,coshades,codribble,cocap',''),(305,'p9','bot5',131072,1000000,1,'Test power for staff only',1,'bot5',''),(306,'p9','magic',262144,400,0,'magic power',0,'magic,magicbook,magicbottle,magicbunny,magiccards,magician,magiclove,magicshow,magictable,magicwand',''),(307,'p9','staff',524288,2000000,1,'Staff Power only',1,'test1,test2,test3,test4,test5,test6,test7,test8,test9,test10',''),(308,'p9','Random3',1048576,150,0,'Test',0,'',''),(309,'p9','blubunni',2097152,200,0,'Blubunni power ',0,'blubunni,bbwary,bbstars,bbsecret,bbnoway,bblr,bbhot,bbhit,bbhammer,bbeyes,bbeat',''),(310,'p9','monkey2',4194304,10,1,'Monkey Twitch smilies',0,'mhat,mgrin,mo,mooh,msad,msmile,mt,we,mwink,mwt,mc,mcry,mg,ml,mmad,mmug',''),(311,'p9','instruments',8388608,500,0,'Intruments power',0,'instruments,accordion,amplifier,drum2,drumkit,guitar2,lovemusic,saxophone,trumpet2,violin2',''),(312,'p9','bomb2',16777216,50,0,'bomb smilies',0,'bomb2,bmad,bshit,bconfused,bsmile,bd,bweird',''),(313,'p9','pcback',33554432,5000,1,'Set a custom background to when someone pc\'s you',0,'pcback',''),(314,'p9','bird',67108864,300,0,'bird smilies',0,'bird,birdcute,birddizzy,birdflap,birdhot,birdidea,birdjackfx,birdnod,birdpuppetfx,birdlove,birdswing',''),(315,'p9','chocolate',134217728,100,1,'Chocoalte smilies',0,'chcroissant,chdonut,chicecream,chlove,chstrawberry,chsweet,chsweet2,chwhite,cocoa',''),(316,'p9','kmoon',268435456,1500,1,'Kaoani moon smilies and moon FX. LIMITED.',0,'kmoon,kmyy,kmya,kmwink,kmun,kmsleep,kmshutup,kmsal,kmpuffed,kmoonback,kmlove,kmjoy,ffs,roulette,dice',''),(317,'p9','marijuana',536870912,5500,1,'marijuana, for the stoners out there LIMITED.',0,'marijuana,bong,joint,stoned',''),(318,'p9','ksun',1073741824,3500,1,'Kaoani sun smilies and sun FX. LIMITED',0,'ksun,ksyy,ksunback,ksthink,ksset,ksrub,ksnono,ksmad,kskiss,ksjoy,kshappy,kshaha,kscry',''),(319,'p9','319',2147483648,3500,1,'',1,'',''),(320,'p10','roulette',1,3500,1,'roulette and dice smiley. LIMITED',0,'roulette,dice',''),(321,'p10','effects',2,3500,1,'effects. LIMITED',0,'effects,earth,earth2,earth3d,earthbreach',''),(322,'p10','yellow',4,13500,1,'yellow pawn. LIMITED must have hat and use code (hat#hd) to use',0,'yellow',''),(323,'p10','allpawns',8,75000,1,'8 exclusive pawns,must have hat power LIMITED',0,'allpawns,tech',''),(325,'p10','jump',32,3000,1,'jump smilies.LIMITED',0,'jump,jump2,jump3,jump4,jump5,jump6,jump7,jump8,jump9,jump10,jump11','');
/*!40000 ALTER TABLE `powers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'index',
  `chatid` bigint(20) NOT NULL,
  `userid` bigint(11) NOT NULL,
  `f` int(3) NOT NULL,
  `tempend` varchar(255) NOT NULL DEFAULT '0',
  `badge` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `ipbans` longtext NOT NULL,
  `pid` int(255) NOT NULL,
  `tax` bigint(255) NOT NULL DEFAULT '0',
  `ipc` int(5) NOT NULL,
  `connect_ip` text NOT NULL,
  `server_ip` text NOT NULL,
  `server_pt` int(255) NOT NULL,
  `backup_pt` int(255) NOT NULL,
  `server_domain` text NOT NULL,
  `verification` int(1) NOT NULL,
  `starting_xats` int(255) NOT NULL,
  `starting_days` int(255) NOT NULL,
  `max_per_ip` int(255) NOT NULL,
  `max_total` int(255) NOT NULL,
  `spam_wait` int(255) NOT NULL,
  `staff` text NOT NULL,
  `pawns` text NOT NULL,
  `power_release` text NOT NULL,
  `special_pawns` text NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NOT NULL,
  `powerid` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `count` bigint(255) NOT NULL,
  `private` int(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `to` int(255) NOT NULL,
  `from` int(255) NOT NULL,
  `xats` int(255) NOT NULL,
  `days` int(255) NOT NULL,
  `timestamp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpowers`
--

DROP TABLE IF EXISTS `userpowers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpowers` (
  `userid` bigint(11) NOT NULL,
  `powerid` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `purchased` bigint(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpowers`
--

LOCK TABLES `userpowers` WRITE;
/*!40000 ALTER TABLE `userpowers` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpowers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `k` int(255) NOT NULL,
  `k2` int(255) NOT NULL,
  `k3` int(255) NOT NULL,
  `d0` int(11) NOT NULL DEFAULT '0',
  `d2` int(11) NOT NULL DEFAULT '0',
  `bride` varchar(255) NOT NULL,
  `xats` bigint(255) NOT NULL,
  `reserve` bigint(255) NOT NULL,
  `credit` bigint(255) NOT NULL,
  `days` bigint(255) NOT NULL,
  `email` varchar(999) NOT NULL,
  `powers` varchar(255) NOT NULL,
  `enabled` varchar(255) NOT NULL,
  `dO` varchar(255) NOT NULL,
  `cloneid` int(11) NOT NULL DEFAULT '0',
  `desc` longtext NOT NULL COMMENT 'xatspace shit',
  `xatspaceBG` varchar(255) NOT NULL,
  `transferblock` int(32) NOT NULL,
  `connectedlast` varchar(200) NOT NULL,
  `referrals` int(10) NOT NULL DEFAULT '0',
  `active` int(255) NOT NULL DEFAULT '0',
  `subscriber` int(1) NOT NULL DEFAULT '0',
  `rank` int(1) NOT NULL DEFAULT '1',
  `loginKey` text NOT NULL,
  `xavi` text NOT NULL,
  `custpawn` varchar(6) NOT NULL,
  `trolls` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-17  1:17:44
