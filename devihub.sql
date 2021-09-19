/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 100406
Source Host           : localhost:3306
Source Database       : devihub

Target Server Type    : MariaDB
Target Server Version : 100406
File Encoding         : 65001

Date: 2019-11-19 15:16:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `privilegies_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `fk_group_privilegies_id` (`privilegies_id`) USING BTREE,
  CONSTRAINT `fk_group_privilegies_id` FOREIGN KEY (`privilegies_id`) REFERENCES `privilegies` (`privilegies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'Admin', '1');
INSERT INTO `group` VALUES ('2', 'Moderator', '2');
INSERT INTO `group` VALUES ('3', 'Member', '3');

-- ----------------------------
-- Table structure for most_searched_skills
-- ----------------------------
DROP TABLE IF EXISTS `most_searched_skills`;
CREATE TABLE `most_searched_skills` (
  `skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `times_searched` int(10) unsigned NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of most_searched_skills
-- ----------------------------
INSERT INTO `most_searched_skills` VALUES ('1', 'php', '2');
INSERT INTO `most_searched_skills` VALUES ('2', 'java', '2');
INSERT INTO `most_searched_skills` VALUES ('3', 'html', '2');
INSERT INTO `most_searched_skills` VALUES ('4', 'js', '1');
INSERT INTO `most_searched_skills` VALUES ('5', 'python', '0');
INSERT INTO `most_searched_skills` VALUES ('6', 'c++', '0');
INSERT INTO `most_searched_skills` VALUES ('7', 'c', '0');
INSERT INTO `most_searched_skills` VALUES ('8', 'unity', '0');
INSERT INTO `most_searched_skills` VALUES ('9', '.net', '0');
INSERT INTO `most_searched_skills` VALUES ('10', 'java spring', '0');
INSERT INTO `most_searched_skills` VALUES ('11', 'node js', '0');
INSERT INTO `most_searched_skills` VALUES ('12', 'laravel', '0');
INSERT INTO `most_searched_skills` VALUES ('13', 'perl', '0');
INSERT INTO `most_searched_skills` VALUES ('14', 'cobol', '0');
INSERT INTO `most_searched_skills` VALUES ('15', 'pasacal', '0');
INSERT INTO `most_searched_skills` VALUES ('16', 'mathlab', '10');
INSERT INTO `most_searched_skills` VALUES ('17', 'css', '4');
INSERT INTO `most_searched_skills` VALUES ('18', 'kotlin', '3');
INSERT INTO `most_searched_skills` VALUES ('19', 'mvc', '0');
INSERT INTO `most_searched_skills` VALUES ('20', 'c#', '0');
INSERT INTO `most_searched_skills` VALUES ('21', 'swift', '0');

-- ----------------------------
-- Table structure for privilegies
-- ----------------------------
DROP TABLE IF EXISTS `privilegies`;
CREATE TABLE `privilegies` (
  `privilegies_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) CHARACTER SET latin1 NOT NULL,
  `changeEmail` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `changeUsername` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `changeAddress` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `addUser` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `removeUser` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `banUser` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `editUserEmail` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `editUserUsername` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `editUserAddress` enum('true','false') CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `editUserName` enum('true','false') CHARACTER SET latin1 DEFAULT NULL,
  `editUserSurname` enum('true','false') CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`privilegies_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of privilegies
-- ----------------------------
INSERT INTO `privilegies` VALUES ('1', 'Admin', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', null, null);
INSERT INTO `privilegies` VALUES ('2', 'Moderator', 'true', 'true', 'true', 'false', 'false', 'true', 'false', 'false', 'false', null, null);
INSERT INTO `privilegies` VALUES ('3', 'Member', 'true', 'true', 'true', 'false', 'false', 'false', 'false', 'false', 'false', null, null);

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `skills_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `java` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `html` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `css` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `js` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `python` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `c++` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `c#` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `c` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `ruby` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `unity` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `.net` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `java spring` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `node js` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `laravel` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `mvc` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `perl` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `cobol` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `pascal` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `mathlab` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `swift` enum('true','false') CHARACTER SET latin1 NOT NULL,
  `kotlin` enum('true','false') CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`skills_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES ('1', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'true', 'true');
INSERT INTO `skills` VALUES ('2', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'true', 'true');
INSERT INTO `skills` VALUES ('3', 'false', 'false', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'true', 'true');
INSERT INTO `skills` VALUES ('4', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'true', 'true');
INSERT INTO `skills` VALUES ('5', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true');
INSERT INTO `skills` VALUES ('6', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sex` enum('male','female') CHARACTER SET latin1 NOT NULL DEFAULT 'male',
  `group_id` int(10) unsigned NOT NULL,
  `status` enum('active','banned') CHARACTER SET latin1 NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `surname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `skills_id` int(10) unsigned DEFAULT NULL,
  `times_searched` int(11) DEFAULT 0,
  `profile_picture` blob DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uq_user_email` (`email`) USING BTREE,
  UNIQUE KEY `uq_user_username` (`username`) USING BTREE,
  KEY `fk_user_group` (`group_id`) USING BTREE,
  KEY `skills` (`skills_id`),
  CONSTRAINT `fk_user_group` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ajakaca@gmail.com', 'Ajaksmaniac', 'test', 'male', '1', 'active', 'Aleksandar', 'Jovanov', '1', '54', 0xFFD8FFE000104A46494600010100000100010000FFDB0043000302020302020303030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F171816141812141514FFC0000B0800C800C801011100FFC4001D000002020301010100000000000000000004050607020308010009FFC4004610000103030302020705050605020700000102030400051106122107311341081422516171813291A1B1C1152342526216243392A2D1172543728253F018346383B2E1F1FFDA0008010100003F00FD06485E0828484F9006955C8A231257EC249EE6A2E95AD77F05A500A0DA8E33DC7144DA949792F10AFE3C9C7C8715EDE5EF09B65480492AC607CAA1F01E52EF2E6FE4F8A8CFE346753C91A02EC4770D8E3FF215C9B0DFD88756A04FB0E2B07E04D2DD49AB972A22D6EC50D365000495F3C7D29AE8EBFF00ED6661B6846C4B4303272547EEA98CA61731531080372A1B69F6BB73BA96BB0EEB203456DC5094F00788BC1FF4D74E740197E3F4E9624A5B4B8A98B386C923184FBEACB90094A771F234231E3B914EC5A9A0724AC73E67B56E6DB71720BA5F516F18081E47DF5A5C7946EB0D2A2720AD453EE1B703F3A9034E0DA39EF42C2581192ADE949392413F1AD729E6FD76124B807B4B59E7FA71FAD18A94DA53CAD3F7D2EB738DBCFCD742872F601CF6C25228C7646D4E73C01DA91CE4EE798C8C908FCCD790D5B63A4630073F79A69B7670694DD980FC75A73BBDD9A86DB100EA36CF756C527B53FB432D84C9F613FE267B7C0579351E1BCC942376E561431DB8A88CD6C26F4B3B427F788EDF3343F53119D1378014424320F7FEA15CA4C6363AA512400E0E3BF735AF5469BB7299F0CA5E7331C2F0A797F6BDFDE88D1305886EC6F082D271B4A4ACA876F8D48753DF23589895E3B8A6D4FB0DB4D86C654558576A8733D41D34A01B90A9FB120296E78EBF63E6339C5767F42C443D318CEC177C68CFC8538873795EE071CE4D590B48514E5492424E40342424BAE33B4242519E09F31EFA2C24B2C1232AF891C9A551528977A6D0EA015212B52828679F6453E8F6E8A5D9198EDA885019281FCA3FDEB09D6887E12008ACA72E2070D8EDB856F5DA62100888CE476FDD8A063C28E993252196F1BC0C040C0F647FBD610825B88EA9A42427C75F007B9447E94C94038CAB90014D239A80DC85638DA91DAB06014B2807BED19CD385A723DE2954D6CA0E7F855E7F1A83F3135A474F643A9563E071520B61F6E48CE70AE6BE96E292EA36F242B3C7BB1512B8AB37C583C7B6827FCC685EA739B343DE0E3290CE491FF70AE5170A196A4E47195F1DBF88D7DA9AE51DD7D1E1BED1488A9C7B63BE3B519A55F4ADE60214147682769CF95637DB0DAF57F5460DBEFCFAD8B3B36EF5A78364E4E38238E7DD5207A1F40C406530D2EC79121DF5643C86DCCA57DB0A04F039FC6AF1F4576C5B74E5EB4EB6EF8F0ED32C36C2C9CE0281C8FC01FAD5C5710A8D0E429B0010143BE2BCB4C90D5A61E4152FC34F07E5E74C9878C858D806127DA27915A1B8EAFDBFBF8FF049381CE770FF006A691943F7C73C970FE82BE9AA0A2C273DDD1F864FE95BC2B1DFB52D85852A52BF99E59FBB8FD2B55A5B2BB6B79180BCAFE3CA89A28B4B6DB281857C3351D98FBF266CC424A1280AF0C64127B0FF007AD2E19485B6D871A21409FB27FDEA499C24763434B6C29B57F29AAFB513659BD4179070B438467E041A6D6552CA64AB3B8F7CE3E74299EB5B8167015E26C3C7BB38A8C5CA43C6F721676ED414771FD5586B778CFD0B7BC009296D5904FB88AE488F2972EE57561D410DA10140150C1C95E47E149275AA2AD6EFFCADAC00A51FDF004703B7152ED0D6F30024088584A9390E0742FCBDC054CEC86D0CEA77E6DCA2A1E588C88C95ABBED2904A7EB8AD96A005EDC67FB38CB9A75970BED306D832927682ADE55DB8EF8F2AE82E8D5C2D371BA5E3F663B11A740643D098524389E0E16B48E791C027DD5625D9D8E42D255B945494803E7444486DB0D84848DA7B83CD1A8094761803C850B1D60DDDC27FF493C9F99A2E26D2DA88C1DCE28FFA8D6331604889BB801C27BFF49FF7A252BC8CF714B6038156F5BA321254E2BFD46B75A886EDB1F246EF0927F015BCE14A0AF8D4650A0B7DF5E7953CB38FFCABD6DB0A9F9C1386C707CB24FF00B5340CAD43F953E75A1F41D840E00A806A25ACDEE2A7B202B27F4A676259F0E48F300647DF41383250AEC02F763E3DAA3B7350FDA52B9EEA6C807FEE35B35437BB4ADF504E12B8C48F9E79FCC5729CE098CC4AD9DC0582BC72704D00A4B4FCB9082495141C11FF006A6B65F75C5B3A7D629577B92FC28D15000402373AADBC2123CC9AE426BAC5AABA9BD6EB1495CE7E0B0EC90CB10E2AC86DA46D29191D9471DC9EF5D211BA8DD5B8F73FD8C89FB6316C3432D8DB8FE6C62A8ED55D4FD6FE8E5E921FDACB2DC5D54E0CB1EB3E2AB73529053ED34E27DC769E3CBB8AFD64E89F57ACBD7ED1567D536875094CA68191102815467C0F6DB579F07B7BC60D5B4D34AD8921255F1ADB9DA3941CFCA952A3B52AECEA9D6D0AD88460A864F9D6C9509844621A6509CAD23D94E3BA85325DB62ABED3082476E296B56D8AECC983C14E10B4A40E47F083FAD652A0C38B6C792861030856001C038345458C1B6023B6D0071F2AF9D5A125009009C9FB85431ABFDB5A652A3318F10E49F6C7BCD631F53C312DD5B92594A7094E4AC76EF9A98FF0F0338F750B2D786958E38AAEB512333A29270A71D09CFD6B3B54B36B9B35A786F070414F977CD6F640750B3C1DEA1B4E6A2F786D71AE7214BC141D9B7079FB5FFEEB7EAFF113A62E6AF0C9058503F0E39FD2B96253495B321B51DA93E22493E5C9AADF535E1CB24C764B175694C729524B614A07D900000F39AAEFA85A8E46B3B0428D2FD58B1EB593E20C05120A403CF07F2AAEB4A69EB9E8FBD2F5358ED6DDC570965097E4AC06E2AC8F678C8DC4F353AD69E92FAF20C3720F871ACF7B672D486FD592549C8FB4179E383C63EFAA0A44EBADFF00C444F71B536F3E24C89072B75C58040CA9449279200F8D747FA26EB07BA4FAE537A8A3325115C6DA8EE38B0C9246141494A80276F2320F6AFD28E877A57D93AAD7A4E9C7613B68BF964B8D345614DC8091ED141F22307D93EEF3ABB9E7C869495A080470A3DE808852F3EFF19292919FA5132B3B1918C65E40FF0050A66558C934AE13A24392D49381EB0B1F7607E958DCDF6D16F7028800E120E7BE48146A5476671C7CE8098EEC6D6B5279436A50CF97151364B697992B09DA125449FF00DFC68A9B298762388090A0A007238E4D49195E5000E0D0774752D47565431D8D567D44BF46D3F1D5727CA951A0FF007877C319504279381F4AA617E98BD3B937075D5BB3BC05A410A31B3E67C81A36DDE95FD3C725B245CE532CEE1BB7455E07DD4BB5A7A49E849F7988EC7BD1F01B5277AD51DC03ED03EEAB62E7A820EA2E9CDC2E505F4C8892221719793D9492320F35CA32EE6894895B06E095B8081C62A84EB9EB422FCEC265C1E03452A3B3F9F0011F415564BBAA9C8CDA1D69E90A4A7C64A129F640CEECFD78FBAA7BA5DC62F31665B43881719B322ED8EA464F84A5FEF568E7EDA772401827055C706AFC93D0888F58F5A2EE91AC170BF36DB939EB8CE1B4414BDE118E95FB60F294BB8E072A1DBB550F79D39A7AD5A5B4DBD6C80D89925ADF28ABD9710E782CE5241278DC56A49E3217517B7EA5856D9EC498D2BC371077EC3C02A1F0FC3EB532E9C7586569BEA5592F915C59996D986512A18F655825BF88C647D6BF616C7AF2C7AB2C702E50EE710B12D843E849793B8050CE08CF0476A12DDAAECF1EE139955D22070BDF61521391ECA7CB34E577D84FBF13C39919C05DCFB2EA4F649F8D315DCA3AB8F586BE5BC52DB4BEDBF0565B5253E23CE9EF9FE3359DCD3961A0A57779B007FE428B70AB684A0FC7E4281BABA116E93839C36704F9E78A84BF2C21C09583F60F6F891FED59B0FEF70A71B428A1393F3069BB1AAAD6EC66CB37D6B7EEEE48C01F1A39575B4BEC7EFEF115C5119C6463355C7536CF6CBED8AE11577B8CDA2432B42FC4C11B4A48F2AFCB5D6D66BA695D4B32D205927061584BF1A3A821C07B1ED4857366B28C1B65A54A39F25823E58149EE8E5C9E861C1063A027DA2943EB4FE06BBB7D1B7A9D1355F425EB3B939B9578B6412890CB6DA929651921B19230A3818C8F75569A96FEDD8615DDF514F8A8DEA09EC144F03F1AE44D6F73913D6EBAF32BDEB70ACA92AF692BF97B8FC2B7B77E96ED898F568EDA15B50DF8EEA8AB29C01B427F5F8558BD018827F5AB4ABFE0094EC05BD3C8529431E136A2301214A561412768049C63CEBAB27396CD0F77D6D7602145BAEB9B443928893A46E44C7829C0E29A8CE33E272A4F29206DCE463CB8A1313D5DB6E7357013533D842C02F788B6B6243652A3800729381E4302B45A65B22D4EA2EF18BCB60622488EDA5454ADC3D9772410319E467CB8A8E59EFEDB9A9273CDA5C5171D3B1084676807B7B87D6AF3D1D719D7F8C88F0A7428AEB29DCB13DD520AB9FE1229BDC6CBABE0BCCBB1EE16371B20A54133D49E4FD29EDA276A98B198507ED4F3894F95C8A4E7EEA6C8BE6B2736A774247F5B576C9FC40AD306F1D45139E0CB4B75B0401E15E1200E3BF7A669D43D4D8C777AB5C7BE4145E12424FF009AB4BBD43EA84338C5FF00839FDDDD52AE3FCF44B3D52EA5AB0D9FED0A54AE48F5C0BC81FF0095324FA417539952BC48D2CBA13B3DA61A38C7BE81B97A5A7542D2FC641B7BCB5825602A00567031E5F3AEB7D5FD24832377A8331DA406B396C0F6D47B631F23C7C6A0D3743DB613B18C886B4B7B30A5AC63241F97151FD4569D3A9956E65DB6A5F86B5ABC5CAB8501FCDF0AAD7D23ED1629565D3EDE9A810D0F36FA94E7A925295146DFE2DA33DEA8B72D135929D90A405E539CA49C01593F0AE0EC592D260BAB2B6D494FB1DC91529E8E5F6E9D37D27AA50E595C7EE52D08115952B0851C90AC91D88078AABBA89AB7504889EAF3D9FD96ECA78B9E1AD79DC903B24F6EE7CEA8ED48E3F1DC56E5BB823ECBC318FA8C8A95E9E792F694B6A53CAC9191F22454BFA51755597A9F0AE0EC64C88ED36EA36ACA811B8104A4A5C6CA54339C850AE8CB8F5167C4D7D6FD4F70B44292C69AB54EB65BDD71D5CB5801C203816A78A96B5B6B528124E3B7C6B9911696AC4FAA3B525B989512EF8AD8C03B893823279E68881778D0ED9768CF416A4F8E801A71470B654159CA7F5F90AA9F4F5CE62A6A9B692B3970959082A0904FB87356C68E716FCC66CD2B0A8F39E4B2E38D27C3741278C289241F9D58B7BE8425A6D6FA937EF0584959C4E46063B9ED5B6DBD12872A036E475EA2008193EB6D641FD6B639D115EE0132F52B641C0CAD950FCE88B674ADFB48517AEFA890ACE010CA57F92A98BBA0E4864E2FF7E03DDEA79FC8D462EFA3644392D946A0BE8DC7B2A0B99A5812E439494BDADE6455038287E338838FA8A224696B9CA9EE0837DB84F59FDE2F6B8A6B03C8FB431F75013B46EA95DC190C4DBA21D4B4A392EB6BC02467193E75DD0848520052D581D8649AC5C612B0029C563BE49A0DF86D3831B90AC7BFBD00BB6B0A3B4B49C0EF8466B26ED6C9F643408F7EC1FED5E2ECAC64FB0823FA9342BBA4E2C91FBC692A3FD28C5509E93DA19CB544B4DE223084466D4A8CEAFED2DB528829201F7E08AE71B869E817080FCA7DD6D2849DA5C5ED473FF76324FC057D165A65478010843286DB4B63C2040504276838F79DB9FAD05A91B8C980E2E525C5B4149580D1C2BBE3F5A773ED0C33A063497D2D2A1A425D2DB6F20BA8415272A002B1B8A481F3CF1435A5A6988BE14752FC11F637FDADA7919F8E0D0F7271296A4B2B77C0DCB480E93C20120127EFA7CEE95B5426C488EF8853DE2541417FBA52FDD8F71A69D3388D6B0D6B6565A6D6996CC84AA4B63253B50A04907CB18CFBB9AEB3D62B0C698B9AB7EE516140253C9ED48745DD4AAD9B24ED43ADB8A4A72080A4F91FBAA60D488C9405254D949EF922BE44B8CF6F285214A071907B5789C294564E470123B6293DD5E4AAFF0019A21209689CF9FF00EF8ACE6C18F2F01D61A74F182A40562A25AC2FB0ECAFC56652CB4B7015048493C0E3CA9244D450645D77A1F382D04A72823249F9575021C8AD8014F77F322BD5967823C2567B738AC92CA57CA52C8F77359ECF087240CFB88A156B8C9DC9255951E704735EC76980A210D294A3E6A02B69B6BAEA73B0241F9D23D5DD3BB7EB3B0C8B55D564C37C721208520F92927C88AFCEAEB6689BD681D532ECAE4696BB7415A83128B2AF0DD49E52E6EC639071F039A57629A9951E2F86EA50508092A50CE4E39E28ABDB09936D750B001536A1C7BF19FD05576D4F92E45622179CF562B07C2DC76E7DF8AB2AD6E27C12A510900F9D26D4729B723CD4EF0494F18F3A79D27D21A8FAB2D3561B7C37252C2CA52FB80A5B6900672A5E3000AED2E8374063749195C871D4DDB54496835327A47EE984E412840F3270393EEF2AB8556753B94F84003E66A13AF35843D07321C4948F1DE92094B68032948F339F9D00DF50ECF2D007ECF5E719E5B42AB16F5269E256A720A464E7726381C5188BD6957DA04B441F35060FE943ADFD1B215E229C6C3A9184A8A569207CF341B9134CBAF05A2E4803CD1EB253FAD42BA8FA323CE6D1321CD8F744308396CBC92FA477E3F987E3554A26262ADD8EDC75A52403E264AB91F955B537D2BDE8D1144581953B8F64A24050A576BF4C3F12406EE3605B6D79A9AC1C54DA07A4968F9680E3906721278CED07F5A663AE3A0A423F78A98D03FCCDABF4A3E1F5834029B48FDA2B8F938DCB4A81FBE9D46EA368994A05BD4AD271E45DC5316B5969B949DCD6A56881C70F0FCAB73132DCF152D9BEB3233F652EBC302B39519BBD5B254094EDB2E10E536A69D61C01495208C106BF33BAD46359BAA5A8E2C3546691165A9843111210CA108F6529481E40002A291AFAE124B8BF60F9678A531ACB356A2EB6D61A6D7B81503C8CD3976E2FC3528A9254D124E473B7E95EDB8C7BC3FE238B394AB1C723E0715FA8DD238E23F4B34CC5896C55ADB5416CA80C1C71DF3E64E73F0CD4DA2B31E030865B6F6A53D81E4E7CCE7CCFC68954865092A528600CF6AAC625820EB6D4536F33A233293BCB0C17501452DA4F967DE726A448E9DD8D39DB6E8D93E61354EDCAC53D9BC5C1A16C743087D6969491C14E78C7D2829302445405BD0DF69A46415AD05201E38A54B50F14A00C8078F852E9A54CAB0520233E7C66B433746234792F2D29DADB6E28959E07B279F8557769D4D1E33EFA92F34B42B6ED19071EFAE80911740EA6C8371B5359EC36211FA5266342F4CE74D7E33B70B725D6C8052B50495679C8C638F8D4898E88F4F2E08086DF88077DD1A62904FF00AA887BD1D749CC0131E6C865293D9A99BBF3CD6957A345BC01EA7799CD27B10AF0DCCFDE9A5D33D18DDF6BC1BEB991CFEFA1A15F9114A65FA34DE02B2C5CA03A0727C488B47D3851A05EF473D4CD81E1396D7543C92FBCDFE95A53D12D770890DB295F63B98BA91C7D40AE53EA774B353587515CD77084B7CA5E52DC71B58708C9CF3EFF009D46E0DA59543681E1E3C9CF38E7B11E5534B4B7195A39A52DC784AF15416A0E7B18F21C9C0A8F48B746912D7E12D4D78A7D93B8F071EFF9D2CB1E91B8DEA5966DD6F9739C270430D29609FA0AED2D23D7BD67A5F4ADA6D12EDF152FC18C88CA4BCBDAE00918008F238C54C6DFE92DA81C2952B4FB2F60630874107E34F58EBEDC2FE9FD98BD32EC17A602D21F2784920F239F2AB1F47C0442B6B2CEC29DA368C763F1A9521A01B0948C0F95475705AF5E9095B23795E4A80AF2EDA7E25E2D72A1BA9C25E6CA02B1F64F91FA1E6AA08FD2F9CDA824CC49583B54A2D77FC6A27AF6C72AC2E069D405057B4D2C1C05FBC7CEAB8D5336441D2F7352A01536A6C209490A49CF1EFCF9D5576D816E94C38A784686B271B1E609E3DE08ABE95E8EBAC95B8B92ACCD36460A8A14923E58A8C5F3D1C352C0951A6A2E56C796CA4A4B68DFC8273C93F951D07A6FA91C64611016E83C36DADCDC7EBB48A7703A65AD8C52B4D9252540F05B9A94923E448A33FB35AE607683A81923CD97D2BFC946B3172D6F057B4CFD411C7997A22963EF02B1FF00893ACACCE802FEEE7CCC98AA1F7E45318DD6BD64DB7BD377B3C8511908780428D1D1FAF7AC56EA4AA05A25803BB4F8C9A5F7CD456CD5101F55EEDED44B9484ACFB2A0A00E4E391DC735CB7AEACED429CA5C44F8792705355F497032B4B454A4A14AC94859DA4FCAA496D40B84788D218492C28952BF9C1208047C39FBEBB0FA29A8A022D8C457A3A5B5B38525284009C8F90AB35B77A677653C2EE9B3B93BC55EFF19A495FDA38C9C7BB15B9AD01D29B8801B8B6848EE0B4E147E4453DB274D343409089103C02B4FD93EBAB3B7E40A8E3E953B8F02006C36C3FB476052EEEC7E345356D5058D8F651E64904D2B92C62EAE2724E30723BFD6B7F861CC84E720E0F18C52F931832B2B572143BFC6955EF4CC0D4B052C4A61B9280ADC9DE01DAAF7D432E3D29B1CF88FC0976E4AD858C292952873E4473DC5564DFA39336B69E8EEC58D766CACA9979C5142C0F207CAA2979F4A5D40DC87549B4C571949DA5297BB1A2F4F7A54B2E484FED5D3EA6DB27953442AAD1B5FA4B68D75B4FF729ACE783B5B047E14E875FB45A990B6E44A0BCF085B38FAE6BEB7759F4D5D24B63F68A238585650F029DB838E4F6A93C7D4DA76700A6AFB115E784BC299B68812D3B9B9B11E4ABB0F1524E6869FA623CD4952A3C47B70FE36D2BFD2A2B2BA7D60B8C87A38B35A9D7DB203B98ED8D848C8CE003DB9A827533A4B6FB3D9E2BD6DB6310D6A93B5C2CF65E5271C79722B95F57C45C594EC7900214090851EC7E14A7A75D2F6FA937CBB42538E34F44B5C89CCA109C971C6D23093F0E696E9D84B4BE86D4818ED83F955E5A0ACF737E3BA7D77C04EDCA594F1BB8F7D4FA47406FB7C61BB8B0C5A9D4496D2E06E4296873900F24023340FF00F0F9A9622478B668CEF18FEEB7129FCD228599D27D4F01AFDC58EEE08F26672143FF00CA947EC6D716A73FF95D491C039E1B5398FF002E69A5BB53EB88EE86C5CEF714F919111C03F2ABFF00A6B70BF2ADACB930992E3A02D6B961495838ED8C7156632E788849252951E48CD66FC4129952160A81E4500CC36D851501F0209CE0D6132217C709C7BF1CD2F72328A4A4AD3DFB115CBF71E8DC29CA59559DA403CED65053F956DD3DE8C768B9BC552997E3B5FF00D379615F4C9A9137E8BB6CB79260DDAE71D58F25A543F1142DC7A172ED310A9ABF85A509E12FC44B84FE3CD4227F49AF2705BBA44796E1C00612DB3F86698A7A27AB634739B65BE5E402971994A493F4228297D3BD5501BC26C1706DC49E151E521608F96450AF31AA6DCCFB3075134B49E4250B50C7C36935009D7CD750F55BD27D5AFA98AB693BD423BBED2C6464F1DF18A93D8BA9573178B6C69D32E6E34A791B9996CAC249CE3B91524EB2684852ADCDDCD2918F3C0F3AADFA45AB6E1D38D473A4DB3C25BEEB1E112F018DB9CE33F4A1843F5DD76A7951DB8C24BDE32596BEC0DC7903E1DEAF29FA6AE56ED348BA436BC46A02F73A1A3DD3E608F954AE07A4EDAADAD351DDB33C843480DA5681B8600C023E629C47F49DD26FE03CDBED1F3C834F21FA40E88923699C5048FF00A831CD3DB7F54F464F5651758E147CD47CA9F47D55A724F2D5D62AB23206F14F20DDEDEB48F0A5C6733C70B145A971DE23869CF962B26E2B7C612918EC00140CB8818924E08438777D6BD484A48DCBDC07991CD053E1A12BF152382719CF09AE7AB6F5E2F4A4A77C2B6CA4E7FE9AF6E69BB3D7894DE0CAD3D907CDA5F7A631BAF568276CAB54B638E7D9CD1EC7587484C48F156FC739E77209146B1D40D1B2D43C2BB476CE7242D38FC68B179B14B27D5EF31159C721CC53564312100A2647707F4B8939ACDB88158DC52A1DF8C115AA55B95FF4DB41F7E6829D698C20BEA79B4A406D44A978C0E2A98BB5E22AAD92A13A96A44628DAE6DC2B031DF3EFA4DD13E96698D5FF00B666C9B7A2647696965B4494E70AE4950FA1038AD5D68E9E59FA7A8B3DDACB6E430CF8C5A7D2C76CF7079EDD8D4F3451FDA5634CAB7DCA3DC614A6CB726195869F49239C051C123E74855E8F316F45E930750CF865C59DCC2436A434AFE5031DBEB403DE8E57F6DCCC3D471DF481B4264C1CFDE42852991E8F7AD5A73703649DC76C2DAFD0D27B8F4635CC78EE253A66DCEBBC61716690473EE5240ED4B1ED0DAA608C3DA3EECDE0FDA88FA5631F451AD6EB974B30DCB8DA960ED1FF0052338707E61359C6EA85C2DEE250352CF86AF312105207CF38A93D97ABFA957C43D6511FE3B38E631F0EF57674A7516A1D44912AF17A6A5B49CA531980083C704AB3F5AB6A33F9C64F6E4922B61D9E2138041E338EF5423BE8E7A35C5875AB52A328E004C77DC6C247BF09239A0E57A3B5BF0446BCDE23240F613EB7BD29CFC160D2C6BA11318CB91B53CA2B4E33E2B2DAC03F1C015A5CE906A788E97D175B74C20767A2AD19FB96467E948AEFA0F59B693B2CD659385725990A4E7E8A471F7D2A93A4F53C4630FE8F52D78E151A4A159FF50A58E3F7180CA8BD65BD41583C292D2D48C0F8A735AA17506436A525ABBDC2294120F8BBD001F77B405328FD52BD87008DA994B3FD4E24F6F2EF472FAD5AAFC25B0E5C987DA5FB2B4A923EC9F7D36BDEA18EFDAA41720469131C21096DA6B6040F880707EEA57A0BA8FF00F0BD99DFF2F7A5FAEB895AC17376CDA3CB1F3A67ABFAE366D6DA62E16A956D71AF586F0DA923943A394AB3F3AD3D0D9CEB6FA213CF331FDA01297CA36B83DC720A55F5FBEBA225CEB2E8F8CD2A6CB8B11A90A38D8CA5B4857F29DA4A4F1EEACE26AAD3F3880CDDA32FCC7EF00A6CCBB09F29533259707F4A8734522115A46C712AF95649B72FDDBB1C722B43D680E6DFDDA0E79E53DEB52F4C427C6244565DC8FB2500F1F5A5137A53A4AE4BFEF5A76DCF13F68B91107F4AC2DDD26D2D11DC35A7E2454247B3EAE7667FCB8A66AE9C5A8F2C48B8C4FE5F0273A00FA126B635A2E5463FDDF52DD9B23C9C710E8FF526AB9B775CF4C48212A7CB7E785A7CE9CC5EA76999A427F6932067CCD308F7CB249490D4C614951CFDBC5168722B89F62436791C05835E396E6E436ADAEF27B941C5045ADA4A414294918E4E78F7D2B90D32B516D0D6D401953847B3F100F6A025A21E0A3C06036139EC052297A42C770DEEC880CC9411C254D2300FD066AB8D61D3DB2BDCDB6C70DA50FB67B2BE98C521B8E05DBC14BA96145206D528E3B0E056C6743B7AB9E71937476029BFF0D6DA0282FDFC5149E895FEDE91EA375892123380FC7393F72A92DB03D69992613FB5731A5A93B900F707903F4A9C5C17335868492C061CB83B194979B687DAC8E0E32473826AB572DB2E07F8B6CBAC45678223AD407D539A222DF1D80B1BAED32127CBC4DE9C7D0814E2DDD51BB427D2226A75B883D895FE952885D6FD5318B4817861E2A0480B27F1A91C1F485D4915694BCCC79391DD2BEF4F60FA4D3EB296E45994A501C942B22A410BD262C4A6BFBC407D95E791B33934DA2F5FF4A4CEF2151B8FE318C734E20F54F4A4950F0EEAC9DDC90A50069C37ABAC921014D5C59CE3C979AE395684D711E6263ADBB4CEE78252A0A23E3C1C56E7B486A886B1EB1A4E34B4E7BC6921271F0040A5724CE8295AA4E90BCC500F7686F007BFD9556B46AD86CB6A52645E602800A01F61D4A71F756D6FAA8B69496E2EA456F3C14A9CD87FD54C93D67BAD99F65D5DDDB92CA540AD216956E00F2322A771FAF76EB8C76DC76D4E25A576095E31F4CD3389D5FD36B1FBE8CF3241CF28C8A47A97AC36675D11E04A71A6CA725684E31EF155B49EACDA5525D2C4F77C44F054A553E42E3C80875A7A12972DB42C3D216016CA8024D326A5C6B34F890A1BED392B01617B810AF7906A7F6ABDAA7C6DB2B621F6FC92AC823DF5576BFD38FB77A72E30425495A83BFBB1CFC49F8E41A71A0F525BA34D6197E74888EC9713969694F84E2BB70A0338F855C89B7B6E67F721C1D893FC35A57A6A23C005B691B8E00A02674BAC77019916A86E9273EDB2927F2A552FA13A525B64AADADB7E5B992A41EFFD2452893E8DF674F31A54D8A48E02249207BBED66977FC08B85B5C2A817B9031D83EC21633F4C134AE5F4B357B25496E6C0923C8BACADB3F81348AE1A135834B2A36E8121001CF82EE0ABF0149A559751465FF79D3121631F6D829563EE57E95A5B9EDC5E25DBEED0B1C2941A5E07E15D74E34C6E0908F1164E01030315E22DA1B4670B2B0901454ACE7E943BB6C65593B72A3E6476A01EB121D290EB485B7CE0A803CFCA97CAD0D6AB81517ADD11EC0E429A4E7F2A88DE3A21A42EC977C6B1464281DA0B00020FCC62A9ED4BD399306738C5BA4CD88CB6484A5F405803C80C014B2D3D3BD6D39C73D5DD61C4241C7AC2568DDF0F3A51A8B41EAC40F0C0821CDDFF004E414A891DC648150BBB696D5F1C90EC159DC3ED25485E7E3DEADDD091274DD0F0A45D1C43EEB614DB9114C9438CA527DE939ED83EEA8D7576FD0EC16F892ECCFF00ABBCA712D2D4EAC97B8E48C1EC0607351BD39D5FBC32D29026B653FC47B924D4AACDD58B837726D5236CB4E3625BC7DA24F6AB474A47B86A35A243968876F6D4B0A527FC55E7E5D81A935D3AFF006DD23A895659ED992E328478AE35ED24288E5271E638A49AF3D232033EAD26D6894E647286D27D83F2EF52EE907A43D975D4798CCF7510A6460900AD38DD9F855B0DEA1B1BED95A27C75E06EFB58A8F69CD66DEA1BB39190C3458C94A1F61F0AEDEF15307ACCA7524B6BD8ACF19F6B8AD6EDA96A6F2AC647615A93644292A05B4A81E4E476F952FB85A186D01CF08F3C6528E452C7B4D34E60ADBE08C92539E294C1EAD6937D403772536EACFD974600FBE9CC5D416C9652E8BCC7903BF86158FF00FA69BB6F34FA4969C6549FE920D6096F71390781DFBFD6B5A99DA527079E464E0D0BEAADB0EBAA4B5EDACEE3B0639F327DF412E332AC931CAF8CE569C9FBE8579A48EDB9B38C948E0547AF3618729D5BEEA11E204148C8CE38F8F63F2AA9F595F59D2D65F574C146D70A90D05E0952BB9E0F957376A05CD6A7AA63172704F75C190DB85271EEE3CAA5560D0377BBCA66E57252E46EE0A54BDEBC1ED9CF6A9BABA3315D752A720C775AEC4A9B08593EF0A1E551DD47D1F8B0D4A2C1723AC720A1D5003F1A8F5ABAA5AEECC5E850EE4E2034E8DF8612A51C703923DC073525B3E82D41A8CBB768F7365C53EE1716994C12A0A3CF7079FBA9D39A3F59DA51B970ADB21B03FC44B8A1F862973922E96D98944BD3A642D6E6C021BA970938CF973F7D491ABF5BD85A12FDA6F56D563DA5F84E601F76466B75BB5569CB50D96FD48F5A9E52CACA1FCA7DA3DF39152681D43BC456C2E2EAC8F27FFB808FBF352067AB1ACA2EDC488F25A1CEE04E0D3463AF9A8596F73F6D6DC6F3C94281A611BD2450084CDB63E848E71B7814D62FA4469F900A1E69C6B3DC8F2AA665E85D69042D72F46477548E55EA9246EC7D40CFDF400716C39E14DD2D7C84F7721B68AC01EF18AF9BD570213984DDEE56A58560265B2B40FCA9FDBF5DDC829260EAC62481C2438E03F853E85D4ED5D14E13EAD387C08A6ECF5B6EECA809D63DFF001451B17AED6B52BFBCDB9F8FE59C79D3267AA3A5A60C29F536A5FF00EA27F3A23F6958AEAB3B6ECC2DB3CF87DB350EEA874851AFED8816DB932892C9251801493F022AB3B47A32CFB7C94397061131C4E1490CB60273EF38CE6ACB83A2930581124C27528DA3013E473F1A92C5D3A4B7B0B3F01BB03EEC797C6945E3472268532A69415B0E1CDA315CD7D41D273F47EA393E234E260C80083E192951FF00B8763C55A7D0BB44CB8DBA7C875B711156A4786A710503201C94E7BD5B716DEFB4B095B690D82485E724FD3141FF00656DCBD416E94B8C0BC95ABFC34738F0D58A923ACDA841F1D49683491C95FB383EE3EEA099D37A7F50305D0C43909248CE12A04FBB91482EFE8FDA2EF2E875EB1C60F1E32C65BC8FFC7148D5E8D5A7D8DC21C8B9440A07D96E6B800F9024D2777D1EEE5154556ED57700D6ECA50FA50E01F78A125F49F5B42480CDEE14AC1E13222EDCFDC7F4A4970D11AEDB4A94BB35AA611DFD59F52158F9115D2EFCFF00507DB8AC6EFDF03ED497C957CB93DA864DD652A6488CE444351D00624215952CF98C790A1E4DA634C6D61D421C0AC1CA919FCC547EF3D3CD32F345E936C88EA076DCC2727E008150067A29664CB7A4BCD2A20714541B86F3890D0F200E79ED5B0F4A5493983A8EE9141381E2381E03E38233425CFA77A96D0CB7213AAA03F1C73E1CE8BB33EEC91EFA1DCD27ABBC04AFF6259EEE95654151A46C247C323F5A50F479515D5267E8CBB442064B91478A91FE53418D456B8EE0F06ED71B6A89C6D94D388C1FA8A90DAF594E091EA3ABA3C8577F0CBC01FC69FC7EA06AE6C214A79896947D9EC4D314F5A6ED1C84CEB32178EEA4A703346B5D79B2C8486E55BDD8CBCFB5B065268CB9F577472ED8B90B0A78B783E0868294AE7C81A95D935469AB9C6644796C32DB890B093EC904F9114D1C66DC5F6DB6E6B6EB8E03B528208C52872D0FA2FF00112A949524A1C5842464818001E7E758DEF4FDEA446FF97CC4B6947B410EA00DC7CC13C83F2A6FA6ED6A8F6F8E244642250C95ED48193EF007BE8A4B0FF8AB0EB63C3FE02851E7DE08AC8C76433DF047B20739AF1980108C12BF813FAD6895156482B6BC4C1C8DB8343C982010E01FBBF8F1DE829D022C994653B15A2F37FE138A4EE2827CB9AF3D756B753E2B2A4B9B7B271B735E495F8ACAC92196C72A24F9FBA92CB74CC710164212C90109E4E0FC73E7413D1DF94ACB6F0F0C70A4ED24A8E7DF5AE3C792C3A4A9E08511D8E063E9423B6665EB848764954D0BC61951CB68F2E07BE9EC2745BD94B6121B650708094E303F2F7D0F3DC94EC25A61C84B32369216B4EEC7CC79D056D1705F822F2DC59E8681F6B6E093E5ECF6AC9DD19A2EEC5C170B1444294370525A0093F3033486474134636FB4984FCB8497F7132532DC01AC0CFBC803B714AEF3D23F5088A7A16B594D474FDA5C9287DB19E139CE0D479DE95EB28DCC6BBD9AE4D907979A5B655EEE791492EB6BBF5AD1893A658B816B087156A9495A82BCC949C1A58BBEC48485393EC174B4328C65E5A15B47C491C0ADF1B5A5ADB8C97A0EA27D0AF24074E47C39C50F1FAB3A860EA987E0DD3D7101958495E493929EC7E95655AFAD9A963B812EA03B8C1C28FE152285E90AF37ECCA81839E702A490FD206D0EA5297D871B23CC641A7B03ABDA7261DA256CCF3838A771B5859A58FDD4E68F9FB4AC668D66E0D4842C879A593D8A4F00564B693FC3B48C7DA1E55FFFD9, null);
INSERT INTO `user` VALUES ('2', 'test@email.com', 'Ajaks', 'test', 'male', '3', 'active', 'test', 'test', '2', '62', null, null);
INSERT INTO `user` VALUES ('3', 'admin', 'admin', 'admin', 'male', '1', 'active', 'admin', 'admincic', '3', '124', null, null);
INSERT INTO `user` VALUES ('4', 'moderator', 'moderator', 'test', 'male', '2', 'active', 'moderator', 'moderatoric', '4', '2', null, null);
INSERT INTO `user` VALUES ('5', 'lazarsm@gmail.com', 'Lazar', 'test', 'male', '1', 'active', 'Lazar', 'Smiljkovic', '5', '4', null, null);
INSERT INTO `user` VALUES ('6', 'John@gmail.com', 'Johny', 'test', 'male', '3', 'active', 'John', 'Smith', '6', '0', null, null);

-- ----------------------------
-- View structure for getallusers
-- ----------------------------
DROP VIEW IF EXISTS `getallusers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `getallusers` AS SELECT * from user ;

-- ----------------------------
-- Procedure structure for getAllUsers
-- ----------------------------
DROP PROCEDURE IF EXISTS `getAllUsers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUsers`()
BEGIN
	SELECT * from user;

END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for event
-- ----------------------------
DROP EVENT IF EXISTS `event`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event` ON SCHEDULE EVERY 10 SECOND STARTS '2019-04-14 19:27:21' ON COMPLETION PRESERVE ENABLE DO UPDATE user
SET logged = 'false'
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
