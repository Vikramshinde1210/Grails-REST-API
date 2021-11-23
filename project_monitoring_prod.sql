-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 05:09 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_monitoring_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` bigint(20) NOT NULL,
  `division` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `population` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `College_id` int(11) NOT NULL,
  `College_Name` varchar(255) NOT NULL,
  `College_FullName` varchar(255) NOT NULL,
  `college_full` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`College_id`, `College_Name`, `College_FullName`, `college_full`) VALUES
(1, 'VIIT', 'Vishwakarma Institute Of Information Technology', ''),
(2, 'VIT', 'Vishwakarma Institute Of Technology', ''),
(3, 'VU', 'Vishwakarma University', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_id` int(11) NOT NULL,
  `Company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_id`, `Company_name`) VALUES
(1, 'Infosys'),
(2, 'Tech Mahindra'),
(3, 'Wipro'),
(4, 'TCS'),
(5, 'LTI'),
(6, 'Cognizant'),
(7, 'Sanjay Distributors'),
(8, 'Deepa Distributors,Dhule'),
(9, 'Sheetal Distributors'),
(10, 'Chitale Bhandhu'),
(11, 'IdeaS'),
(12, 'XYZ'),
(13, 'GSE Red'),
(14, 'Avaya'),
(15, 'InfiIQ'),
(16, 'Amazon'),
(17, 'Eduplus');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_id` int(11) NOT NULL,
  `Department_Name` varchar(255) NOT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_id`, `Department_Name`, `College_id`) VALUES
(1, 'Computer Engineering', 1),
(2, 'Electronics Engineering', 2),
(3, 'Mechanical Engineering', 1),
(4, 'Electronics and Telecommunications', 1),
(5, 'Information Technology', 1),
(6, 'Civil Engineering', 1),
(7, 'Computer Science', 2),
(8, 'Civil ', 2),
(9, 'Information Technology ', 2),
(10, 'Mechanical Department ', 2),
(11, 'Electronics Engineering', 3),
(12, 'Computer Science', 3),
(13, 'Civil ', 3),
(14, 'Information Technology ', 3),
(15, 'Mechanical Department ', 3),
(16, 'Artificial Intelligence and Data Science', 1),
(17, 'Engineering and Applied Sciences', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_access`
--

CREATE TABLE `faculty_access` (
  `access_code` varchar(8) NOT NULL,
  `faculty_name` varchar(25) DEFAULT NULL,
  `person_id` varchar(5) DEFAULT NULL,
  `used` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_access`
--

INSERT INTO `faculty_access` (`access_code`, `faculty_name`, `person_id`, `used`) VALUES
('0925H8F1', 'Priya Shelke', NULL, 1),
('0CK8XKID', 'Mandar Karyakarte', NULL, 0),
('0JLUOGQ0', 'Dipti Pandit', NULL, 1),
('11V32542', 'Bhausaheb Dane', NULL, 0),
('12J9LRJ1', 'Leena Deshpande', NULL, 0),
('16PVH92B', 'Surajkumar Wakchaure', NULL, 0),
('2IMCSMF7', 'Satish Chinchanikar', NULL, 0),
('2IXJQYON', 'Nitin Ambhore', NULL, 0),
('2JJV7UYI', 'Vidya Gaikwad', NULL, 0),
('2Q5HTILN', 'Gajanan Ghuge', NULL, 0),
('2QVOEGQ3', 'Radhika Purandare', NULL, 0),
('2TX3TCBB', 'Nitin Sakhare', NULL, 0),
('362XPL31', 'Pranali Chavhan', NULL, 0),
('3A2MTW5X', 'Pravin Futane', NULL, 0),
('3D4Y61N1', 'Jayashree Tamkhade', NULL, 0),
('3FJ7PYE0', 'Tanaji Chikane', NULL, 0),
('3NB6KBGP', 'Avinash Somatkar', NULL, 0),
('3UJRSIHW', 'Gajanan Chavhan', NULL, 0),
('48ZERREU', 'Shivani Dhole', NULL, 0),
('48ZLZKKW', 'Bilavari Karkare', NULL, 0),
('4S2OQMUA', 'Swati Patil', NULL, 0),
('4S85V0VQ', 'Prutha Kulkarni', NULL, 0),
('56BCR3S1', 'Vaishali Patil', NULL, 0),
('5DRAW8XJ', 'Archana Ratnaparkhi', NULL, 0),
('5N3H4BAQ', 'Aparna Kulkarni', NULL, 0),
('5VN0VFG2', 'Rahul Joshi', NULL, 0),
('5VP0JGBM', 'Manoj Jagdale', NULL, 0),
('5WOAMTT2', 'Rajendra Salunkhe', NULL, 0),
('665ONJY6', 'Shweta Tiwaskar', NULL, 0),
('6FHNY0UL', 'Shrikant Joshi', NULL, 0),
('6IFPYXWE', 'Jayshri Kulkarni', NULL, 0),
('6OD1L70U', 'Milind Patil', NULL, 0),
('6ODSJUE6', 'Ritoo Sumbli', NULL, 0),
('6OZIX5UI', 'Sonal Shamkuwar', NULL, 0),
('6ZZLB1JT', 'Prakash Kulkarni', NULL, 0),
('76RK3UMG', 'Chandrashekhar Garde', NULL, 0),
('795TFYOP', 'Sheetal Sahare', NULL, 0),
('7BN3QMBH', 'Laxmi Bewoor', NULL, 0),
('7CCS21VR', 'Tushar Jadhav', NULL, 0),
('7F6905N4', 'Swapnita Dhabre', NULL, 0),
('7L851S2V', 'Dhannanjay Pawar', NULL, 0),
('7PIFV4CE', 'Girish Gaikwad', NULL, 0),
('7SHHL6YJ', 'Amol Dhumal', NULL, 0),
('7URUA8TV', 'Saheb Sonawane', NULL, 0),
('7V65ZKVT', 'Vijaya Aher', NULL, 0),
('8MXCXBHV', 'Ashwini Thakare', NULL, 0),
('8NX1B3A1', 'Piyush Mathurkar', NULL, 0),
('8WWCANQT', 'Arti Bang', NULL, 0),
('9CYUS7J5', 'Satish Suryawanshi', NULL, 0),
('9GJB6SLO', 'Ratnakar Gharat', NULL, 0),
('9HIFCEU5', 'Nilesh Bhoj', NULL, 0),
('9S7V3MM5', 'Vivek Deshpande', NULL, 0),
('A6VI33ZH', 'Abhijit Pendse', NULL, 0),
('ABV8SGZT', 'Harshada Kolekar', NULL, 0),
('AR7XJS6X', 'Prachi Joshi', NULL, 0),
('AT529YAP', 'Ashish Deokar', NULL, 0),
('AW5Y6Z33', 'Amol Vanarase', NULL, 0),
('B0L6Y0RU', 'Shreenivas Londhe', NULL, 0),
('B3WKBMM9', 'Shambhuraje Karale', NULL, 0),
('B7EQC4OS', 'Shraddha Habbu', NULL, 0),
('BICV6J23', 'Shruti Gore', NULL, 0),
('C9QV2SY8', 'Atul Kulkarni', NULL, 0),
('CU84YO6D', 'Devika Verma', NULL, 0),
('CUI1PYH7', 'Pravin Gawande', NULL, 0),
('CWEM80ZX', 'Saroja Kulkarni', NULL, 0),
('CZRB1DW8', 'Preeti Kulkarni', NULL, 0),
('D470CO97', 'Gorakh Firame', NULL, 0),
('D5IB6I6M', 'Snehal Rathi', NULL, 0),
('D63EZI4T', 'Shilpa Patil', NULL, 0),
('DTJ0A2UX', 'Minal Deshmukh', NULL, 0),
('DVGRY8FS', 'Prashant Anerao', NULL, 0),
('DX9S9PRE', 'Priyanka More', NULL, 0),
('DXVAU4OO', 'Vishal Meshram', NULL, 0),
('E2PM7A8V', 'Harshad Kamble', NULL, 0),
('ECSVAOFJ', 'Minakshi Shinde', NULL, 0),
('EENP5I6R', 'Pallavi  Rege', NULL, 0),
('EJE526DC', 'Vaishali Mishra', NULL, 0),
('FADYDDL9', 'Shrikant Shinde', NULL, 0),
('FIHEU0J5', 'Pallavi Deshpande', NULL, 0),
('FJ0V6H2K', 'Vidula Meshram', NULL, 0),
('FP80O2HQ', 'Lahu Kamble', NULL, 0),
('FQ68FFUM', 'Sampada Dravid', NULL, 0),
('FR8EU0B5', 'Chandrashekhar Ramtirthka', NULL, 0),
('G27KJ6WG', 'Naren Kate', NULL, 0),
('G875L2QM', 'Dheeraj Rathod', NULL, 0),
('GGIAE7XN', 'Mahesh Kurulekar', NULL, 0),
('GO6A3HDW', 'Gauri Ghule', NULL, 0),
('GOCU13YY', 'Manasi Ghamande', NULL, 0),
('GQDZA36Y', 'Vishal Ambhore', NULL, 0),
('GY07TSA4', 'Suvarna Bhagwat', NULL, 0),
('HEIZKCL1', 'Ashok Mache', NULL, 0),
('HT0LNK5R', 'Sharada Desai', NULL, 0),
('HYNX8NWG', 'Nitin Sawalkar', NULL, 0),
('IEAUFKS5', 'Madhuri Karnik', NULL, 0),
('IN9IVNTF', 'Ganesh Narkhede', NULL, 0),
('INO32E5C', 'Kalpana Kumbhar', NULL, 0),
('IRODXMEY', 'Aparna Barbadekar', NULL, 0),
('IU9P3AHK', 'Ratnmala Bhimanpallewar', NULL, 0),
('IXETPRWZ', 'Anjali Payyanat', NULL, 0),
('J07JS9LD', 'Shailesh Kulkarni', NULL, 0),
('J73SARAN', 'Mariba Gaikwad', NULL, 0),
('J8UM9X92', 'Suruchi Dedgaonkar', NULL, 0),
('JVRRHN3X', 'Ashwini Navghane', NULL, 0),
('JZOPLNZ7', 'Ajay Kale', NULL, 0),
('K0GALXDL', 'Rohini Bhalerao-Panajkar', NULL, 0),
('K50KVZLA', 'Deodhar Domale', NULL, 0),
('KCERO4XX', 'Subhash Tatale', NULL, 1),
('KM47A0LV', 'Kishor Chavhan', NULL, 0),
('KQZKWFUG', 'Smita Bhagwat', NULL, 0),
('KY38AB6T', 'Abhijit Chitre', NULL, 0),
('LARRFS65', 'Rohini Chavan', NULL, 0),
('LT557I57', 'Akshay Manikjade', NULL, 0),
('LZT29NY0', 'Deepa Patil', NULL, 0),
('M9XRVNEN', 'Avinash Raut', NULL, 0),
('MMNSLTOS', 'Yogesh Sharma', NULL, 0),
('MV3S8MT5', 'Vijay Marathe', NULL, 0),
('N66MKOJM', 'AS Abhyankar', NULL, 0),
('NTZZYWF9', 'Vikas Kolekar', NULL, 1),
('NYJ3CERF', 'Mayuresh Bakshi', NULL, 0),
('O3H067KS', 'Vishwesh Deshmukh', NULL, 0),
('O8N6S2A7', 'Hemlata Bankar', NULL, 0),
('OB10Z4YQ', 'Rajendra Talware', NULL, 0),
('ODO6RSH5', 'Ketki Kshirsagar', NULL, 0),
('OQVK9YIW', 'Aniket Salve', NULL, 0),
('OUXPJ5FF', 'Santosh Kumar', NULL, 0),
('OWKVSQM8', 'Disha Wankhede', NULL, 0),
('OZO2EFZY', 'Kirti Wanjale', NULL, 0),
('P54WM6B0', 'Ajay Naik', NULL, 0),
('P62WO8KM', 'Pravin Hujare', NULL, 0),
('PA555EA8', 'Ketan Raut', NULL, 0),
('PHHMY59K', 'Aniket Katade', NULL, 0),
('Q7ICJT0P', 'Yashwant Dongre', NULL, 0),
('Q8KUD72K', 'Rajeev Kumar', NULL, 0),
('QTM52RST', 'Namrata Wasatkar', NULL, 0),
('QXFQHKGW', 'Rajiv Bhagat', NULL, 0),
('R1WKL8AF', 'Praveen Rathod', NULL, 0),
('R3LLMQCK', 'Vivek Nagnath', NULL, 0),
('R5FZ9RBD', 'Jayesh Patekari', NULL, 0),
('RDVH34X5', 'Babarao Rathod', NULL, 0),
('RVIBJ4PD', 'Parikshit Mahalle', NULL, 0),
('RWJ6448A', 'Jagannath Pathare', NULL, 0),
('S5D9JM9N', 'Madhavi Mohite', NULL, 0),
('SH6SPR4C', 'Archana Tanawade', NULL, 0),
('SPE0DGHY', 'Mahindra Ambavale', NULL, 0),
('T6JXWPB5', 'Himani Deshpande', NULL, 0),
('TCRM6PQW', 'Fatima Inamdar', NULL, 0),
('TGQR99Z4', 'Sangita Kardile', NULL, 0),
('TJNQWFY9', 'Suvarna Pawar', NULL, 0),
('TYVBL0MO', 'Sachin Sakhare', NULL, 0),
('U1NQ2KND', 'Pawan Wawage', NULL, 0),
('U7SMYT0H', 'Amol Ladhe', NULL, 0),
('UKOSF7EU', 'Rahul Pol', NULL, 0),
('UMA157RW', 'Rupa Sonagi', NULL, 0),
('UP51DU0N', 'Surekha Dixit', NULL, 0),
('UR54GHD3', 'Nivedita Bhirud', NULL, 0),
('VNNGJBA4', 'Deepak Mehendale', NULL, 0),
('W0DP5DBP', 'Varsha Jadhav', NULL, 0),
('W6GN6O93', 'Deepak Lande', NULL, 0),
('W8YSUCEM', 'Pradnya Dixit', NULL, 0),
('WRZ2YCYW', 'Ramchandra Apte', NULL, 0),
('X2A9N1H3', 'Narendra Pathak', NULL, 0),
('XB26QBTJ', 'Shardul Joshi', NULL, 0),
('XHCLVM92', 'Ravindra Acharya', NULL, 0),
('XJ1VE8NA', 'Ganesh Shelke', NULL, 0),
('XL4EB01N', 'Dinesh Kamble', NULL, 0),
('XOVLLAUC', 'Jayashree Bagade', NULL, 0),
('Y27PDDA6', 'Abhijeet Deshpande', NULL, 0),
('YBOTSBYG', 'Sandeep Kore', NULL, 0),
('YNG475P4', 'Yogesh Dandawate', NULL, 0),
('YRA977SG', 'Mahendra Gadge', NULL, 0),
('YWUHKY89', 'Anup Ingle', NULL, 0),
('YY0I6UFW', 'Vivek Patil', NULL, 0),
('YYQ3DB7X', 'Santosh Mukkawar', NULL, 0),
('Z2BB6ATH', 'Dattatraya Nalawade', NULL, 0),
('ZJYCYOFO', 'Manisha Mali', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ftrmaster`
--

CREATE TABLE `ftrmaster` (
  `ftr_master_id` int(11) NOT NULL,
  `ftr_number` int(11) NOT NULL,
  `ftr_name` varchar(30) NOT NULL,
  `ay` varchar(9) NOT NULL,
  `sem` int(11) NOT NULL,
  `College_id` int(11) NOT NULL,
  `Department_id` int(11) NOT NULL,
  `No_of_Questions` int(11) NOT NULL,
  `Due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftrmaster`
--

INSERT INTO `ftrmaster` (`ftr_master_id`, `ftr_number`, `ftr_name`, `ay`, `sem`, `College_id`, `Department_id`, `No_of_Questions`, `Due_date`) VALUES
(12, 1, 'FTR Computer Department 1', '2020-2021', 1, 1, 1, 3, '2021-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `ftr_project_group`
--

CREATE TABLE `ftr_project_group` (
  `ftr_projectgroup_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `ftr_master_id` int(11) NOT NULL,
  `isreviewdone` tinyint(1) DEFAULT 0,
  `reviewer_id` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `Submit_Date` date NOT NULL,
  `Approved_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftr_project_group`
--

INSERT INTO `ftr_project_group` (`ftr_projectgroup_id`, `group_id`, `ftr_master_id`, `isreviewdone`, `reviewer_id`, `review`, `Submit_Date`, `Approved_date`) VALUES
(10, 14, 12, 1, 7, 'Current in Development phase', '2021-10-22', '2021-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `ftr_questions`
--

CREATE TABLE `ftr_questions` (
  `ftr_questions_id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `ftr_master_id` int(11) NOT NULL,
  `question_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftr_questions`
--

INSERT INTO `ftr_questions` (`ftr_questions_id`, `question_number`, `ftr_master_id`, `question_text`) VALUES
(29, 1, 12, 'Question 1 ?'),
(30, 2, 12, 'Question 2 ?'),
(31, 3, 12, 'Question 3 ?');

-- --------------------------------------------------------

--
-- Table structure for table `ftr_question_ftr_group`
--

CREATE TABLE `ftr_question_ftr_group` (
  `ftr_ques_gro_id` int(11) NOT NULL,
  `ftr_question_id` int(11) NOT NULL,
  `ftr_project_group_id` int(11) NOT NULL,
  `ftr_master_id` int(11) NOT NULL,
  `Answer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftr_question_ftr_group`
--

INSERT INTO `ftr_question_ftr_group` (`ftr_ques_gro_id`, `ftr_question_id`, `ftr_project_group_id`, `ftr_master_id`, `Answer`) VALUES
(31, 29, 14, 12, 'YES'),
(32, 30, 14, 12, 'YES'),
(33, 31, 14, 12, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `group_codes`
--

CREATE TABLE `group_codes` (
  `group_code` varchar(6) NOT NULL,
  `group_id` varchar(5) DEFAULT NULL,
  `used` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_codes`
--

INSERT INTO `group_codes` (`group_code`, `group_id`, `used`) VALUES
('04QI5F', NULL, 1),
('07WZ0F', NULL, 1),
('08EF2T', NULL, 1),
('09LIT4', NULL, 1),
('0B1Y0A', NULL, 1),
('0B48FT', NULL, 1),
('0BZKOU', NULL, 1),
('0C4VO6', NULL, 1),
('0FCKOX', NULL, 1),
('0HDK17', NULL, 1),
('0JWODA', NULL, 1),
('0NGFOS', NULL, 1),
('0NI45O', NULL, 1),
('0PFKBS', NULL, 1),
('0QF4UH', NULL, 1),
('0RDEGD', NULL, 1),
('0UJ4BT', NULL, 1),
('0W2FOZ', NULL, 1),
('0W6PP8', NULL, 1),
('0Y8O5K', NULL, 1),
('10E87S', NULL, 1),
('11UCX7', NULL, 1),
('15335Y', NULL, 1),
('15KJXD', NULL, 1),
('16K4NL', NULL, 1),
('1IIJC8', NULL, 1),
('1N1P4B', NULL, 1),
('1RYX08', NULL, 1),
('1TMCFZ', NULL, 1),
('1WRXMU', NULL, 1),
('1Z98EN', NULL, 1),
('1Z9RG0', NULL, 1),
('20T8GF', NULL, 0),
('22PT19', NULL, 0),
('24WPNI', NULL, 0),
('286D5Z', NULL, 0),
('2EUH1S', NULL, 0),
('2HPQGF', NULL, 0),
('2II1KP', NULL, 0),
('2NI3G7', NULL, 0),
('2S3XKP', NULL, 0),
('2TKW2W', NULL, 0),
('2UZLK8', NULL, 0),
('2V2HFC', NULL, 0),
('2VCQ5W', NULL, 0),
('2VOT2R', NULL, 0),
('30EIDH', NULL, 0),
('31AQP8', NULL, 0),
('32HV4R', NULL, 0),
('388516', NULL, 0),
('3A4F1W', NULL, 0),
('3ASX97', NULL, 0),
('3EA2M6', NULL, 0),
('3N67ZG', NULL, 0),
('3OK3GI', NULL, 0),
('3RTA4D', NULL, 0),
('3XZTFT', NULL, 0),
('42IBQG', NULL, 0),
('42LEGQ', NULL, 0),
('436PXE', NULL, 0),
('43XU3J', NULL, 0),
('45X3H4', NULL, 0),
('4B7GBY', NULL, 0),
('4CGSFB', NULL, 0),
('4DYOHE', NULL, 0),
('4I062A', NULL, 0),
('4IQE7G', NULL, 0),
('4JV1X7', NULL, 0),
('4KJIRD', NULL, 0),
('4L9GZV', NULL, 0),
('4LCDK2', NULL, 0),
('4LDA9Y', NULL, 0),
('4LRKEZ', NULL, 0),
('4P49EK', NULL, 0),
('4XBHJY', NULL, 0),
('4ZDA9D', NULL, 0),
('4ZUPMK', NULL, 0),
('50OEVH', NULL, 0),
('52Q3XI', NULL, 0),
('54CNVU', NULL, 0),
('55VC7G', NULL, 0),
('597HPS', NULL, 0),
('5FFEE8', NULL, 0),
('5K8HL2', NULL, 0),
('5MKFR3', NULL, 0),
('5PD5BE', NULL, 0),
('5SNNKZ', NULL, 0),
('5SNQBA', NULL, 0),
('5T6GX8', NULL, 0),
('5XU0UG', NULL, 0),
('5XYC7I', NULL, 0),
('5ZMH7W', NULL, 0),
('61FQ2Q', NULL, 0),
('647MIF', NULL, 0),
('6A28WY', NULL, 0),
('6CUPRX', NULL, 0),
('6EHYJI', NULL, 0),
('6FAK43', NULL, 0),
('6H43IK', NULL, 0),
('6MFVXH', NULL, 0),
('6N8WRC', NULL, 0),
('6OHFJ5', NULL, 0),
('6PPGXC', NULL, 0),
('6TRCVB', NULL, 0),
('71KTGP', NULL, 0),
('72NM0P', NULL, 0),
('73O0K5', NULL, 0),
('7BW1QQ', NULL, 0),
('7HJY2Z', NULL, 0),
('7JNZ9P', NULL, 0),
('7S6RIK', NULL, 0),
('7UV00Z', NULL, 0),
('80DX9I', NULL, 0),
('827V91', NULL, 0),
('89GA6C', NULL, 0),
('8AHZJ1', NULL, 0),
('8FVJLQ', NULL, 0),
('8L5CU8', NULL, 0),
('8QHHAX', NULL, 0),
('8S2ORF', NULL, 0),
('8UPBC7', NULL, 0),
('8WCVC6', NULL, 0),
('8WF188', NULL, 0),
('8X2CSX', NULL, 0),
('8Z4HLF', NULL, 0),
('94CYL1', NULL, 0),
('94ZN7D', NULL, 0),
('961PKK', NULL, 0),
('96TZ8Y', NULL, 0),
('97NZ0M', NULL, 0),
('99CRUS', NULL, 0),
('99RTS8', NULL, 0),
('9AFVJY', NULL, 0),
('9BE9F5', NULL, 0),
('9IZMIA', NULL, 0),
('9JO7VO', NULL, 0),
('9N9QKQ', NULL, 0),
('9NZZ7Z', NULL, 0),
('9RLB7A', NULL, 0),
('9TET7O', NULL, 0),
('9TGKBA', NULL, 0),
('9XHANE', NULL, 0),
('9Z1O60', NULL, 0),
('9Z5UKS', NULL, 0),
('A4VI3K', NULL, 0),
('A8V6OY', NULL, 0),
('AC9EFW', NULL, 0),
('ADENZL', NULL, 0),
('AE7WU8', NULL, 0),
('AEI8IV', NULL, 0),
('AEZ61C', NULL, 0),
('AHG9J6', NULL, 0),
('AJ4I9Q', NULL, 0),
('ALPDB9', NULL, 0),
('ANQ7PC', NULL, 0),
('AOW2SC', NULL, 0),
('AQ011N', NULL, 0),
('ARBAM0', NULL, 0),
('AS9QKB', NULL, 0),
('AW24L0', NULL, 0),
('AZ4X4S', NULL, 0),
('AZHBB3', NULL, 0),
('B07616', NULL, 0),
('B0VZOD', NULL, 0),
('B2I4Q1', NULL, 0),
('B5UN4U', NULL, 0),
('B8DDGZ', NULL, 0),
('B8RYLL', NULL, 0),
('B93BKZ', NULL, 0),
('B9V12G', NULL, 0),
('BGMEC5', NULL, 0),
('BILDTJ', NULL, 0),
('BNXU7K', NULL, 0),
('BQY52O', NULL, 0),
('BVMB5N', NULL, 0),
('BZG0ZN', NULL, 0),
('C71MIA', NULL, 0),
('C8RO5F', NULL, 0),
('CBM6L7', NULL, 0),
('CFH1NO', NULL, 0),
('CHPSQM', NULL, 0),
('CHTB8S', NULL, 0),
('CN93HK', NULL, 0),
('CNMMT1', NULL, 0),
('CR8SWS', NULL, 0),
('CSN547', NULL, 0),
('CVJI4T', NULL, 0),
('CY5F7L', NULL, 0),
('CYVHWW', NULL, 0),
('CZ1L2A', NULL, 0),
('D1Z60S', NULL, 0),
('D3CWBM', NULL, 0),
('D5D192', NULL, 0),
('D728DP', NULL, 0),
('D72XHD', NULL, 0),
('DBL3VZ', NULL, 0),
('DJJJF5', NULL, 0),
('DKBC01', NULL, 0),
('DKD1CL', NULL, 0),
('DU0OZU', NULL, 0),
('DW7IP9', NULL, 0),
('DWY0KM', NULL, 0),
('E1ZI05', NULL, 0),
('E3ELOX', NULL, 0),
('E4QP0T', NULL, 0),
('EA8M3B', NULL, 0),
('EERNCD', NULL, 0),
('EGOUB8', NULL, 0),
('EID3LB', NULL, 0),
('EJLZI1', NULL, 0),
('EP0A74', NULL, 0),
('ET06TM', NULL, 0),
('ETHNT1', NULL, 0),
('EUBZYX', NULL, 0),
('EZRRHB', NULL, 0),
('F0U9FG', NULL, 0),
('FGQFHV', NULL, 0),
('FGV6DD', NULL, 0),
('FI3HYE', NULL, 0),
('FL1VV2', NULL, 0),
('FPT6W9', NULL, 0),
('FS1AE9', NULL, 0),
('FTPLTE', NULL, 0),
('FX88IK', NULL, 0),
('G1QXCN', NULL, 0),
('G1R1PQ', NULL, 0),
('G2VO2M', NULL, 0),
('G6PFF4', NULL, 0),
('GB2OWM', NULL, 0),
('GGE3SG', NULL, 0),
('GKT6QZ', NULL, 0),
('GL8JPT', NULL, 0),
('GMGC11', NULL, 0),
('GSDBWD', NULL, 0),
('GSRLWN', NULL, 0),
('GXAEC6', NULL, 0),
('GYOVBB', NULL, 0),
('H0SZCX', NULL, 0),
('H3S5RH', NULL, 0),
('H701T0', NULL, 0),
('H9PFLI', NULL, 0),
('HBNNEK', NULL, 0),
('HCI03D', NULL, 0),
('HDQLQZ', NULL, 0),
('HGW3EZ', NULL, 0),
('HJ3F75', NULL, 0),
('HJQEH4', NULL, 0),
('HUI3MK', NULL, 0),
('HUYVUT', NULL, 0),
('HWVIXR', NULL, 0),
('HXENME', NULL, 0),
('I4W9ND', NULL, 0),
('I6KOIA', NULL, 0),
('I7YEE7', NULL, 0),
('I83RPZ', NULL, 0),
('IA52YQ', NULL, 0),
('ICTT6Y', NULL, 0),
('IEMBVM', NULL, 0),
('IG27IX', NULL, 0),
('IH7XK1', NULL, 0),
('IH8G0I', NULL, 0),
('IH9JDU', NULL, 0),
('II69YR', NULL, 0),
('IMN42D', NULL, 0),
('IT6S7X', NULL, 0),
('ITMFRP', NULL, 0),
('IYCI4N', NULL, 0),
('IZSG1X', NULL, 0),
('J3YQDW', NULL, 0),
('J4H2P7', NULL, 0),
('JAOX55', NULL, 0),
('JCHLWV', NULL, 0),
('JD2QUT', NULL, 0),
('JDDLAB', NULL, 0),
('JFWJV1', NULL, 0),
('JJMWVY', NULL, 0),
('JR3WR5', NULL, 0),
('JTP3YP', NULL, 0),
('JU8VQV', NULL, 0),
('JX2QGI', NULL, 0),
('JXPB7H', NULL, 0),
('K01MR4', NULL, 0),
('K2KG4O', NULL, 0),
('K4W1NF', NULL, 0),
('K6I054', NULL, 0),
('K8U3XK', NULL, 0),
('K9S765', NULL, 0),
('KB0ZSA', NULL, 0),
('KBB9Y1', NULL, 0),
('KC7Z4S', NULL, 0),
('KD77UM', NULL, 0),
('KI3PZ9', NULL, 0),
('KINWT4', NULL, 0),
('KJM8B6', NULL, 0),
('KOI6CV', NULL, 0),
('KPU9MI', NULL, 0),
('KQCRHM', NULL, 0),
('KRUU1Z', NULL, 0),
('KS0BJD', NULL, 0),
('KU2B0C', NULL, 0),
('KU9HN0', NULL, 0),
('KUCI50', NULL, 0),
('KVFIFG', NULL, 0),
('L0JMT3', NULL, 0),
('L35605', NULL, 0),
('L5SOAV', NULL, 0),
('L6KBJ8', NULL, 0),
('L9PK71', NULL, 0),
('LBULJC', NULL, 0),
('LDQBJU', NULL, 0),
('LEH0ND', NULL, 0),
('LHPA1Q', NULL, 0),
('M5SQBU', NULL, 0),
('M9IGOM', NULL, 0),
('M9UHEU', NULL, 0),
('MADNRK', NULL, 0),
('MDG51G', NULL, 0),
('MDPVC6', NULL, 0),
('MGVE2G', NULL, 0),
('MIC2HS', NULL, 0),
('MLAYV1', NULL, 0),
('MMIPU9', NULL, 0),
('MMYGCJ', NULL, 0),
('MO6BO7', NULL, 0),
('MOTEIV', NULL, 0),
('MRMXGX', NULL, 0),
('MSLC91', NULL, 0),
('MSXPMJ', NULL, 0),
('MUAZ35', NULL, 0),
('MURNRG', NULL, 0),
('MXN2WL', NULL, 0),
('MXN75H', NULL, 0),
('N2WNKF', NULL, 0),
('N3YU23', NULL, 0),
('N5PKNR', NULL, 0),
('N78LSU', NULL, 0),
('N8R92C', NULL, 0),
('NGXIFR', NULL, 0),
('NJ1MW5', NULL, 0),
('NUXJ3R', NULL, 0),
('NYCICH', NULL, 0),
('NZ8XIA', NULL, 0),
('NZTRRG', NULL, 0),
('O0GRUT', NULL, 0),
('O3EZLN', NULL, 0),
('O3H81Q', NULL, 0),
('O3NWVH', NULL, 0),
('O6E0ML', NULL, 0),
('O991Z0', NULL, 0),
('O9QMT4', NULL, 0),
('OF1EY8', NULL, 0),
('OGRUN5', NULL, 0),
('OHA8EL', NULL, 0),
('OK2PGD', NULL, 0),
('OKJXYQ', NULL, 0),
('ONA1X2', NULL, 0),
('OOH3ML', NULL, 0),
('OPPBNE', NULL, 0),
('OS3X1Z', NULL, 0),
('OTZVLU', NULL, 0),
('OWT8RC', NULL, 0),
('P1DVS6', NULL, 0),
('P1EB79', NULL, 0),
('PAVZQR', NULL, 0),
('PDLJJL', NULL, 0),
('PGF0EJ', NULL, 0),
('PGFR1V', NULL, 0),
('PH4WFX', NULL, 0),
('PJQS8K', NULL, 0),
('PMDRO5', NULL, 0),
('PP79FK', NULL, 0),
('PSU0JU', NULL, 0),
('PTXEXL', NULL, 0),
('Q4J3VC', NULL, 0),
('Q53590', NULL, 0),
('QA4KOP', NULL, 0),
('QB0X3L', NULL, 0),
('QCTQ32', NULL, 0),
('QD7NQR', NULL, 0),
('QGJYF4', NULL, 0),
('QK13DY', NULL, 0),
('QMW39D', NULL, 0),
('QOTUOY', NULL, 0),
('QSLKIP', NULL, 0),
('QT3DDG', NULL, 0),
('R1MJBV', NULL, 0),
('R2I9H4', NULL, 0),
('R5BD25', NULL, 0),
('R7I6IE', NULL, 0),
('R8GLPG', NULL, 0),
('R9YMUC', NULL, 0),
('RAFTJ4', NULL, 0),
('RDBPB6', NULL, 0),
('RIV6DX', NULL, 0),
('RKMMTG', NULL, 0),
('RLNV0I', NULL, 0),
('RO4G4F', NULL, 0),
('RPCVY1', NULL, 0),
('RQXESR', NULL, 0),
('RWOEHU', NULL, 0),
('RY1CO0', NULL, 0),
('S3Y8B3', NULL, 0),
('S6M5H9', NULL, 0),
('S7NGAA', NULL, 0),
('SDCEXC', NULL, 0),
('SEU2IS', NULL, 0),
('T08KQL', NULL, 0),
('T1BRRO', NULL, 0),
('T1TF8D', NULL, 0),
('T2IKVL', NULL, 0),
('T384QJ', NULL, 0),
('T58CKL', NULL, 0),
('T5UXJH', NULL, 0),
('T64XSN', NULL, 0),
('T7IB7C', NULL, 0),
('TC3PUJ', NULL, 0),
('TDFSDG', NULL, 0),
('TF82TD', NULL, 0),
('TKLMON', NULL, 0),
('TRWEX7', NULL, 0),
('TVHPO9', NULL, 0),
('TWR499', NULL, 0),
('TY57BX', NULL, 0),
('TZRWZV', NULL, 0),
('U0BO0A', NULL, 0),
('U6EPPA', NULL, 0),
('U8LSML', NULL, 0),
('U9S9S9', NULL, 0),
('U9Y7N2', NULL, 0),
('UAO6WT', NULL, 0),
('UJ68S6', NULL, 0),
('UPQBBD', NULL, 0),
('URXJ17', NULL, 0),
('UX145S', NULL, 0),
('UYCAAN', NULL, 0),
('V2R2AK', NULL, 0),
('V3WETJ', NULL, 0),
('V6BOZ1', NULL, 0),
('V6F13R', NULL, 0),
('V6G3F1', NULL, 0),
('V9VXLS', NULL, 0),
('VBMH0R', NULL, 0),
('VBX7XH', NULL, 0),
('VL1Y3C', NULL, 0),
('VOD6P2', NULL, 0),
('VP1HEU', NULL, 0),
('VRM5NP', NULL, 0),
('VTBDF8', NULL, 0),
('VW1662', NULL, 0),
('VWIN2R', NULL, 0),
('VXAQAR', NULL, 0),
('VY61U9', NULL, 0),
('VYS4PQ', NULL, 0),
('VYUHU6', NULL, 0),
('WATJ3Q', NULL, 0),
('WC4XGN', NULL, 0),
('WIP4WU', NULL, 0),
('WMZ91V', NULL, 0),
('WPHFI6', NULL, 0),
('WUZRG9', NULL, 0),
('X4KIY8', NULL, 0),
('X7OVPH', NULL, 0),
('X8WNLS', NULL, 0),
('XCYKRG', NULL, 0),
('XLSIO5', NULL, 0),
('XQJXE5', NULL, 0),
('XQO0XK', NULL, 0),
('XSZXVF', NULL, 0),
('XX1ICS', NULL, 0),
('Y0NDMI', NULL, 0),
('Y0WDEO', NULL, 0),
('Y0XFN1', NULL, 0),
('Y1ML9V', NULL, 0),
('Y3DKV9', NULL, 0),
('YE5BET', NULL, 0),
('YENH1D', NULL, 0),
('YGSHWC', NULL, 0),
('YL88X8', NULL, 0),
('YL8TRL', NULL, 0),
('YMQWBT', NULL, 0),
('YMUKT5', NULL, 0),
('YNF45I', NULL, 0),
('YP1QMQ', NULL, 0),
('YPKPIP', NULL, 0),
('YQCW4M', NULL, 0),
('YS6164', NULL, 0),
('YVE1CY', NULL, 0),
('YX0ZFJ', NULL, 0),
('YYP90L', NULL, 0),
('Z2BN3O', NULL, 0),
('Z2LG95', NULL, 0),
('Z4HOUR', NULL, 0),
('ZCCXI3', NULL, 0),
('ZDFHMT', NULL, 0),
('ZH4IRG', NULL, 0),
('ZJB6OI', NULL, 0),
('ZL8B6B', NULL, 0),
('ZOQDJP', NULL, 0),
('ZYJDWV', NULL, 0),
('ZZ2OT0', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `industryproject`
--

CREATE TABLE `industryproject` (
  `industry_project_id` int(11) NOT NULL,
  `Company_id` int(11) DEFAULT NULL,
  `industryguide_name` varchar(30) DEFAULT NULL,
  `industryguide_email` varchar(30) DEFAULT NULL,
  `college_id` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `duedate` varchar(255) NOT NULL,
  `facultyref` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industryproject`
--

INSERT INTO `industryproject` (`industry_project_id`, `Company_id`, `industryguide_name`, `industryguide_email`, `college_id`, `links`, `duedate`, `facultyref`, `description`, `visible`) VALUES
(1, 1, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(2, 1, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(3, 1, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(4, 1, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(5, 7, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(6, 17, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(7, 2, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(10, 5, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(12, 3, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(13, 11, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(14, 11, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0),
(17, 11, 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', '', '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `industryproject_department`
--

CREATE TABLE `industryproject_department` (
  `industryproject_department_id` int(11) NOT NULL,
  `industryproject_id` int(11) DEFAULT NULL,
  `Department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `industryproject_domain`
--

CREATE TABLE `industryproject_domain` (
  `industryproject_domain_id` int(11) NOT NULL,
  `industryproject_id` int(11) DEFAULT NULL,
  `Domain_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `Instructor_id` int(11) NOT NULL,
  `Person_id` int(11) NOT NULL,
  `Domain_Pref_1` int(11) DEFAULT NULL,
  `Domain_Pref_2` int(11) DEFAULT NULL,
  `Domain_Pref_3` int(11) DEFAULT NULL,
  `registered` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`Instructor_id`, `Person_id`, `Domain_Pref_1`, `Domain_Pref_2`, `Domain_Pref_3`, `registered`) VALUES
(1, 1, 1, 2, 3, 1),
(3, 7, 1, 2, 3, 1),
(4, 24, 1, 2, 3, 1),
(5, 26, 1, 2, 3, 1),
(6, 29, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learner`
--

CREATE TABLE `learner` (
  `Learner_id` int(11) NOT NULL,
  `Module_id` int(11) NOT NULL,
  `Person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learner`
--

INSERT INTO `learner` (`Learner_id`, `Module_id`, `Person_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 20),
(10, 1, 21),
(11, 1, 22),
(12, 1, 23),
(13, 1, 24),
(14, 1, 25),
(15, 1, 26),
(16, 1, 27),
(17, 1, 28),
(18, 1, 29),
(19, 1, 30),
(20, 1, 31),
(21, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `learner_project_reg`
--

CREATE TABLE `learner_project_reg` (
  `Learner_Reg_id` int(11) NOT NULL,
  `Group_id` int(11) DEFAULT NULL,
  `Learner_id` int(11) NOT NULL,
  `registered` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learner_project_reg`
--

INSERT INTO `learner_project_reg` (`Learner_Reg_id`, `Group_id`, `Learner_id`, `registered`) VALUES
(5, 3, 6, 1),
(6, 3, 7, 1),
(21, 3, 8, 1),
(22, 12, 12, 1),
(23, 13, 14, 1),
(24, 14, 1, 1),
(25, 14, 2, 1),
(26, 14, 3, 1),
(27, 14, 4, 1),
(41, 31, 11, 1),
(42, 32, 20, 1),
(43, 32, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `Module_id` int(11) NOT NULL,
  `Module_Name` varchar(255) NOT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`Module_id`, `Module_Name`, `College_id`) VALUES
(1, 'Project', 1),
(2, 'Internship', 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `Person_id` int(11) NOT NULL,
  `grno_EmpCode` varchar(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `FullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Mobile` bigint(12) NOT NULL,
  `department` int(11) NOT NULL,
  `college` int(11) NOT NULL,
  `roleId` int(10) NOT NULL DEFAULT 1,
  `usertype_id` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `Password` tinytext NOT NULL,
  `accessToken` varchar(35) DEFAULT NULL,
  `access_token` varchar(255) NOT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `tokenexpiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`Person_id`, `grno_EmpCode`, `username`, `FullName`, `email`, `Mobile`, `department`, `college`, `roleId`, `usertype_id`, `createdAt`, `updatedAt`, `Password`, `accessToken`, `access_token`, `date_created`, `tokenexpiry`) VALUES
(0, '23145', 'priyashelke', 'Priya Shelke', 'priya.shelke@viit.ac.in', 9876543210, 1, 1, 3, 2, '2021-10-08 10:36:00', '2021-10-08 10:36:00', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(1, 'EMPADMINGU', 'adminguide', 'admin guide', 'admin.guide@viit.ac.in', 9876543210, 1, 1, 3, 2, '2021-10-08 12:17:28', '2021-10-08 12:17:28', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(3, '21810167', 'mayurbhor', 'Mayur Patil', 'mayur.21810167@viit.ac.in', 7756965301, 1, 1, 1, 1, '2021-10-08 12:58:01', '2021-10-08 12:58:01', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, 'XO7eYoxykqZm8dNibwrMdGnsPpRrfAi55TY5LOAItJZjD1M1kgN3L-za8TIICrHn1R5fH1vP4tVjlwYqYR-O1zJKRW3KKUpGS4Nsyk2a5nv1e0dhgb6hX0kvqrnUVwS6yRCBVElMlW3hv-PPxx5EEIrE_L6Xkx4F8RHskrQuSSk=', NULL, '2021-11-23'),
(4, '21810422', 'abhishekgavali', 'Abhishek Gavali', 'abhishek.21810422@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 13:00:04', '2021-10-08 13:00:04', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(5, '21920143', 'avdhutsagare', 'Avdhut Sagare', 'avdhut.21920143@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 13:01:58', '2021-10-08 13:01:58', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(6, '21810860', 'meghanapatil', 'Meghana Patil', 'meghana.21810860@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 13:03:04', '2021-10-08 13:03:04', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(7, '213456', 'vikaskolekar', 'Vikas Kolekar', 'vikas.kolekar@viit.ac.in', 9876543210, 1, 1, 3, 2, '2021-10-08 11:34:47', '2021-10-08 11:34:47', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '9m9kHEUQJawoqumNBgCR6vf6XE_eLSLx0WU3o7BE9OKm4mjTyWXTcUFbSi3-Jn2EA-LwP6qR91HGSOrb_XWybYdWFDPJ-G67o78GHI1M3CpwlNONXKZbwf1u5rkbRt9-okFn1Hje9w4t7EfuhYgmcFx0z9Y0mydiPZSk4YoPqTQ=', NULL, '2021-11-23'),
(8, '21810653', 'vikramshinde', 'Vikram Shinde', 'vikram.shinde@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 11:35:55', '2021-10-08 11:35:55', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, 'MzU07azUzsJey-7uJ_GzAICVDG8uw0XjQVn--EiAvkGSVnsW4eGIYsUs5E3RFQ9OF9vaHyL-D6YVilbPitkjPh2tgDTYU9TRsBnS5UU2dghuxJE9EeqkK4c_vVrmz0IiIBQaVnhIX-LQRHpa0x1l_c2Cha7vr2xPjdCc2eQddhY=', NULL, '2021-11-23'),
(9, '21345678', 'rijensasvani', 'Rijen Sasvani', 'rijensasvani@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 11:46:11', '2021-10-08 11:46:11', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(10, '21810654', 'shubhamchavan', 'Shubham Chavan', 'shubhamchavan@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-08 11:46:59', '2021-10-08 11:46:59', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(11, '123454', 'hodcompviit', 'Hod Comp Viit', 'hodcomp@viit.ac.in', 9876543210, 1, 1, 4, 2, '2021-10-08 13:48:54', '2021-10-08 13:48:54', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(12, '11111', 'hodmechanicalviit', 'Hod Mechanical Viit', 'hodmechanical@viit.ac.in', 9876543210, 3, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(13, '22222', 'hodcivilviit', 'Hod Civil Viit', 'hodcivil@viit.ac.in', 9876543210, 6, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(14, '33333', 'hoditviit', 'Hod It Viit', 'hodit@viit.ac.in', 9876543210, 5, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(15, '44444', 'hodetcviit', 'Hod E&TC Viit', 'hodetc@viit.ac.in', 9876543210, 4, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(16, '55555', 'hodaindsviit', 'Hod AI&DS Viit', 'hodainds@viit.ac.in', 9876543210, 16, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(17, '66666', 'hodeasviit', 'Hod E&AS Viit', 'hodeas@viit.ac.in', 9876543210, 17, 1, 4, 2, '2021-10-09 05:59:46', '2021-10-09 05:59:46', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(18, '77777', 'directorviit', 'Director VIIT', 'director@viit.ac.in', 9876543210, 1, 1, 5, 2, '2021-10-09 06:09:54', '2021-10-09 06:09:54', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, 'FkwcufHwjQKdV2ZwTej5uZjPqdbxlw00aXydvBCufu3dkt4b0cQlSc_fAPbfHO6KJvxEp3urrDW8kb5_VU2mHmftuvEzyBrZPp4UhbY8nSYOVRTBA-FWasIqd_oiCVlZX6fG6eqX40b19sw8h0hck1uCFni1nKZl4EloRMo_ehw=', NULL, '2021-11-23'),
(19, '88888', 'management', 'Management', 'management@viit.ac.in', 9876543210, 1, 1, 6, 2, '2021-10-09 06:11:33', '2021-10-09 06:11:33', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(22, '21818764', 'kiranpatil', 'Kiran Patil', 'kiranpatil@viit.ac.in', 9876543210, 1, 1, 1, 1, '2021-10-11 10:53:09', '2021-10-11 10:53:09', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(23, '21810502', 'shrinathborse', 'Shrinath Borse', 'shrinathborse@viit.ac.in', 9876543210, 3, 1, 1, 1, '2021-10-12 17:13:52', '2021-10-12 17:13:52', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(26, '123654', 'diptipandit', 'Dipti Pandit', 'diptipandit@viit.ac.in', 9876543210, 4, 1, 3, 2, '2021-10-13 08:51:52', '2021-10-13 08:51:52', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(29, '234567', 'subhash12', 'Subhash Tatale', 'subhash.tatale@viit.ac.in', 9876543210, 1, 1, 3, 2, '2021-10-22 05:52:35', '2021-10-22 05:52:35', '$2a$08$yb/2OzpkdRpmfs39a9/NX.1iT7s1wWoUK0ujH6KKJ6VzrL56Ra89G', NULL, '', NULL, NULL),
(31, '22020163', 'tejasvp25', 'TEJAS PATIL', 'tejasvp25@viit.ac.in', 7558385438, 1, 1, 1, 1, '2021-10-27 12:06:27', '2021-10-27 12:06:27', '$2a$08$eqE28EZBBECjyFDIDx58YO7X62nrybrbzdTLysy1p1bzHAq2WYxRO', NULL, '', NULL, NULL),
(32, '22020164', 'tejasvp125', 'TEJAS VIJAY PATIL', 'tejasvp125@viit.ac.in', 7558385438, 1, 1, 1, 1, '2021-11-02 10:23:59', '2021-11-02 10:23:59', '$2a$08$ofu6F7jxN.5NW8jfKvpayeq1QfGjnaWN768DSGwLPTS8l9SWrGa7G', NULL, '', NULL, NULL);

--
-- Triggers `persons`
--
DELIMITER $$
CREATE TRIGGER `ADDINLERNER` AFTER INSERT ON `persons` FOR EACH ROW BEGIN
IF NEW.roleId = 1 OR NEW.roleId = 1 THEN
INSERT INTO `learner` (`Learner_id`, `Module_id`, `Person_id`) VALUES (NULL, '1',NEW.Person_id);
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `persons_roles`
--

CREATE TABLE `persons_roles` (
  `persons_id` bigint(20) DEFAULT NULL,
  `roles_string` varchar(255) DEFAULT NULL,
  `roles_idx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons_roles`
--

INSERT INTO `persons_roles` (`persons_id`, `roles_string`, `roles_idx`) VALUES
(8, 'ROLE_LEADER', 0),
(8, 'ROLE_LEADER', 1),
(8, 'ROLE_LEADER', 2),
(8, 'ROLE_LEADER', 3),
(3, 'ROLE_LEADER', 0),
(7, 'ROLE_GUIDE', 0),
(18, 'ROLE_DIRECTOR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projectactivitylog`
--

CREATE TABLE `projectactivitylog` (
  `Activity_id` int(11) NOT NULL,
  `activity_datetime` varchar(255) NOT NULL,
  `activity_description` varchar(255) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectgroup`
--

CREATE TABLE `projectgroup` (
  `Group_id` int(11) NOT NULL,
  `domain_pref_3` int(11) NOT NULL,
  `deployment_time` int(11) NOT NULL,
  `testing_time` int(11) NOT NULL,
  `instructor_id1` int(11) NOT NULL,
  `domain_pref_1` int(11) NOT NULL,
  `instructor_id_industry` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `domain_pref_2` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `instructor_id2` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `industry_project_id` int(11) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `project_type_id` int(11) NOT NULL,
  `final_domain` int(11) NOT NULL,
  `group_title` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `design_time` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `initial_time` int(11) NOT NULL,
  `development_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projecttask`
--

CREATE TABLE `projecttask` (
  `Task_id` bigint(20) NOT NULL,
  `challenges` varchar(255) NOT NULL,
  `approved_date` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `submitted_date` varchar(255) NOT NULL,
  `rejected_count` int(11) NOT NULL,
  `deleted_date` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `task_details` varchar(255) NOT NULL,
  `alloted_to` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `task_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projecttasklogs`
--

CREATE TABLE `projecttasklogs` (
  `Project_Task_id` bigint(20) NOT NULL,
  `challenges` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_details` varchar(255) NOT NULL,
  `alloted_to` varchar(255) NOT NULL,
  `approved_date` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `deleted_date` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_activity_log`
--

CREATE TABLE `project_activity_log` (
  `Activity_id` int(11) NOT NULL,
  `Activity_Name` varchar(255) NOT NULL,
  `Activity_Description` text NOT NULL,
  `Activity_dateTime` datetime NOT NULL,
  `Person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_domain`
--

CREATE TABLE `project_domain` (
  `Domain_id` int(11) NOT NULL,
  `Domain_Name` varchar(255) NOT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_domain`
--

INSERT INTO `project_domain` (`Domain_id`, `Domain_Name`, `Department_id`, `College_id`) VALUES
(9, 'Web Developement', 1, 1),
(10, 'Application Developement', 1, 1),
(11, 'Artificial Intelligence', 1, 1),
(12, 'Machine Learning', 1, 1),
(13, 'Design', 3, 1),
(14, 'Modeling', 3, 1),
(15, 'Drafting', 3, 1),
(16, 'Manufacturing', 3, 1),
(17, 'fabrication', 3, 1),
(18, 'Automation', 3, 1),
(19, 'Thermal', 3, 1),
(20, 'Heat Transfer', 3, 1),
(21, 'Product Development', 3, 1),
(22, 'Process Development', 3, 1),
(23, 'Special Purpose Machines', 3, 1),
(24, 'Signal Processing', 4, 1),
(25, 'Control Engineering', 4, 1),
(26, 'Instrumentation Engineering', 4, 1),
(27, 'VLSI design Engineering', 4, 1),
(28, 'Telecommunications Engineering', 4, 1),
(39, 'Structural Engineering', 6, 1),
(40, 'Water Resources Engineering', 6, 1),
(41, 'Municipal and Urban Engineering', 6, 1),
(42, 'Water Resources Engineering', 6, 1),
(43, 'Environmental Engineering', 6, 1),
(44, 'Web Development', 5, 1),
(45, 'Artificial Engineering', 5, 1),
(46, 'Machine Learning', 5, 1),
(47, 'Application Development', 5, 1),
(48, 'Devops', 5, 1),
(49, 'AR/VR', 5, 1),
(50, 'Software Testing', 5, 1),
(51, 'AR/VR', 1, 1),
(52, 'DevOps', 1, 1),
(53, 'Software Testing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_group`
--

CREATE TABLE `project_group` (
  `Group_id` int(11) NOT NULL,
  `Dept_id` int(11) NOT NULL,
  `Group_Name` varchar(255) DEFAULT NULL,
  `Group_title` text DEFAULT '\'NA\'',
  `Year` varchar(100) NOT NULL,
  `Instructor_id2` int(11) DEFAULT NULL,
  `Instructor_id1` int(11) DEFAULT NULL,
  `Instructor_id_industry` int(11) DEFAULT NULL,
  `initial_Time` int(11) NOT NULL DEFAULT 0,
  `Design_Time` int(11) NOT NULL DEFAULT 0,
  `Devlopment_Time` int(11) NOT NULL DEFAULT 0,
  `Testing_Time` int(11) NOT NULL DEFAULT 0,
  `Deployment_Time` int(11) NOT NULL DEFAULT 0,
  `Department_id` int(11) DEFAULT NULL,
  `College_id` int(11) DEFAULT NULL,
  `final_domain` int(11) DEFAULT NULL,
  `Domain_Pref_1` int(11) DEFAULT NULL,
  `Domain_Pref_2` int(11) DEFAULT NULL,
  `Domain_Pref_3` int(11) DEFAULT NULL,
  `Status_id` int(11) DEFAULT NULL,
  `Project_Type_id` int(11) DEFAULT NULL,
  `industry_project_id` int(11) DEFAULT NULL,
  `Objective` text DEFAULT NULL,
  `Scope` text DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date NOT NULL,
  `code` varchar(6) NOT NULL,
  `creator` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_group`
--

INSERT INTO `project_group` (`Group_id`, `Dept_id`, `Group_Name`, `Group_title`, `Year`, `Instructor_id2`, `Instructor_id1`, `Instructor_id_industry`, `initial_Time`, `Design_Time`, `Devlopment_Time`, `Testing_Time`, `Deployment_Time`, `Department_id`, `College_id`, `final_domain`, `Domain_Pref_1`, `Domain_Pref_2`, `Domain_Pref_3`, `Status_id`, `Project_Type_id`, `industry_project_id`, `Objective`, `Scope`, `createDate`, `startDate`, `endDate`, `code`, `creator`) VALUES
(3, 2, 'Btech-Computer Engineering-PRJ-21-22-2', 'Project Monitoring System - Backend', 'Btech', 1, 3, 3, 1, 2, 2, 1, 1, 1, 1, 9, 9, 10, 11, 2, 2, 1, 'To design and create the backend and database structure of the project monitoring system application by using relevant technologies.', 'Project Management System is a web application that aims to ease the monitoring of industrial as well as inhouse projects within the institution.', '2021-10-08', '2021-10-11', '2021-11-28', '07WZ0F', '8'),
(12, 1, 'Btech-Mechanical Engineering-PRJ-21-22-1', 'Water Management System', 'Btech', 1, 4, 4, 1, 1, 1, 1, 1, 3, 1, 14, 9, 10, 11, 2, 2, 4, 'Water Management System', 'Water Management System', '2021-10-12', '2021-10-12', '2021-11-15', '0JWODA', '23'),
(13, 1, 'Btech-ENTC-PRJ-21-22-1', 'IoT enabaled street lights', 'Btech', 1, 5, 2, 1, 1, 1, 1, 1, 4, 1, 25, 9, 10, 11, 2, 1, 5, 'IoT enabaled street lights', 'IoT enabaled street lights', '2021-10-13', '2021-10-13', '2021-11-16', '0NGFOS', '25'),
(14, 4, 'Btech-Computer Engineering-PRJ-21-22-4', 'Project Monitoring System - Frontend', 'Btech', 1, 3, 3, 1, 2, 1, 1, 1, 1, 1, 9, 9, 10, 11, 2, 2, 6, 'To explore different user interface specific technologies and design the user interface for the project monitoring system web application', 'Project Management System is a web application that aims to ease the monitoring of industrial as well as inhouse projects within the institution.', '2021-10-19', '2021-10-19', '2021-11-29', '0NI45O', '3'),
(31, 5, 'Btech-Computer Engineering-PRJ-21-22-5', 'Food Delivery System', 'Btech', 1, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 9, 9, 10, 11, 2, 1, 1, 'Food Delivery System', 'Food Delivery System', '2021-10-23', '2021-10-23', '2021-11-26', '1Z98EN', '22'),
(32, 1, 'TY-Computer Engineering-PRJ-21-22-1', 'Kek', 'TY', 1, 3, NULL, 1, 1, 1, 1, 2, 1, 1, 9, 9, 10, 11, 2, 1, 1, 'asd', 'asd', '2021-11-02', '2021-11-02', '0000-00-00', '1Z9RG0', '31');

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `Task_id` int(11) NOT NULL,
  `Group_id` int(11) NOT NULL,
  `Task_Name` varchar(255) NOT NULL,
  `Alloted_To` varchar(255) NOT NULL,
  `Due_Date` date NOT NULL,
  `Start_date` date DEFAULT NULL,
  `Task_Details` text NOT NULL DEFAULT 'NA',
  `Challenges` text NOT NULL DEFAULT 'NA',
  `Submitted_Date` date DEFAULT NULL,
  `Reason` text DEFAULT NULL,
  `Approved_Date` date DEFAULT NULL,
  `Status` varchar(255) NOT NULL,
  `Deleted_Date` date DEFAULT NULL,
  `Task_status` varchar(5) DEFAULT '2',
  `Rejected_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_task`
--

INSERT INTO `project_task` (`Task_id`, `Group_id`, `Task_Name`, `Alloted_To`, `Due_Date`, `Start_date`, `Task_Details`, `Challenges`, `Submitted_Date`, `Reason`, `Approved_Date`, `Status`, `Deleted_Date`, `Task_status`, `Rejected_count`) VALUES
(18, 3, 'First Week First Task', '8', '2021-10-17', '2021-10-16', 'Improved the bug', 'NA', '2021-10-16', 'Not upto the mark', '2021-10-16', 'Done', NULL, '3', 2),
(19, 3, 'First Week Second Task', '8', '2021-10-17', '2021-10-19', 'First Weel Second Task done', 'NA', '2021-10-19', NULL, '2021-10-16', 'Done', '2021-10-19', '1', 0),
(20, 3, 'First Week Third Task', '8', '2021-10-17', '2021-10-17', 'NA', 'NA', NULL, NULL, NULL, 'Doings', NULL, '2', 0),
(21, 3, 'First Week Fourth Task', '8', '2021-10-17', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(22, 3, 'First Week Fifth Task', '8', '2021-10-17', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(23, 3, 'Second week first task', '8', '2021-10-17', '2021-10-16', 'Changed the UI framework used', 'NA', '2021-10-17', 'Not satisfactory', '2021-10-17', 'Done', NULL, '2', 2),
(24, 3, 'Second week second task', '8', '2021-10-21', '2021-10-17', 'Second Task done in first week', 'NA', '2021-10-17', NULL, '2021-10-17', 'Done', NULL, '3', 0),
(25, 3, 'Second week Third task', '8', '2021-10-21', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(26, 3, 'Second week Fourth Task', '8', '2021-10-20', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(27, 14, 'Explore different frameworks to be used for the user interface', '3', '2021-10-22', '2021-10-19', 'Explored different frontend frameworks. I think we should use vue', 'NA', '2021-10-19', NULL, '2021-10-19', 'Done', NULL, '3', 0),
(28, 14, 'Create UML diagrams for all the entities in the application', '4', '2021-10-24', '2021-10-19', 'NA', 'NA', NULL, NULL, NULL, 'Doings', NULL, '2', 0),
(29, 14, 'Create Homepage for the application', '5', '2021-10-23', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(30, 14, 'Create About us Page for the application', '6', '2021-10-23', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(31, 14, 'Install all the modules included', '3', '2021-10-28', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(32, 14, 'Create Dashboard for the faculty', '3', '2021-10-25', '2021-10-22', 'Completed with other changes', 'NA', '2021-10-22', 'Not Satisfactory', '2021-10-22', 'Done', NULL, '3', 1),
(33, 14, 'Create Dashboard for HOD', '5', '2021-10-24', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(34, 14, 'Create Project Details Page for Students', '5', '2021-10-29', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', NULL, '2', 0),
(35, 14, 'Create the Hompage', '3', '2021-10-25', NULL, 'NA', 'NA', NULL, NULL, NULL, 'None', '2021-10-22', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_task_logs`
--

CREATE TABLE `project_task_logs` (
  `Project_Task_id` int(11) NOT NULL,
  `Task_id` int(11) NOT NULL,
  `Group_id` int(11) NOT NULL,
  `Task_Name` varchar(255) NOT NULL,
  `Alloted_To` varchar(255) NOT NULL,
  `Due_Date` date NOT NULL,
  `Start_date` date NOT NULL DEFAULT '0000-00-00',
  `Task_Details` text NOT NULL DEFAULT 'NA',
  `Challenges` text NOT NULL DEFAULT 'NA',
  `Approved_Date` date NOT NULL DEFAULT '0000-00-00',
  `Status` varchar(255) NOT NULL,
  `Deleted_Date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `Project_Type_id` int(11) NOT NULL,
  `Project_Type_Name` varchar(255) NOT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`Project_Type_id`, `Project_Type_Name`, `College_id`) VALUES
(1, 'Research', 1),
(2, 'Industrial', 1),
(3, 'Industrial', 2),
(4, 'Research', 2),
(5, 'Research', 3),
(6, 'Industrial', 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `college_id` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `college_id`, `createdAt`, `updatedAt`, `version`, `created_at`, `updated_at`) VALUES
(1, 'Leader', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(2, 'Member', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(3, 'Guide', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(4, 'Hod', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(5, 'Director', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(6, 'Management', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', ''),
(7, 'Coordinator', 1, NULL, '0000-00-00 00:00:00', 0, '2021-11-23 19:43:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Status_id` int(11) NOT NULL,
  `Status_Name` varchar(255) NOT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_id`, `Status_Name`, `College_id`) VALUES
(1, 'Lagging', 1),
(2, 'On Time', 1),
(3, 'Leading', 1);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `Support_id` int(11) NOT NULL,
  `Group_id` int(11) NOT NULL,
  `Learner_id` int(11) NOT NULL,
  `Support_Description_id` int(11) NOT NULL,
  `Resolved` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supportreason`
--

CREATE TABLE `supportreason` (
  `Support_Description_id` int(11) NOT NULL,
  `support_description_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `support_reason`
--

CREATE TABLE `support_reason` (
  `Support_Description_id` int(11) NOT NULL,
  `Support_Description_Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `User_id` int(11) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `College_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`User_id`, `User_Name`, `College_id`) VALUES
(1, 'Learner', 1),
(2, 'Instructor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `Person_Id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `Person_Id`, `id`, `created_at`, `role_id`, `updated_at`) VALUES
('2021-10-08 10:36:00', '2021-10-08 10:36:00', 1, 3, 0, '', 0, ''),
('2021-10-08 13:11:28', '2021-10-08 13:11:28', 1, 4, 0, '', 0, ''),
('2021-10-08 13:11:28', '2021-10-08 13:11:28', 1, 5, 0, '', 0, ''),
('2021-10-08 13:11:28', '2021-10-08 13:11:28', 1, 6, 0, '', 0, ''),
('2021-10-08 11:35:55', '2021-10-08 11:35:55', 1, 8, 0, '', 0, ''),
('2021-10-08 11:46:11', '2021-10-08 11:46:11', 1, 9, 0, '', 0, ''),
('2021-10-08 11:46:59', '2021-10-08 11:46:59', 1, 10, 0, '', 0, ''),
('2021-10-10 13:21:14', '2021-10-10 13:21:14', 1, 20, 0, '', 0, ''),
('2021-10-10 13:31:47', '2021-10-10 13:31:47', 1, 21, 0, '', 0, ''),
('2021-10-11 10:53:09', '2021-10-11 10:53:09', 1, 22, 0, '', 0, ''),
('2021-10-12 17:13:52', '2021-10-12 17:13:52', 1, 23, 0, '', 0, ''),
('2021-10-13 08:49:04', '2021-10-13 08:49:04', 1, 25, 0, '', 0, ''),
('2021-10-17 10:33:21', '2021-10-17 10:33:21', 1, 27, 0, '', 0, ''),
('2021-10-17 10:34:26', '2021-10-17 10:34:26', 1, 28, 0, '', 0, ''),
('2021-10-24 04:11:50', '2021-10-24 04:11:50', 1, 30, 0, '', 0, ''),
('2021-10-27 12:06:28', '2021-10-27 12:06:28', 1, 31, 0, '', 0, ''),
('2021-11-02 10:23:59', '2021-11-02 10:23:59', 1, 32, 0, '', 0, ''),
('2021-10-08 12:28:35', '2021-10-08 12:28:35', 3, 1, 0, '', 0, ''),
('2021-10-08 11:34:47', '2021-10-08 11:34:47', 3, 7, 0, '', 0, ''),
('2021-10-12 17:15:38', '2021-10-12 17:15:38', 3, 24, 0, '', 0, ''),
('2021-10-13 08:51:52', '2021-10-13 08:51:52', 3, 26, 0, '', 0, ''),
('2021-10-22 05:52:35', '2021-10-22 05:52:35', 3, 29, 0, '', 0, ''),
('2021-10-08 13:50:57', '2021-10-08 13:50:57', 4, 11, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 12, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 13, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 14, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 15, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 16, 0, '', 0, ''),
('2021-10-09 06:08:14', '2021-10-09 06:08:14', 4, 17, 0, '', 0, ''),
('2021-10-09 06:10:54', '2021-10-09 06:10:54', 5, 18, 0, '', 0, ''),
('2021-10-09 06:12:37', '2021-10-09 06:12:37', 6, 19, 0, '', 0, '');

--
-- Triggers `user_roles`
--
DELIMITER $$
CREATE TRIGGER `updateRolInPerson` AFTER INSERT ON `user_roles` FOR EACH ROW BEGIN
IF NEW.roleId = 3  THEN
UPDATE `persons` SET `roleId` = '3' , `usertype_id` = '2' WHERE `persons`.`Person_id` = NEW.Person_id;
INSERT INTO `instructor` (`Instructor_id`, `Person_id`, `Domain_Pref_1`, `Domain_Pref_2`, `Domain_Pref_3`, `registered`) VALUES (NULL,  NEW.Person_id, '1', '2', '3', '1');
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `week_status`
--

CREATE TABLE `week_status` (
  `week_status_id` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `No_of_tasks` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `week_status`
--

INSERT INTO `week_status` (`week_status_id`, `week`, `No_of_tasks`, `group_id`, `status`, `start_date`, `due_date`) VALUES
(8, 1, 3, 3, 3, '2021-10-11', '2021-10-17'),
(9, 2, 1, 3, 2, '2021-10-18', '2021-10-24'),
(10, 3, 0, 3, 2, '2021-10-25', '2021-10-31'),
(11, 4, 0, 3, 2, '2021-11-01', '2021-11-07'),
(12, 5, 0, 3, 2, '2021-11-08', '2021-11-14'),
(13, 6, 0, 3, 2, '2021-11-15', '2021-11-21'),
(14, 7, 0, 3, 2, '2021-11-22', '2021-11-28'),
(32, 1, 0, 8, 2, '2021-10-13', '2021-10-19'),
(43, 12, 0, 8, 2, '2021-12-29', '2022-01-04'),
(44, 13, 0, 8, 2, '2022-01-05', '2022-01-11'),
(45, 14, 0, 8, 2, '2022-01-12', '2022-01-18'),
(62, 1, 1, 12, 1, '2021-10-12', '2021-10-18'),
(63, 2, 0, 12, 2, '2021-10-19', '2021-10-25'),
(64, 3, 0, 12, 2, '2021-10-26', '2021-11-01'),
(65, 4, 0, 12, 2, '2021-11-02', '2021-11-08'),
(66, 5, 0, 12, 2, '2021-11-09', '2021-11-15'),
(67, 1, 0, 13, 1, '2021-10-13', '2021-10-19'),
(68, 2, 0, 13, 2, '2021-10-20', '2021-10-26'),
(69, 3, 0, 13, 2, '2021-10-27', '2021-11-02'),
(70, 4, 0, 13, 2, '2021-11-03', '2021-11-09'),
(71, 5, 0, 13, 2, '2021-11-10', '2021-11-16'),
(72, 1, 2, 14, 2, '2021-10-19', '2021-10-25'),
(73, 2, 0, 14, 2, '2021-10-26', '2021-11-01'),
(74, 3, 0, 14, 2, '2021-11-02', '2021-11-08'),
(75, 4, 0, 14, 2, '2021-11-09', '2021-11-15'),
(76, 5, 0, 14, 2, '2021-11-16', '2021-11-22'),
(77, 6, 0, 14, 2, '2021-11-23', '2021-11-29'),
(78, 1, 0, 15, 2, '2021-10-24', '2021-10-30'),
(79, 2, 0, 15, 2, '2021-10-31', '2021-11-06'),
(80, 3, 0, 15, 2, '2021-11-07', '2021-11-13'),
(81, 4, 0, 15, 2, '2021-11-14', '2021-11-20'),
(82, 5, 0, 15, 2, '2021-11-21', '2021-11-27'),
(83, 1, 0, 16, 2, '2021-10-22', '2021-10-28'),
(84, 2, 0, 16, 2, '2021-10-29', '2021-11-04'),
(85, 3, 0, 16, 2, '2021-11-05', '2021-11-11'),
(86, 4, 0, 16, 2, '2021-11-12', '2021-11-18'),
(87, 5, 0, 16, 2, '2021-11-19', '2021-11-25'),
(88, 1, 0, 17, 2, '2021-10-22', '2021-10-28'),
(89, 2, 0, 17, 2, '2021-10-29', '2021-11-04'),
(90, 3, 0, 17, 2, '2021-11-05', '2021-11-11'),
(91, 4, 0, 17, 2, '2021-11-12', '2021-11-18'),
(92, 5, 0, 17, 2, '2021-11-19', '2021-11-25'),
(93, 1, 0, 18, 2, '2021-10-22', '2021-10-28'),
(94, 2, 0, 18, 2, '2021-10-29', '2021-11-04'),
(95, 3, 0, 18, 2, '2021-11-05', '2021-11-11'),
(96, 4, 0, 18, 2, '2021-11-12', '2021-11-18'),
(97, 5, 0, 18, 2, '2021-11-19', '2021-11-25'),
(98, 1, 0, 20, 2, '2021-10-22', '2021-10-28'),
(99, 2, 0, 20, 2, '2021-10-29', '2021-11-04'),
(100, 3, 0, 20, 2, '2021-11-05', '2021-11-11'),
(101, 4, 0, 20, 2, '2021-11-12', '2021-11-18'),
(102, 5, 0, 20, 2, '2021-11-19', '2021-11-25'),
(103, 1, 0, 21, 2, '2021-10-22', '2021-10-28'),
(104, 2, 0, 21, 2, '2021-10-29', '2021-11-04'),
(105, 3, 0, 21, 2, '2021-11-05', '2021-11-11'),
(106, 4, 0, 21, 2, '2021-11-12', '2021-11-18'),
(107, 5, 0, 21, 2, '2021-11-19', '2021-11-25'),
(108, 6, 0, 21, 2, '2021-11-26', '2021-12-02'),
(109, 7, 0, 21, 2, '2021-12-03', '2021-12-09'),
(110, 8, 0, 21, 2, '2021-12-10', '2021-12-16'),
(111, 9, 0, 21, 2, '2021-12-17', '2021-12-23'),
(112, 10, 0, 21, 2, '2021-12-24', '2021-12-30'),
(113, 11, 0, 21, 2, '2021-12-31', '2022-01-06'),
(114, 12, 0, 21, 2, '2022-01-07', '2022-01-13'),
(115, 13, 0, 21, 2, '2022-01-14', '2022-01-20'),
(116, 14, 0, 21, 2, '2022-01-21', '2022-01-27'),
(117, 15, 0, 21, 2, '2022-01-28', '2022-02-03'),
(128, 1, 0, 25, 2, '2021-10-23', '2021-10-29'),
(129, 2, 0, 25, 2, '2021-10-30', '2021-11-05'),
(130, 3, 0, 25, 2, '2021-11-06', '2021-11-12'),
(131, 4, 0, 25, 2, '2021-11-13', '2021-11-19'),
(132, 5, 0, 25, 2, '2021-11-20', '2021-11-26'),
(133, 1, 0, 27, 2, '2021-10-23', '2021-10-29'),
(134, 2, 0, 27, 2, '2021-10-30', '2021-11-05'),
(135, 3, 0, 27, 2, '2021-11-06', '2021-11-12'),
(136, 4, 0, 27, 2, '2021-11-13', '2021-11-19'),
(137, 1, 0, 28, 2, '2021-10-23', '2021-10-29'),
(138, 2, 0, 28, 2, '2021-10-30', '2021-11-05'),
(139, 3, 0, 28, 2, '2021-11-06', '2021-11-12'),
(140, 4, 0, 28, 2, '2021-11-13', '2021-11-19'),
(141, 5, 0, 28, 2, '2021-11-20', '2021-11-26'),
(142, 1, 0, 29, 2, '2021-10-23', '2021-10-29'),
(143, 2, 0, 29, 2, '2021-10-30', '2021-11-05'),
(144, 3, 0, 29, 2, '2021-11-06', '2021-11-12'),
(145, 4, 0, 29, 2, '2021-11-13', '2021-11-19'),
(146, 5, 0, 29, 2, '2021-11-20', '2021-11-26'),
(147, 1, 0, 30, 2, '2021-10-23', '2021-10-29'),
(148, 2, 0, 30, 2, '2021-10-30', '2021-11-05'),
(149, 3, 0, 30, 2, '2021-11-06', '2021-11-12'),
(150, 4, 0, 30, 2, '2021-11-13', '2021-11-19'),
(151, 5, 0, 30, 2, '2021-11-20', '2021-11-26'),
(152, 1, 0, 31, 2, '2021-10-23', '2021-10-29'),
(153, 2, 0, 31, 2, '2021-10-30', '2021-11-05'),
(154, 3, 0, 31, 2, '2021-11-06', '2021-11-12'),
(155, 4, 0, 31, 2, '2021-11-13', '2021-11-19'),
(156, 5, 0, 31, 2, '2021-11-20', '2021-11-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`College_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_id`),
  ADD KEY `Department_fk0` (`College_id`);

--
-- Indexes for table `faculty_access`
--
ALTER TABLE `faculty_access`
  ADD UNIQUE KEY `access_code` (`access_code`);

--
-- Indexes for table `ftrmaster`
--
ALTER TABLE `ftrmaster`
  ADD PRIMARY KEY (`ftr_master_id`),
  ADD KEY `collage_id` (`College_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `ftr_project_group`
--
ALTER TABLE `ftr_project_group`
  ADD PRIMARY KEY (`ftr_projectgroup_id`),
  ADD KEY `ftr_master_id` (`ftr_master_id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `ftr_questions`
--
ALTER TABLE `ftr_questions`
  ADD PRIMARY KEY (`ftr_questions_id`),
  ADD KEY `ftr_master_id` (`ftr_master_id`);

--
-- Indexes for table `ftr_question_ftr_group`
--
ALTER TABLE `ftr_question_ftr_group`
  ADD PRIMARY KEY (`ftr_ques_gro_id`),
  ADD KEY `ftr_master_id` (`ftr_master_id`),
  ADD KEY `ftr_project_group_id` (`ftr_project_group_id`),
  ADD KEY `ftr_question_id` (`ftr_question_id`);

--
-- Indexes for table `group_codes`
--
ALTER TABLE `group_codes`
  ADD PRIMARY KEY (`group_code`);

--
-- Indexes for table `industryproject`
--
ALTER TABLE `industryproject`
  ADD PRIMARY KEY (`industry_project_id`),
  ADD KEY `Company_id` (`Company_id`);

--
-- Indexes for table `industryproject_department`
--
ALTER TABLE `industryproject_department`
  ADD PRIMARY KEY (`industryproject_department_id`),
  ADD KEY `industryproject_id` (`industryproject_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `industryproject_domain`
--
ALTER TABLE `industryproject_domain`
  ADD PRIMARY KEY (`industryproject_domain_id`),
  ADD KEY `industryproject_id` (`industryproject_id`),
  ADD KEY `Domain_id` (`Domain_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`Instructor_id`),
  ADD UNIQUE KEY `Person_id` (`Person_id`),
  ADD KEY `Instructor_fk0` (`Person_id`),
  ADD KEY `Instructor_fk2` (`Domain_Pref_1`),
  ADD KEY `Instructor_fk3` (`Domain_Pref_2`),
  ADD KEY `Instructor_fk4` (`Domain_Pref_3`);

--
-- Indexes for table `learner`
--
ALTER TABLE `learner`
  ADD PRIMARY KEY (`Learner_id`),
  ADD KEY `Learner_fk0` (`Module_id`),
  ADD KEY `Learner_fk1` (`Person_id`);

--
-- Indexes for table `learner_project_reg`
--
ALTER TABLE `learner_project_reg`
  ADD PRIMARY KEY (`Learner_Reg_id`),
  ADD KEY `Learner_Project_Reg_fk4` (`Learner_id`),
  ADD KEY `Learner_Project_Reg_fk0` (`Group_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`Module_id`),
  ADD KEY `Module_fk0` (`College_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`Person_id`),
  ADD KEY `Person_fk0` (`department`),
  ADD KEY `Person_fk1` (`college`),
  ADD KEY `Role_id` (`roleId`),
  ADD KEY `usertype_id` (`usertype_id`);

--
-- Indexes for table `projectactivitylog`
--
ALTER TABLE `projectactivitylog`
  ADD PRIMARY KEY (`Activity_id`);

--
-- Indexes for table `projectgroup`
--
ALTER TABLE `projectgroup`
  ADD PRIMARY KEY (`Group_id`);

--
-- Indexes for table `projecttask`
--
ALTER TABLE `projecttask`
  ADD PRIMARY KEY (`Task_id`);

--
-- Indexes for table `projecttasklogs`
--
ALTER TABLE `projecttasklogs`
  ADD PRIMARY KEY (`Project_Task_id`);

--
-- Indexes for table `project_activity_log`
--
ALTER TABLE `project_activity_log`
  ADD PRIMARY KEY (`Activity_id`),
  ADD KEY `Project_Activity_log_fk0` (`Person_id`);

--
-- Indexes for table `project_domain`
--
ALTER TABLE `project_domain`
  ADD PRIMARY KEY (`Domain_id`),
  ADD KEY `Project_Domain_fk0` (`College_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `project_group`
--
ALTER TABLE `project_group`
  ADD PRIMARY KEY (`Group_id`),
  ADD UNIQUE KEY `Group_Name` (`Group_Name`),
  ADD KEY `Project_Group_fk2` (`Instructor_id_industry`),
  ADD KEY `Project_Group_fk3` (`Department_id`),
  ADD KEY `Project_Group_fk9` (`Status_id`),
  ADD KEY `Project_Group_fk10` (`Project_Type_id`),
  ADD KEY `Project_Group_fk11` (`industry_project_id`),
  ADD KEY `College_id` (`College_id`),
  ADD KEY `Domain_Pref_1` (`Domain_Pref_1`),
  ADD KEY `Domain_Pref_2` (`Domain_Pref_2`),
  ADD KEY `Domain_Pref_3` (`Domain_Pref_3`),
  ADD KEY `final_domain` (`final_domain`),
  ADD KEY `Instructor_id1` (`Instructor_id1`),
  ADD KEY `Instructor_id2` (`Instructor_id2`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`Task_id`),
  ADD KEY `Project_Task_fk0` (`Group_id`);

--
-- Indexes for table `project_task_logs`
--
ALTER TABLE `project_task_logs`
  ADD PRIMARY KEY (`Project_Task_id`),
  ADD KEY `Project_Task_Logs_fk0` (`Task_id`),
  ADD KEY `Project_Task_Logs_fk1` (`Group_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`Project_Type_id`),
  ADD KEY `Project_Type_fk0` (`College_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Status_id`),
  ADD KEY `Status_fk0` (`College_id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`Support_id`),
  ADD KEY `Support_fk0` (`Group_id`),
  ADD KEY `Support_fk1` (`Learner_id`),
  ADD KEY `Support_fk2` (`Support_Description_id`);

--
-- Indexes for table `supportreason`
--
ALTER TABLE `supportreason`
  ADD PRIMARY KEY (`Support_Description_id`);

--
-- Indexes for table `support_reason`
--
ALTER TABLE `support_reason`
  ADD PRIMARY KEY (`Support_Description_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `College_id` (`College_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`Person_Id`) USING BTREE,
  ADD KEY `Person_Id` (`Person_Id`);

--
-- Indexes for table `week_status`
--
ALTER TABLE `week_status`
  ADD PRIMARY KEY (`week_status_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `College_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ftrmaster`
--
ALTER TABLE `ftrmaster`
  MODIFY `ftr_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ftr_project_group`
--
ALTER TABLE `ftr_project_group`
  MODIFY `ftr_projectgroup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ftr_questions`
--
ALTER TABLE `ftr_questions`
  MODIFY `ftr_questions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ftr_question_ftr_group`
--
ALTER TABLE `ftr_question_ftr_group`
  MODIFY `ftr_ques_gro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `industryproject`
--
ALTER TABLE `industryproject`
  MODIFY `industry_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `industryproject_department`
--
ALTER TABLE `industryproject_department`
  MODIFY `industryproject_department_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industryproject_domain`
--
ALTER TABLE `industryproject_domain`
  MODIFY `industryproject_domain_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `Instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learner`
--
ALTER TABLE `learner`
  MODIFY `Learner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `learner_project_reg`
--
ALTER TABLE `learner_project_reg`
  MODIFY `Learner_Reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `Module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `Person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `projectactivitylog`
--
ALTER TABLE `projectactivitylog`
  MODIFY `Activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectgroup`
--
ALTER TABLE `projectgroup`
  MODIFY `Group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projecttask`
--
ALTER TABLE `projecttask`
  MODIFY `Task_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projecttasklogs`
--
ALTER TABLE `projecttasklogs`
  MODIFY `Project_Task_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_domain`
--
ALTER TABLE `project_domain`
  MODIFY `Domain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `project_group`
--
ALTER TABLE `project_group`
  MODIFY `Group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `project_task`
--
ALTER TABLE `project_task`
  MODIFY `Task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `project_task_logs`
--
ALTER TABLE `project_task_logs`
  MODIFY `Project_Task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `Project_Type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `Status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `Support_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supportreason`
--
ALTER TABLE `supportreason`
  MODIFY `Support_Description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_reason`
--
ALTER TABLE `support_reason`
  MODIFY `Support_Description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `week_status`
--
ALTER TABLE `week_status`
  MODIFY `week_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `Department_fk0` FOREIGN KEY (`College_id`) REFERENCES `college` (`College_id`);

--
-- Constraints for table `ftrmaster`
--
ALTER TABLE `ftrmaster`
  ADD CONSTRAINT `ftrmaster_ibfk_1` FOREIGN KEY (`College_id`) REFERENCES `college` (`College_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ftrmaster_ibfk_2` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ftr_questions`
--
ALTER TABLE `ftr_questions`
  ADD CONSTRAINT `ftr_questions_ibfk_1` FOREIGN KEY (`ftr_master_id`) REFERENCES `ftrmaster` (`ftr_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `industryproject_department`
--
ALTER TABLE `industryproject_department`
  ADD CONSTRAINT `industryproject_department_ibfk_1` FOREIGN KEY (`industryproject_id`) REFERENCES `industryproject` (`industry_project_id`),
  ADD CONSTRAINT `industryproject_department_ibfk_2` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`);

--
-- Constraints for table `project_domain`
--
ALTER TABLE `project_domain`
  ADD CONSTRAINT `project_domain_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_domain_ibfk_2` FOREIGN KEY (`College_id`) REFERENCES `college` (`College_id`);

--
-- Constraints for table `project_group`
--
ALTER TABLE `project_group`
  ADD CONSTRAINT `project_group_ibfk_1` FOREIGN KEY (`College_id`) REFERENCES `college` (`College_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_10` FOREIGN KEY (`final_domain`) REFERENCES `project_domain` (`Domain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_11` FOREIGN KEY (`Project_Type_id`) REFERENCES `project_type` (`Project_Type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_2` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_3` FOREIGN KEY (`Domain_Pref_1`) REFERENCES `project_domain` (`Domain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_4` FOREIGN KEY (`Domain_Pref_2`) REFERENCES `project_domain` (`Domain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_5` FOREIGN KEY (`Domain_Pref_3`) REFERENCES `project_domain` (`Domain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_6` FOREIGN KEY (`Instructor_id1`) REFERENCES `instructor` (`Instructor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_7` FOREIGN KEY (`Instructor_id2`) REFERENCES `instructor` (`Instructor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_8` FOREIGN KEY (`industry_project_id`) REFERENCES `industryproject` (`industry_project_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `project_group_ibfk_9` FOREIGN KEY (`Status_id`) REFERENCES `status` (`Status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
