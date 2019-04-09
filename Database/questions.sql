-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 05:34 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `answers_table`
--

CREATE TABLE `answers_table` (
  `answer_id` int(11) NOT NULL,
  `Q_id` int(11) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  `answered_by` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers_table`
--

INSERT INTO `answers_table` (`answer_id`, `Q_id`, `answer`, `answered_by`) VALUES
(1, 2, 'Servers usually have existing multiple processes listening to a port. When connection is established, multiple sockets can simultaneously connect and communicate with the same server-process. Some servers use single child-process to serve all the sockets and sometimes, servers uses many sub-processes to serve each socket by one sub-process and act as multi-threaded server.\r\n\r\n\r\nhttps://stackoverflow.com/questions/3329641/how-do-multiple-clients-connect-simultaneously-to-one-port-say-80-on-a-server\r\nFollow this link for detailed explanation.', 'Adwaith'),
(2, 1, 'The major problem with a circuit switching network is that it retains the physical link( the channel) that was established between the two parties until the communication ends, regard less of the presence/absence of traffic through the link(channel). On the other hand, a packet switching network allows equal sharing of the resources between multiple hosts. This is done by allowing each \"packet\"( they need no be from the same source) to find its own path to the destination. ', 'Student'),
(3, 3, ' When NetCut is run, it sends ARP request packets to all IP Addresses in the network, so that it can make a proper table of who are the connected devices in the network. \r\nAs It broadcasts all the packets, the gateway can make a note of this IP Address because a machine asking for MAC Addresses of all devices on the network within a span of 1-2 seconds (or less) is very fishy. \r\nGateway should peacefully disconnect the connection of the NetCut machine. ', 'Hardik'),
(4, 1, 'answer1', 'stu'),
(5, 2, 'This is the answer for question-2', 'Pawan'),
(6, 2, 'oooo', 'hardik'),
(7, 3, 'Answer3', 'Chetan'),
(8, 4, 'FACK is not there in ns-3 as of now and SACK is by default on in ns-3 but you can use the following command to enable or disable SACK in ns-3:\r\n\r\n Config::SetDefault (\"ns3::TcpSocketBase::Sack\", BooleanValue (isSack));\r\nwhere isSack is a boolean variable which can be set to true or false accordingly.', 'Mishal'),
(9, 4, 'answer4', 'Hardik'),
(10, 6, 'fq_codel is basically a fair queing delay,which is used for fairness in tcp networks.', 'Mr.Mohit');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stud_id` int(11) NOT NULL,
  `course_id` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stud_id`, `course_id`, `date`, `status`) VALUES
(4, 'CO313', '2018-11-11', 'Present'),
(4, 'CO368', '2018-11-11', 'Present'),
(10, 'CO400', '2018-11-11', 'Present'),
(10, 'CO400', '2018-11-12', 'Absent'),
(4, 'CO313', '2018-11-14', 'Present'),
(11, 'CO313', '2018-11-14', 'Present'),
(12, 'CO365', '2019-02-28', 'Present'),
(13, 'CO365', '2019-02-28', 'Absent'),
(12, 'CO365', '2019-02-27', 'Present'),
(13, 'CO365', '2019-02-27', 'Present'),
(13, 'CO360', '2019-02-28', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(7) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `teacher_id`, `teacher_name`) VALUES
('CO300', 'Computer Networks', 1, 'Saumya Hegde'),
('CO301', 'Computer Architecture', 2, 'Basvaraja Talwar'),
('CO302', 'Number Theory and Cryptography', 3, 'Basvaraja Chandrasekaran'),
('CO303', 'Data Structures and Algorithm', 4, 'Jenny Rajan'),
('CO304', 'Operating Systems', 5, 'Shashidar Koolangudi');

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `status` enum('Accepted','Rejected','Pending') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `name`, `course_id`, `course_name`, `teacher_id`, `teacher_name`, `status`) VALUES
(4, ' Hardik', 'CO313', 'Number Therory', 5, 'Mr.Brc', 'Accepted'),
(4, ' Hardik', 'CO316', 'Computer Architecture Lab', 7, 'Mr.Basvaraj Talwar', 'Pending'),
(4, ' Hardik', 'CO368', 'Internet technology and applic', 8, 'Mrs.Saumya Hegde', 'Accepted'),
(4, ' Hardik', 'CO300', 'Computer Networks', 9, 'Mr.Mohit tahiliani', 'Rejected'),
(4, ' Hardik', 'CO301', 'DBMS', 10, 'M. Venkatesan', 'Pending'),
(10, ' Mishal shah', 'CO313', 'Number Therory', 5, 'Mr.Brc', 'Pending'),
(10, ' Mishal shah', 'CO316', 'Computer Architecture Lab', 7, 'Mr.Basvaraj Talwar', 'Pending'),
(10, ' Mishal shah', 'CO368', 'Internet technology and applic', 8, 'Mrs.Saumya Hegde', 'Pending'),
(10, ' Mishal shah', 'CO300', 'Computer Networks', 9, 'Mr.Mohit tahiliani', 'Pending'),
(10, ' Mishal shah', 'CO301', 'DBMS', 10, 'M. Venkatesan', 'Pending'),
(10, ' Mishal shah', 'CO400', 'Computer Graphics', 15, 'Mr.Shashidhar', 'Accepted'),
(4, ' Hardik', 'CO400', 'Computer Graphics', 15, 'Mr.Shashidhar', 'Accepted'),
(11, ' student1', 'CO313', 'Number Therory', 5, 'Mr.Brc', 'Accepted'),
(12, ' Harshal Shinde', 'CO365', 'Advance Data Structures', 11, 'Mr.Mohit tahiliani', 'Accepted'),
(12, ' Harshal Shinde', 'CO352', 'Computer Graphics', 13, 'Mr.Shashidhar k', 'Rejected'),
(12, ' Harshal Shinde', 'CO360', 'Advance Data Structures', 14, 'Miss.Vani M', 'Rejected'),
(13, ' xyx', 'CO365', 'Advance Data Structures', 11, 'Mr.Mohit tahiliani', 'Accepted'),
(13, ' xyx', 'CO352', 'Computer Graphics', 13, 'Mr.Shashidhar k', 'Rejected'),
(13, ' xyx', 'CO360', 'Advance Data Structures', 14, 'Miss.Vani M', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `email`, `password`, `mobile`, `date`, `status`, `course_name`, `course_code`) VALUES
(5, 'Mr.B1112', 'Mr.Brc', 'Professor', 'B.Tech', 'v', 'brc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2018-10-27 09:21:50', 0, 'Number Therory', 'CO313'),
(7, 'Mr.B1112', 'Mr.Basvaraj Talwar', 'Professor', 'B.Tech', 'v', 'bt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112222333, '2018-11-02 18:28:59', 0, 'Computer Architecture Lab', 'CO316'),
(8, 'Mrs.1112', 'Mrs.Saumya Hegde', 'Professor', 'B.Tech', 'v', 'sm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2018-11-02 18:30:33', 0, 'Internet technology and applic', 'CO368'),
(10, 'M. V1112', 'M. Venkatesan', 'Professor', 'B.Tech', 'v', 'mv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223333, '2018-11-02 18:33:25', 0, 'DBMS', 'CO301'),
(11, 'Mr.M1112', 'Mr.Mohit tahiliani', 'Professor', 'B.Tech', 'vi', 'mohit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2019-02-28 12:14:25', 0, 'Advance Computer Networks', 'CO365'),
(13, 'Mr.S1112', 'Mr.Shashidhar k', 'Professor', 'B.Tech', 'vi', 's@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2019-02-28 12:16:07', 0, 'Computer Graphics', 'CO352'),
(14, 'Miss1112', 'Miss.Vani M', 'Professor', 'B.Tech', 'vi', 'v@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2019-02-28 12:16:52', 0, 'Advance Data Structures', 'CO360'),
(18, 'Anap1112', 'Anappa', 'Professor', 'MCA', 'i', 'a@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, '2019-04-09 04:03:40', 0, 'Computer Graphics', 'CO352');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `Teacher provided the course outline having weekly content plan w` enum('5','4','3','2','1') NOT NULL,
  `Course objectives,learning outcomes and grading criteria are cle` enum('5','4','3','2','1') NOT NULL,
  `Course integrates throretical course concepts with the real worl` enum('5','4','3','2','1') NOT NULL,
  `Teacher is punctual,arrives on time and leaves on time` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at stimulating the interest in the course conten` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at explaining the subject matter` enum('5','4','3','2','1') NOT NULL,
  `Teacher's presentation was clear,loud ad easy to understand` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at using innovative teaching methods/ways` enum('5','4','3','2','1') NOT NULL,
  `Teacher is available and helpful during counseling hours` enum('5','4','3','2','1') NOT NULL,
  `Teacher has competed the whole course as per course outline` enum('5','4','3','2','1') NOT NULL,
  `Teacher was always fair and impartial:` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `Teacher provided the course outline having weekly content plan w`, `Course objectives,learning outcomes and grading criteria are cle`, `Course integrates throretical course concepts with the real worl`, `Teacher is punctual,arrives on time and leaves on time`, `Teacher is good at stimulating the interest in the course conten`, `Teacher is good at explaining the subject matter`, `Teacher's presentation was clear,loud ad easy to understand`, `Teacher is good at using innovative teaching methods/ways`, `Teacher is available and helpful during counseling hours`, `Teacher has competed the whole course as per course outline`, `Teacher was always fair and impartial:`, `Assessments conducted are clearly connected to maximize learinin`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(1, 'h@gmail.com', 'bt@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '                                            Good', '0', '2018-10-18'),
(2, 'hardikrana276@gmail.com', 'bt@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '                                            Everything', '0', '2018-10-23'),
(3, 'hardikrana276@gmail.com', 'brc@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '4', '4', '4', '4', '                                            Good', '                                            None', '2018-10-23'),
(4, 'sh@gmail.com', 'brc@gmail.com', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '                                            None', '                                            None', '2018-11-05'),
(5, 'mishal@gmail.com', 's1@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '                                            Everything', '                                            None', '2018-11-12'),
(6, 'stu@gmail.com', 'brc@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '                                            Evrything', '                                            None', '2018-11-14'),
(7, 'hsharshal9@gmail.com', 'mohit@gmail.com', '5', '5', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '                                            Everything', '                                            None\r\n', '2019-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perm_id` int(10) UNSIGNED NOT NULL,
  `perm_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_desc`) VALUES
(1, 'View_Profile'),
(2, 'Update_Password'),
(3, 'CourseR'),
(4, 'Q-A_forum'),
(5, 'Ask_Question'),
(6, 'View_Material'),
(7, 'Upload_Assignment'),
(8, 'View_submission'),
(9, 'Feedback'),
(10, 'Update_ProfileT'),
(11, 'Course_RegT'),
(12, 'AttT'),
(13, 'TeaVT'),
(14, 'ForumT'),
(15, 'UploadT'),
(16, 'ViewT'),
(17, 'FeedbackT'),
(18, 'Add_facA'),
(19, 'Show_facA'),
(20, 'FeedbackA'),
(21, 'Feedback_avgA'),
(22, 'Dis_stuA');

-- --------------------------------------------------------

--
-- Table structure for table `question_table`
--

CREATE TABLE `question_table` (
  `Q_id` int(11) NOT NULL,
  `Question` varchar(5000) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_table`
--

INSERT INTO `question_table` (`Q_id`, `Question`, `User_id`) VALUES
(1, 'why packet switching is more efficient than circuit switching? ', 0),
(2, 'When a packet is sent, a destination port number generally a well known port say 80 for a http connection, is sent. How does the server decide which process is to be allotted to this incoming connection request? Are all the processes on a web server the s', 0),
(3, 'Due to the way NetCut works, no firewall is able to prevent nor even detect the attack. In fact setting up static ARP entries like most other websites suggested will not protect you against NetCut attacks because NetCut directly attacks the gateway and not the user.\r\n\r\nQ. What does this mean?Is this true? If so, why will a static ARP table not work?\r\n\r\nLink :https://www.raymond.cc/blog/protect-your-computer-against-arp-poison-attack-netcut/', 0),
(4, 'How to enable fack,sack in dce?', 10),
(5, 'question5', 11),
(6, 'What is fq_codel? How it is different from Codel?', 12);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'student'),
(2, 'Teacher'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `role_perm`
--

CREATE TABLE `role_perm` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `perm_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_perm`
--

INSERT INTO `role_perm` (`role_id`, `perm_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `upload_id` int(10) NOT NULL,
  `file_address` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`upload_id`, `file_address`, `user_id`) VALUES
(10, '../upload_fac/Intern 411.pdf', 'brc@gmail.com'),
(15, '../upload_fac/5-OpenMP.pdf', 's1@gmail.com'),
(16, '../upload_fac/6-MPI.pdf', 'brc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `uploads_stu`
--

CREATE TABLE `uploads_stu` (
  `upload_id` int(11) NOT NULL,
  `file_address` varchar(255) NOT NULL,
  `fac_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads_stu`
--

INSERT INTO `uploads_stu` (`upload_id`, `file_address`, `fac_id`, `user_id`, `course`, `semester`) VALUES
(1, '../upload_stu/Proposal Report-16CO138-16CO223.pdf', 'brc@gmail.com', 'cr@gmail.com', 'CO313', 'v'),
(2, '../upload_stu/A2-16CO138-16CO223.pdf', 'bt@gmail.com', 'hardikrana276@gmail.com', 'CO368', 'v'),
(3, '../upload_stu/A6-16CO138-16CO223.pdf', 'bt@gmail.com', 'bobbypt05@gmail.com', 'CO368', 'v'),
(4, '../upload_stu/Week7.pdf', 'sm@gmail.com', 'cr@gmail.com', 'CO368', 'v'),
(5, '../upload_stu/REPORT-A5-16CO138-16CO223.pdf', 's1@gmail.com', 'mishal@gmail.com', 'CO400', 'v'),
(6, '../upload_stu/5-OpenMP.pdf', 'brc@gmail.com', 'stu@gmail.com', 'CO313', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `dob` date NOT NULL,
  `regid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `image`, `dob`, `regid`) VALUES
(4, ' Hardik Rana', 'hardikrana276@gmail.com', 'b4a4f9aab849447bef2b9b139e0c0bdd', 9900474592, 'B.Tech', 'vi', 'Male', '19623512_1696191430690274_3589277299951796224_n(1).jpg', '1999-07-27', 2147483647),
(5, ' Himanshu', 'h@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, 'B.Tech', 'v', 'Male', '26166986_1052998068173129_5661887996364653062_n.jpg', '1111-11-11', 2147483647),
(6, ' Bobby Patil', 'bobbypt05@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1122334455, 'B.Tech', 'v', 'Male', 'bobby.jpeg', '1111-11-11', 2147483647),
(7, ' Chetan', 'cr@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3332224445, 'B.Tech', 'v', 'Male', 'chetan.jpg', '1111-11-11', 2147483647),
(8, ' Mishal', 'm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, 'B.Tech', 'iii', 'Male', 'images.jpeg', '2018-11-14', 2147483647),
(12, ' Harshal Shinde', 'hsharshal9@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, 'B.Tech', 'vi', 'Male', '1faec3eacccd97a99b1fe7571c1f8a8f.jpg', '1998-09-09', NULL),
(13, ' xyx', 'x@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1112223334, 'B.Tech', 'vi', 'Male', 'big-sean-project1.jpg', '1999-11-11', NULL),
(14, ' hoidk', 'hm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 111111111111111, 'B.Tech', 'vi', 'Male', '1faec3eacccd97a99b1fe7571c1f8a8f.jpg', '1111-11-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_id`) VALUES
(4, 1),
(14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role1`
--

CREATE TABLE `user_role1` (
  `id` int(11) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role1`
--

INSERT INTO `user_role1` (`id`, `role_id`) VALUES
(18, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_role2`
--

CREATE TABLE `user_role2` (
  `id` int(11) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role2`
--

INSERT INTO `user_role2` (`id`, `role_id`) VALUES
(1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `answers_table`
--
ALTER TABLE `answers_table`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `Q_id` (`Q_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `question_table`
--
ALTER TABLE `question_table`
  ADD PRIMARY KEY (`Q_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_perm`
--
ALTER TABLE `role_perm`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_id` (`perm_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `uploads_stu`
--
ALTER TABLE `uploads_stu`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_id` (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role1`
--
ALTER TABLE `user_role1`
  ADD KEY `id1` (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role2`
--
ALTER TABLE `user_role2`
  ADD KEY `id` (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers_table`
--
ALTER TABLE `answers_table`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `question_table`
--
ALTER TABLE `question_table`
  MODIFY `Q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `upload_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uploads_stu`
--
ALTER TABLE `uploads_stu`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers_table`
--
ALTER TABLE `answers_table`
  ADD CONSTRAINT `answers_table_ibfk_1` FOREIGN KEY (`Q_id`) REFERENCES `question_table` (`Q_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_perm`
--
ALTER TABLE `role_perm`
  ADD CONSTRAINT `role_perm_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `role_perm_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `permissions` (`perm_id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `user_role1`
--
ALTER TABLE `user_role1`
  ADD CONSTRAINT `user_role1_ibfk_1` FOREIGN KEY (`id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `user_role1_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `user_role2`
--
ALTER TABLE `user_role2`
  ADD CONSTRAINT `user_role2_ibfk_1` FOREIGN KEY (`id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `user_role2_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
