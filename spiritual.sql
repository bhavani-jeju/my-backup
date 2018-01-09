-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `paypal` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `x_login` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `x_tran_key` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `shippingcost` float NOT NULL,
  `api_username` text COLLATE latin1_general_ci NOT NULL,
  `api_password` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `api_signature` text COLLATE latin1_general_ci NOT NULL,
  `facebook` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `twitter` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `gplus` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `linkedin` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `supplier_email` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `rssfeed` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `commission` float NOT NULL,
  `discount` float NOT NULL,
  `discount1` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `paypal`, `x_login`, `x_tran_key`, `shippingcost`, `api_username`, `api_password`, `api_signature`, `facebook`, `twitter`, `youtube`, `gplus`, `linkedin`, `supplier_email`, `rssfeed`, `commission`, `discount`, `discount1`) VALUES
(1, 'admin', 'admin', 'bhavanikiet1246@gmail.com', 'programmer1005@prominere.com', '73vc7NMHJ', '2Dkj4V94L2k5eCNL', 1.2, 'webdev_1335179182_biz_api1.gmail.com', 'C9UB5M2YHBH2XE36', 'An5ns1Kso7MWUdW4ErQKJJJ4qi4-AxdKdgu0eJN.JuN1iukk.BRHMmL1', 'https://www.facebook.com/cashbackmantra/', 'http://twitter.com/', 'http://www.youtube.com/', 'http://plus.google.com/', 'http://www.linkedin.com/', 'programmer1004@prominere.com', 'http://www.rss.com/', 10, 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` blob NOT NULL,
  `links` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `comments` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `articles`
--


-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `content` longblob NOT NULL,
  `header` tinyint(1) NOT NULL,
  `bottom` tinyint(1) NOT NULL,
  `footer` tinyint(1) NOT NULL,
  `mtitle` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `mdesc` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `mkey` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `ord` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `content`, `header`, `bottom`, `footer`, `mtitle`, `mdesc`, `mkey`, `ord`, `parent`, `status`) VALUES
(1, 'about us', 0x3c64697620636c6173733d22636f6e742d67726964223e0d0a3c64697620636c6173733d226162742d70617261223e3c7370616e3e4c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e3c2f7370616e3e0d0a3c7020636c6173733d2270617261223e4c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e2c204c6f72656d20497073756d2064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c44756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c69742065737365207768656e20616e2c4c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b73207374616e646172642064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c3c2f703e0d0a0d0a3c7020636c6173733d2270617261223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e262333393b74206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e262333393b7420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e3c2f703e0d0a0d0a3c64697620636c6173733d22726561645f6d6f7265223e3c6120636c6173733d2262746e2220687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e72656164206d6f72653c2f613e3c2f6469763e0d0a3c2f6469763e0d0a0d0a3c64697620636c6173733d22636c656172223e266e6273703b3c2f6469763e0d0a3c2f6469763e0d0a0d0a3c64697620636c6173733d22636f6e742d677269642d696d6720696d675f7374796c65223e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e3c696d6720616c743d2222207372633d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f696d616765732f61626f75745f7069632e6a706722202f3e3c2f613e3c2f6469763e0d0a0d0a3c64697620636c6173733d22636c656172223e266e6273703b3c2f6469763e0d0a0d0a3c7020636c6173733d2270617261223e4c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e2c204c6f72656d20497073756d2064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c44756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c69742065737365207768656e20616e2c4c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b73207374616e646172642064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c3c2f703e0d0a0d0a3c7020636c6173733d2270617261223e4c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b73207374616e646172642064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c44756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c6974204c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b73207374616e646172642064756d6d79207465787420657665722073696e63652064756d6d792074657874206f6620746865207072696e74696e6720616e64207573696e67732031353030732c44756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c69743c2f703e0d0a0d0a3c7020636c6173733d2270617261223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e262333393b74206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e262333393b7420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e3c2f703e0d0a, 1, 0, 0, '', '', '', 1, 0, 0),
(2, 'services', 0x3c64697620636c6173733d227370616e315f6f665f335f74657874223e0d0a3c68333e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e4c6f72656d20497073756d2069732073696d706c7920746578743c2f613e3c2f68333e0d0a0d0a3c703e4c6f72656d20497073756d2069732073696d706c792073697420616d657420636f6e73656374657475722064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b732e3c2f703e0d0a0d0a3c64697620636c6173733d227370616e315f6f665f335f74657874223e0d0a3c68333e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e4c6f72656d20497073756d2069732073696d706c7920746578743c2f613e3c2f68333e0d0a0d0a3c703e4c6f72656d20497073756d2069732073696d706c792073697420616d657420636f6e73656374657475722064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b732e3c2f703e0d0a0d0a3c64697620636c6173733d227370616e315f6f665f335f74657874223e0d0a3c68333e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e4c6f72656d20497073756d2069732073696d706c7920746578743c2f613e3c2f68333e0d0a0d0a3c703e4c6f72656d20497073756d2069732073696d706c792073697420616d657420636f6e73656374657475722064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b732e3c2f703e0d0a0d0a3c64697620636c6173733d227370616e315f6f665f335f74657874223e0d0a3c68333e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f73706972697475616c2f64657461696c732e68746d6c223e4c6f72656d20497073756d2069732073696d706c7920746578743c2f613e3c2f68333e0d0a0d0a3c703e4c6f72656d20497073756d2069732073696d706c792073697420616d657420636f6e73656374657475722064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e647573747279262333393b732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a, 1, 0, 0, '', '', '', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Congo, The Democratic Republic of the'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Cote d''Ivoire'),
(54, 'Croatia'),
(55, 'Cuba'),
(56, 'Cyprus'),
(57, 'Czech Republic'),
(58, 'Denmark'),
(59, 'Djibouti'),
(60, 'Dominica'),
(61, 'Dominican Republic'),
(62, 'Ecuador'),
(63, 'Egypt'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Eritrea'),
(67, 'Estonia'),
(68, 'Ethiopia'),
(69, 'Falkland Islands (Malvinas)'),
(70, 'Faroe Islands'),
(71, 'Fiji'),
(72, 'Finland'),
(73, 'France'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Greece'),
(84, 'Greenland'),
(85, 'Grenada'),
(86, 'Guadeloupe'),
(87, 'Guam'),
(88, 'Guatemala'),
(89, 'Guernsey'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard Island and McDonald Islands'),
(95, 'Holy See (Vatican City State)'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungary'),
(99, 'Iceland'),
(100, 'India'),
(101, 'Indonesia'),
(102, 'Iran, Islamic Republic of'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Isle of Man'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jersey'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People''s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kuwait'),
(118, 'Kyrgyzstan'),
(119, 'Lao People''s Democratic Republic'),
(120, 'Latvia'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Liberia'),
(124, 'Libyan Arab Jamahiriya'),
(125, 'Liechtenstein'),
(126, 'Lithuania'),
(127, 'Luxembourg'),
(128, 'Macao'),
(129, 'Macedonia'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Malaysia'),
(133, 'Maldives'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Marshall Islands'),
(137, 'Martinique'),
(138, 'Mauritania'),
(139, 'Mauritius'),
(140, 'Mayotte'),
(141, 'Mexico'),
(142, 'Micronesia, Federated States of'),
(143, 'Moldova, Republic of'),
(144, 'Monaco'),
(145, 'Mongolia'),
(146, 'Montenegro'),
(147, 'Montserrat'),
(148, 'Morocco'),
(149, 'Mozambique'),
(150, 'Myanmar'),
(151, 'Namibia'),
(152, 'Nauru'),
(153, 'Nepal'),
(154, 'Netherlands'),
(155, 'Netherlands Antilles'),
(156, 'New Caledonia'),
(157, 'New Zealand'),
(158, 'Nicaragua'),
(159, 'Niger'),
(160, 'Nigeria'),
(161, 'Niue'),
(162, 'Norfolk Island'),
(163, 'Northern Mariana Islands'),
(164, 'Norway'),
(165, 'Oman'),
(166, 'Pakistan'),
(167, 'Palau'),
(168, 'Palestinian Territory'),
(169, 'Panama'),
(170, 'Papua New Guinea'),
(171, 'Paraguay'),
(172, 'Peru'),
(173, 'Philippines'),
(174, 'Pitcairn'),
(175, 'Poland'),
(176, 'Portugal'),
(177, 'Puerto Rico'),
(178, 'Qatar'),
(179, 'Reunion'),
(180, 'Romania'),
(181, 'Russian Federation'),
(182, 'Rwanda'),
(183, 'Saint Helena'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Pierre and Miquelon'),
(187, 'Saint Vincent and the Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome and Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia and the South Sandwich Islands'),
(203, 'Spain'),
(204, 'Sri Lanka'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard and Jan Mayen'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Taiwan'),
(213, 'Tajikistan'),
(214, 'Tanzania, United Republic of'),
(215, 'Thailand'),
(216, 'Timor-Leste'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States Minor Outlying Islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Venezuela'),
(236, 'Vietnam'),
(237, 'Virgin Islands, British'),
(238, 'Virgin Islands, U.S.'),
(239, 'Wallis and Futuna'),
(240, 'Western Sahara'),
(241, 'Yemen'),
(242, 'Zambia'),
(243, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(200) NOT NULL,
  `simage1` varchar(200) NOT NULL,
  `simage2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `information`
--


-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(10) NOT NULL,
  `uname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `code` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `newsletter`
--


-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`id`, `query`, `keyword`) VALUES
(1, 'page_id=1', 'about-us'),
(2, 'page_id=2', 'services');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `type` varchar(200) NOT NULL,
  `featured` int(11) NOT NULL,
  `scost` int(11) NOT NULL,
  `fbid` bigint(20) NOT NULL,
  `ano` bigint(20) NOT NULL,
  `btype` varchar(200) NOT NULL,
  `accno` bigint(20) NOT NULL,
  `bno` bigint(20) NOT NULL,
  `accname` varchar(200) NOT NULL,
  `code` bigint(20) NOT NULL,
  `oname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
