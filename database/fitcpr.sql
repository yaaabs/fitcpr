-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 09, 2025 at 10:16 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u508240950_fitcpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `video_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(14, '2024120009', 2, '2024', 'TransitEase: An Online Ticket Management System with Mobile Application for LRT-1', '&lt;p dir&equals;&quot;ltr&quot; style&equals;&quot;line-height&colon;1&period;2&semi;text-align&colon; justify&semi;margin-top&colon;0pt&semi;margin-bottom&colon;8pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon;12pt&semi;font-family&colon;&apos;Times New Roman&apos;&comma;serif&semi;color&colon;&num;000000&semi;background-color&colon;transparent&semi;font-weight&colon;400&semi;font-style&colon;normal&semi;font-variant&colon;normal&semi;text-decoration&colon;none&semi;vertical-align&colon;baseline&semi;white-space&colon;pre&semi;white-space&colon;pre-wrap&semi;&quot;&gt;This study focuses on developing a web and mobile application for online ticketing&comma; monitoring&comma; and management system called TransitEase&period; It is designed to innovate the commuting experience for users and optimize business operations for LRT-1&period; &lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon; 12pt&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&equals;&quot;&quot; color&colon;&equals;&quot;&quot; rgb&lpar;0&comma;&equals;&quot;&quot; 0&comma;&equals;&quot;&quot; 0&rpar;&semi;&equals;&quot;&quot; background-color&colon;&equals;&quot;&quot; transparent&semi;&equals;&quot;&quot; font-style&colon;&equals;&quot;&quot; normal&semi;&equals;&quot;&quot; font-variant&colon;&equals;&quot;&quot; text-decoration&colon;&equals;&quot;&quot; none&semi;&equals;&quot;&quot; vertical-align&colon;&equals;&quot;&quot; baseline&semi;&equals;&quot;&quot; white-space&colon;&equals;&quot;&quot; pre-wrap&semi;&quot;&equals;&quot;&quot;&gt;TransitEase&lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon;12pt&semi;font-family&colon;&apos;Times New Roman&apos;&comma;serif&semi;color&colon;&num;000000&semi;background-color&colon;transparent&semi;font-weight&colon;400&semi;font-style&colon;normal&semi;font-variant&colon;normal&semi;text-decoration&colon;none&semi;vertical-align&colon;baseline&semi;white-space&colon;pre&semi;white-space&colon;pre-wrap&semi;&quot;&gt; integrates NFC payment to help lessen crowd congestion&period; The added feature of the system also incorporates monitor the crowd status in the station&period;&lt;&sol;span&gt;&lt;&sol;p&gt;&lt;p&gt;&lt;span id&equals;&quot;docs-internal-guid-4f21ff49-7fff-c6ca-f4d7-b52122ff8159&quot;&gt;&lt;&sol;span&gt;&lt;&sol;p&gt;&lt;p dir&equals;&quot;ltr&quot; style&equals;&quot;line-height&colon;1&period;2&semi;text-align&colon; justify&semi;margin-top&colon;0pt&semi;margin-bottom&colon;8pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon;12pt&semi;font-family&colon;&apos;Times New Roman&apos;&comma;serif&semi;color&colon;&num;000000&semi;background-color&colon;transparent&semi;font-weight&colon;400&semi;font-style&colon;italic&semi;font-variant&colon;normal&semi;text-decoration&colon;none&semi;vertical-align&colon;baseline&semi;white-space&colon;pre&semi;white-space&colon;pre-wrap&semi;&quot;&gt;Keywords&colon; TransitEase&comma; NFC payment&comma; Monitor crowd status&lt;&sol;span&gt;&lt;&sol;p&gt;', '&lt;ul&gt;&lt;li style&equals;&quot;line-height&colon; 1&period;295&semi; margin-top&colon; 0pt&semi; margin-bottom&colon; 0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi; color&colon; rgb&lpar;0&comma; 0&comma; 0&rpar;&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&quot;&equals;&quot;&quot;&gt;Andreia Carena&lt;&sol;span&gt;&lt;&sol;li&gt;&lt;li style&equals;&quot;line-height&colon; 1&period;295&semi; margin-top&colon; 0pt&semi; margin-bottom&colon; 0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi; color&colon; rgb&lpar;0&comma; 0&comma; 0&rpar;&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&quot;&equals;&quot;&quot;&gt;Reignald Cheng&lt;&sol;span&gt;&lt;&sol;li&gt;&lt;li style&equals;&quot;line-height&colon; 1&period;295&semi; margin-top&colon; 0pt&semi; margin-bottom&colon; 0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi; color&colon; rgb&lpar;0&comma; 0&comma; 0&rpar;&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&quot;&equals;&quot;&quot;&gt;Rafael Roxas&lt;&sol;span&gt;&lt;&sol;li&gt;&lt;li style&equals;&quot;line-height&colon; 1&period;295&semi; margin-top&colon; 0pt&semi; margin-bottom&colon; 0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi; color&colon; rgb&lpar;0&comma; 0&comma; 0&rpar;&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&quot;&equals;&quot;&quot;&gt;Theo Sosa&lt;&sol;span&gt;&lt;&sol;li&gt;&lt;li style&equals;&quot;line-height&colon; 1&period;295&semi; margin-top&colon; 0pt&semi; margin-bottom&colon; 0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi; color&colon; rgb&lpar;0&comma; 0&comma; 0&rpar;&semi; font-family&colon; &quot; &semi;times&equals;&quot;&quot; new&equals;&quot;&quot; roman&quot;&semi;&comma;&equals;&quot;&quot; serif&semi;&quot;&equals;&quot;&quot;&gt; Brian Yabut&lt;&sol;span&gt;&lt;&sol;li&gt;&lt;&sol;ul&gt;&lt;div&gt;&lt;br&gt;&lt;&sol;div&gt;', 'uploads/banners/archive-14.png?v=1733170729', 'uploads/pdf/archive-14.pdf?v=1733170729', NULL, 1, 4, '2024-12-03 04:03:17', '2024-12-03 04:18:49'),
(15, '2024120001', 2, '2024', 'Dispatchify: An E - Trike Dispatching and Inventory Management System with Real - Time Tracking using GPS', '&lt;p&gt;&lt;span style&equals;&quot;color&colon; rgb&lpar;36&comma; 36&comma; 36&rpar;&semi; font-family&colon; &quot;&semi;Aptos Narrow&quot;&semi;&comma; Calibri&comma; &quot;&semi;sans-serif&quot;&semi;&comma; &quot;&semi;Mongolian Baiti&quot;&semi;&comma; &quot;&semi;Microsoft Yi Baiti&quot;&semi;&comma; &quot;&semi;Javanese Text&quot;&semi;&comma; &quot;&semi;Yu Gothic&quot;&semi;&semi; font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi;&quot;&gt;Dispatchify&colon; An E - Trike Dispatching and Inventory Management System with Real - Time Tracking using GPS&lt;&sol;span&gt;&lt;&sol;p&gt;', '&lt;p&gt;Adrian and Haenry&lt;&sol;p&gt;', 'uploads/banners/archive-15.png?v=1733174402', 'uploads/pdf/archive-15.pdf?v=1733174402', NULL, 1, 5, '2024-12-03 05:18:35', '2024-12-03 05:30:52'),
(16, '2024120002', 2, '2024', 'VIAMM: An Assistive Technology Management System for Visually Impaired with Mobile Money Recignition ', '&lt;p&gt;&lt;span style&equals;&quot;color&colon; rgb&lpar;36&comma; 36&comma; 36&rpar;&semi; font-family&colon; &amp;quot&semi;Aptos Narrow&amp;quot&semi;&comma; Calibri&comma; &amp;quot&semi;sans-serif&amp;quot&semi;&comma; &amp;quot&semi;Mongolian Baiti&amp;quot&semi;&comma; &amp;quot&semi;Microsoft Yi Baiti&amp;quot&semi;&comma; &amp;quot&semi;Javanese Text&amp;quot&semi;&comma; &amp;quot&semi;Yu Gothic&amp;quot&semi;&semi; font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi;&quot;&gt;VIAMM&colon; An Assistive Technology Management System for Visually Impaired with Mobile Money Recignition &lt;&sol;span&gt;&lt;&sol;p&gt;', '&lt;p&gt;Shaun Mendes&lt;&sol;p&gt;', 'uploads/banners/archive-16.png?v=1733174753', 'uploads/pdf/archive-16.pdf?v=1733174753', NULL, 0, 7, '2024-12-03 05:25:53', '2024-12-03 18:14:34'),
(17, '2024120003', 1, '2024', 'BuildLink: A Construction Management System with Construction Resource Analysis Demand Forecasting using Simple Moving Averages for Dream Riser Builders Inc.', '&lt;p&gt;&lt;span style&equals;&quot;color&colon; rgb&lpar;36&comma; 36&comma; 36&rpar;&semi; font-family&colon; &amp;quot&semi;Aptos Narrow&amp;quot&semi;&comma; Calibri&comma; &amp;quot&semi;sans-serif&amp;quot&semi;&comma; &amp;quot&semi;Mongolian Baiti&amp;quot&semi;&comma; &amp;quot&semi;Microsoft Yi Baiti&amp;quot&semi;&comma; &amp;quot&semi;Javanese Text&amp;quot&semi;&comma; &amp;quot&semi;Yu Gothic&amp;quot&semi;&semi; font-size&colon; 14&period;6667px&semi; white-space-collapse&colon; preserve&semi;&quot;&gt;BuildLink&colon; A Construction Management System with Construction Resource Analysis Demand Forecasting using Simple Moving Averages for Dream Riser Builders Inc&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '&lt;p&gt;Gabby and Friends&lt;&sol;p&gt;', 'uploads/banners/archive-17.png?v=1733174958', 'uploads/pdf/archive-17.pdf?v=1733174958', NULL, 1, NULL, '2024-12-03 05:29:17', '2024-12-03 05:30:56'),
(19, '2024120005', 2, '2024', 'FocusEd: Enhanced Student Performance and Attendance Monitoring Using RFID for Basic Education Department', '&lt;p&gt;The FocusEd is a straightforward system with enhanced attendance monitoring&nbsp;&semi;&lt;span style&equals;&quot;font-size&colon; 1rem&semi;&quot;&gt;capabilities&comma; leveraging technological convergence to revolutionize the Basic Education&nbsp;&semi;&lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon; 1rem&semi;&quot;&gt;Department&period; With the integration of Radio-Frequency Identification &lpar;RFID&rpar;&comma; this system&lt;&sol;span&gt;&lt;&sol;p&gt;&lt;p&gt;allows for accurate recording of student presence on school property and real-time&lt;&sol;p&gt;&lt;p&gt;attendance tracking&period; It also uses Short Message Service &lpar;SMS&rpar; technology to automate&lt;&sol;p&gt;&lt;p&gt;announcements and notifications for better information sharing and to facilitate effective&lt;&sol;p&gt;&lt;p&gt;communication with parents or guardians&period;&lt;&sol;p&gt;&lt;p&gt;Moreover&comma; the FocusEd has an extensive academic record repository that makes grading&lt;&sol;p&gt;&lt;p&gt;pupils easier and fosters accessibility and openness for parents and students&period; It also has a&lt;&sol;p&gt;&lt;p&gt;feature-rich module for documenting infractions by students&comma; giving administrators&lt;&sol;p&gt;&lt;p&gt;powerful instruments for tracking behavioral patterns and handling disciplinary actions&period;&lt;&sol;p&gt;&lt;p&gt;This project includes novel applications&comma; such as a web-based platform and a mobile app&comma;&lt;&sol;p&gt;&lt;p&gt;that use RFID technology and cloud computing to enable smooth attendance certification&period;&lt;&sol;p&gt;&lt;p&gt;Other than that&comma; it also has a gamification to lessen the stress of the students while they are&lt;&sol;p&gt;&lt;p&gt;learning simultaneously&period; FocusEd has an alignment with the Sustainable Development&lt;&sol;p&gt;&lt;p&gt;Goals&comma; namely Quality Education &lpar;SDG 4&rpar;&period;&lt;&sol;p&gt;', '&lt;p&gt;Encio&comma;&lt;span style&equals;&quot;font-size&colon; 1rem&semi;&quot;&gt;San Gabriel&comma;&lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon; 1rem&semi;&quot;&gt;Villas&comma; and&lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon; 1rem&semi;&quot;&gt;Shiono&lt;&sol;span&gt;&lt;&sol;p&gt;', 'uploads/banners/archive-19.png?v=1733217226', 'uploads/pdf/archive-19.pdf?v=1733217226', NULL, 0, 10, '2024-12-03 17:13:46', '2024-12-03 20:33:54'),
(33, '2024120010', 5, '2024', 'LUNGGATI: A Filipino Musical Hybrid Animation Short Series in Exploring the Experiences of Overseas Filipino Workers and their Children with Infographic  Website', '&lt;p&gt;Abstract&mdash;The Overseas Filipino Workers &lpar;OFWs&rpar; have been&lt;&sol;p&gt;&lt;p&gt;facing challenges towards their work and especially towards their&lt;&sol;p&gt;&lt;p&gt;children&period; However&comma; from a child&apos;s perspective&comma; having an OFW&lt;&sol;p&gt;&lt;p&gt;parent impacts their upbringing&period; The study aims to explore the&lt;&sol;p&gt;&lt;p&gt;challenges of OFW parents and their children by producing a&lt;&sol;p&gt;&lt;p&gt;Filipino Musical Hybrid Animation with a Live-action Short&lt;&sol;p&gt;&lt;p&gt;Series&period; To validate the study&comma; a mixed-methods technique was used&lt;&sol;p&gt;&lt;p&gt;to collect data and information&period; The researchers interviewed&lt;&sol;p&gt;&lt;p&gt;professionals who have insights about OFW parents and OFW&lt;&sol;p&gt;&lt;p&gt;children and surveyed OFW parents &lpar;25&ndash;45 years old&rpar; and OFW&lt;&sol;p&gt;&lt;p&gt;children &lpar;6-19 years old&rpar;&period; The result showed that parents and&lt;&sol;p&gt;&lt;p&gt;children have different challenges with their lifestyle and with&lt;&sol;p&gt;&lt;p&gt;their relationship&period; Also&comma; the researchers received a positive&lt;&sol;p&gt;&lt;p&gt;response regarding the project to help them acknowledge and&lt;&sol;p&gt;&lt;p&gt;understand it better&period;&lt;&sol;p&gt;', '&lt;p&gt;Adagio&comma; Chester Ian M&period;&comma;&amp;nbsp&semi;Go&comma; Ashely Nicole L&period;&comma; Latombo&comma; Lawrence M&period;&comma;&amp;nbsp&semi;Sucayan&comma; Cyril D&period;&comma; &amp;amp&semi;&amp;nbsp&semi;Chongco&comma; Josriel M&period;&lt;&sol;p&gt;', 'uploads/banners/archive-33.png?v=1733246788', 'uploads/pdf/archive-33.pdf?v=1733246788', NULL, 1, 16, '2024-12-03 17:26:27', '2024-12-03 18:13:13'),
(36, '2024120006', 2, '2024', 'FitQuest: Applying Gamification in Fitness Through Motion Tracking  Technology', '&lt;p&gt;FitQuest&colon; Applying Gamification in Fitness Through Motion Tracking \r&NewLine;\r&NewLine;\r&NewLine;\r&NewLine;Technology&lt;&sol;p&gt;', '&lt;p&gt;Aquino&comma; Ecubin&comma; Guittap&comma; Gustilo&comma; and Ragusta&lt;&sol;p&gt;', 'uploads/banners/archive-36.png?v=1733250405', 'uploads/pdf/archive-36.pdf?v=1733250405', NULL, 1, 17, '2024-12-03 18:26:44', '2024-12-03 18:43:56'),
(37, '2024120007', 1, '2024', 'InclusiveConnect: A Web-based Management System for Persons with Disabilities with Smart Eligibility Analysis Using the AHP Algorithm for San Juan City, Batangas', '&lt;p&gt;InclusiveConnect&colon; A Web-based Management System for Persons with Disabilities with Smart Eligibility Analysis Using the AHP Algorithm for San Juan City&comma; Batangas&lt;&sol;p&gt;', '&lt;p&gt;Capili&comma; Carabio&comma; Tuba&comma; Lagnada&comma; and Mabini&lt;&sol;p&gt;', 'uploads/banners/archive-37.png?v=1733251265', 'uploads/pdf/archive-37.pdf?v=1733251265', NULL, 0, 18, '2024-12-03 18:41:04', '2024-12-03 20:26:45'),
(38, '2024120008', 5, '2024', 'Lason Learned: An Interactive Mockumentary and Digital Campaign Exploring the Prevalent Toxic Traits Ingrained to the Filipino Culture', '&lt;p&gt;&lt;span id&equals;&quot;docs-internal-guid-0c181c69-7fff-f9b8-4a99-33081f2302b5&quot;&gt;&lt;&sol;span&gt;&lt;&sol;p&gt;&lt;p dir&equals;&quot;ltr&quot; style&equals;&quot;line-height&colon;1&period;2&semi;text-align&colon; center&semi;margin-top&colon;0pt&semi;margin-bottom&colon;0pt&semi;&quot;&gt;&lt;span style&equals;&quot;font-size&colon;11pt&semi;font-family&colon;&apos;Times New Roman&apos;&comma;serif&semi;color&colon;&num;000000&semi;background-color&colon;transparent&semi;font-weight&colon;700&semi;font-style&colon;normal&semi;font-variant&colon;normal&semi;text-decoration&colon;none&semi;vertical-align&colon;baseline&semi;white-space&colon;pre&semi;white-space&colon;pre-wrap&semi;&quot;&gt;ABSTRACT&colon;&lt;&sol;span&gt;&lt;span style&equals;&quot;font-size&colon;11pt&semi;font-family&colon;&apos;Times New Roman&apos;&comma;serif&semi;color&colon;&num;000000&semi;background-color&colon;transparent&semi;font-weight&colon;400&semi;font-style&colon;normal&semi;font-variant&colon;normal&semi;text-decoration&colon;none&semi;vertical-align&colon;baseline&semi;white-space&colon;pre&semi;white-space&colon;pre-wrap&semi;&quot;&gt; This paper discusses the prevailing issue of toxic traits among Filipinos being ingrained into Filipino culture&period; The project aims to enlighten the audience on these toxic traits to influence and advocate for a change of behavior&period; The interactive mockumentary&comma; titled Lason Learned&comma; presents a narrative of the toxic traits commonly experienced by Filipinos and navigates the storyline to recognize the possible consequences of acting on toxic traits&period; Additionally&comma; the digital campaign consists of short-form video content showcasing the shared experiences of toxic traits among Filipinos and utilizes humor and relatability to garner attention and promote behavioral change&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '&lt;p&gt;Niala&comma; Sumali&comma; Qui&ntilde;ones&comma; Tabernilla&comma; and Tiongson&lt;&sol;p&gt;', 'uploads/banners/archive-38.png?v=1733257445', 'uploads/pdf/archive-38.pdf?v=1733257445', NULL, 1, 8, '2024-12-03 20:24:05', '2024-12-03 20:24:41'),
(39, '2024120004', 2, '2024', 'project 1', '&lt;p&gt;this is my project&lt;&sol;p&gt;', '&lt;p&gt;Gustilo&lt;&sol;p&gt;', 'uploads/banners/archive-39.png?v=1733302649', 'uploads/pdf/archive-39.pdf?v=1733302649', NULL, 1, 20, '2024-12-04 08:57:29', '2024-12-04 08:58:49'),
(42, '2024120013', 5, '2024', 'Lason Learned: An Interactive Mockumentary and Digital Campaign Exploring the Prevalent Toxic Traits Ingrained to the Filipino Culture', '&lt;p&gt;ABSTRACT&colon; This paper discusses the prevailing issue of toxic traits among Filipinos being\r&NewLine;ingrained into Filipino culture&period; The project aims to enlighten the audience on these toxic traits to\r&NewLine;influence and advocate for a change of behavior&period; The interactive mockumentary&comma; titled Lason\r&NewLine;Learned&comma; presents a narrative of the toxic traits commonly experienced by Filipinos and navigates\r&NewLine;the storyline to recognize the possible consequences of acting on toxic traits&period; Additionally&comma; the\r&NewLine;digital campaign consists of short-form video content showcasing the shared experiences of toxic\r&NewLine;traits among Filipinos and utilizes humor and relatability to garner attention and promote\r&NewLine;behavioral change&period;&lt;&sol;p&gt;', '&lt;p&gt;Tiongson&comma; Jerica Mae&lt;&sol;p&gt;', 'uploads/banners/archive-42.png?v=1733493229', 'uploads/pdf/archive-42.pdf?v=1733493229', NULL, 0, 8, '2024-12-06 13:53:48', '2024-12-06 13:53:49'),
(45, '2024120016', 5, '2024', 'Lason Learned: An Interactive Mockumentary and Digital Campaign Exploring the Prevalent Toxic Traits Ingrained to the Filipino Culture', '&lt;p&gt;ABSTRACT&colon; This paper discusses the prevailing issue of toxic traits among Filipinos being\r&NewLine;\r&NewLine;ingrained into Filipino culture&period; The project aims to enlighten the audience on these toxic traits to\r&NewLine;\r&NewLine;influence and advocate for a change of behavior&period; The interactive mockumentary&comma; titled Lason\r&NewLine;\r&NewLine;Learned&comma; presents a narrative of the toxic traits commonly experienced by Filipinos and navigates\r&NewLine;\r&NewLine;the storyline to recognize the possible consequences of acting on toxic traits&period; Additionally&comma; the\r&NewLine;\r&NewLine;digital campaign consists of short-form video content showcasing the shared experiences of toxic\r&NewLine;\r&NewLine;traits among Filipinos and utilizes humor and relatability to garner attention and promote\r&NewLine;\r&NewLine;behavioral change&lt;&sol;p&gt;', '&lt;p&gt;Tiongson&comma; Jerica Mae&nbsp;&semi;&lt;&sol;p&gt;', 'uploads/banners/archive-45.png?v=1733494438', 'uploads/pdf/archive-45.pdf?v=1733494438', 'uploads/videos/archive-45.mp4?v=1733494537', 1, 8, '2024-12-06 14:13:58', '2024-12-06 14:15:37'),
(46, '2024120011', 5, '2024', 'Bobot Maglilibot: A Hybrid Animated Film with Digital Campaign to Bolster Manila City Tourism for the Department of Tourism, Culture, and Arts of Manila', '&lt;p&gt;Abstract&mdash;Manila City is one of the most popular cities in the&lt;&sol;p&gt;&lt;p&gt;Philippines&comma; having a vast tourist destination&comma; including the eight&lt;&sol;p&gt;&lt;p&gt;&lpar;8&rpar; tourism hubs of Manila City&comma; which details a comprehensive&lt;&sol;p&gt;&lt;p&gt;list of major attractions and activities&period; However&comma; preliminary data&lt;&sol;p&gt;&lt;p&gt;gathering results&comma; including interviews from the Department of&lt;&sol;p&gt;&lt;p&gt;Tourism&comma; Culture and Arts of Manila &lpar;DTCAM&rpar; and pre-survey&lt;&sol;p&gt;&lt;p&gt;assessment&comma; reveal that there is an observed number of youth who&lt;&sol;p&gt;&lt;p&gt;have lack of awareness about the major attractions and activities&lt;&sol;p&gt;&lt;p&gt;available in the eight &lpar;8&rpar; tourism hubs of Manila&period; With this&comma; this&lt;&sol;p&gt;&lt;p&gt;study aims to develop and implement a hybrid 3D animated film&lt;&sol;p&gt;&lt;p&gt;and digital campaign that promotes the major attractions and&lt;&sol;p&gt;&lt;p&gt;activities available in eight &lpar;8&rpar; tourism hubs of Manila City in&lt;&sol;p&gt;&lt;p&gt;partnership with the DTCAM&period; The study employs a&lt;&sol;p&gt;&lt;p&gt;mixed-method of study&comma; utilizing formative and summative&lt;&sol;p&gt;&lt;p&gt;evaluation&comma; including interviews and survey subject matter&lt;&sol;p&gt;&lt;p&gt;expert&comma; survey with target audience&comma; and digital campaign&lt;&sol;p&gt;&lt;p&gt;analysis&period; The project revealed positive insights from the subject&lt;&sol;p&gt;&lt;p&gt;matter experts&comma; which notably affirms that the overall 3D&lt;&sol;p&gt;&lt;p&gt;integration&comma; film&comma; social media&comma; and graphic design components&lt;&sol;p&gt;&lt;p&gt;itself also contributed to positive results&comma; which encompasses&lt;&sol;p&gt;&lt;p&gt;satisfactory performance&period; In terms of target audience&comma; the&lt;&sol;p&gt;&lt;p&gt;acceptance surveys&comma; which denote that the target audience was&lt;&sol;p&gt;&lt;p&gt;able to gain better awareness of the major attractions and&lt;&sol;p&gt;&lt;p&gt;activities available in the eight &lpar;8&rpar; tourism hubs of Manila City&period;&lt;&sol;p&gt;&lt;p&gt;And in terms of digital campaign analysis&comma; the key performance&lt;&sol;p&gt;&lt;p&gt;indicator in social media insights showed that the digital&lt;&sol;p&gt;&lt;p&gt;campaign performance garnered a positive growth rate in terms&lt;&sol;p&gt;&lt;p&gt;of number of reach&comma; engagement&comma; and number of followers&comma;&lt;&sol;p&gt;&lt;p&gt;denoting that the digital campaign has maximized its platform in&lt;&sol;p&gt;&lt;p&gt;creating awareness and expanding audience base&period;&lt;&sol;p&gt;&lt;div&gt;&lt;br&gt;&lt;&sol;div&gt;', '&lt;p&gt;Bobot&lt;&sol;p&gt;', 'uploads/banners/archive-46.png?v=1733499353', 'uploads/pdf/archive-46.pdf?v=1733499353', 'uploads/videos/archive-46.mp4?v=1733499353', 1, 22, '2024-12-06 15:35:49', '2024-12-06 15:36:42'),
(49, '2024120012', 2, '2024', 'TransitEase: An Online Ticket Management System with Mobile Application for LRT-1', '&lt;p&gt;This study focuses on developing a web and mobile application for online ticketing&comma; monitoring&comma; and management system called TransitEase&period; It is designed to innovate the commuting experience for users and optimize business operations for LRT-1&period; TransitEase integrates NFC payment to help lessen crowd congestion&period; The added feature of the system also incorporates monitor the crowd status in the station&period;Keywords&colon; TransitEase&comma; NFC payment&comma; Monitor crowd status&lt;&sol;p&gt;', '&lt;p&gt;Carena&comma; Cheng&comma; Roxas&comma; Sosa&comma; and Yabut&period;&lt;&sol;p&gt;', 'uploads/banners/archive-49.png?v=1733504242', 'uploads/pdf/archive-49.pdf?v=1733504242', 'uploads/videos/archive-49.mp4?v=1733504242', 1, 11, '2024-12-06 16:57:22', '2024-12-06 16:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 5, 'BSIT SMBA', 'Bachelor of Science in Information Technology with specialization in Service Management and Business Analytics', 1, '2021-12-07 10:10:20', '2024-12-03 05:06:29'),
(2, 5, 'BSIT WMA ', 'Bachelor of Science in Information Technology with specialization in Web and Mobile Application', 1, '2021-12-07 10:10:56', '2024-12-03 04:59:39'),
(3, 5, 'BSIT ADG', 'Bachelor of Science in Information Technology with specializing in Animation and Game Design', 1, '2021-12-07 10:12:50', '2024-12-03 05:06:12'),
(4, 5, 'BSIT CS', 'Bachelor of Science in Information Technology with specialization in Cybersecurity', 1, '2021-12-07 10:13:10', '2024-12-03 05:10:03'),
(5, 2, 'BMA', 'Bachelor of Multimedia Arts', 1, '2021-12-07 10:14:05', '2024-12-03 05:10:43'),
(6, 6, 'BSCE', 'Bachelor of Science in Civil Engineering', 1, '2021-12-07 10:14:26', NULL),
(7, 5, 'BSCS SE', 'Bachelor of Science in Computer Science with a specialization in Software Engineering', 1, '2021-12-07 10:15:28', '2024-12-03 05:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(2, 'College of Multimedia Arts', 'The program aligns itself with the rapid convergence of media technologies and practices by developing conceptual, technical, aesthetic, and professional competencies for effective, critical, and innovative storytelling.', 1, '2021-12-07 09:28:33', '2024-12-03 04:57:06'),
(5, 'College of Computer Studies', 'Develop creative innovators with the confidence and courage to seize and transform opportunities for the benefit of the society.', 1, '2021-12-07 09:35:19', '2021-12-07 09:36:35'),
(6, 'College of Engineering', 'To develop scientific and technical knowledge anchored on sustainable fisheries productivity and promote linkages and networking in the implementation of fisheries programs and projects.', 1, '2021-12-07 09:37:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(4, 'Liam', '', 'De Angel', 5, 2, 'docliam@fit.edu.ph', 'f18a7d6b726c11b7eea4ab864f8dc276', 'Male', 1, 'uploads/student-4.png?v=1733170154', '2024-12-03 02:20:27', '2024-12-03 18:50:22'),
(5, 'Adrian', '', 'Mendoza', 5, 2, 'adrian@fit.edu.ph', '8c6acca8bea1c5b106334d2f7267cde3', 'Male', 1, 'uploads/student-5.png?v=1733174165', '2024-12-03 05:14:45', '2024-12-03 18:19:36'),
(7, 'Shaun', '', 'Mendes', 5, 2, 'shaunm@fit.edu.ph', 'a87108bcf530347dccc2efa6652d7e60', 'Female', 1, 'uploads/student-7.png?v=1733174799', '2024-12-03 05:23:37', '2024-12-03 18:46:07'),
(8, 'Jerica', '', 'Tiongson', 2, 5, 'jerica@fit.edu.ph', 'eccfe0b3ae575748d45e6fc18c0d3d4c', 'Female', 1, 'uploads/student-8.png?v=1733216670', '2024-12-03 16:16:04', '2024-12-03 20:21:50'),
(10, 'Hans', '', 'Villas', 5, 2, 'hans@fit.edu.ph', 'e6ff456901e43b447a3db05c7768be41', 'Male', 1, 'uploads/student-10.png?v=1733217112', '2024-12-03 17:10:27', '2024-12-03 17:11:52'),
(11, 'Andrei', '', 'Carena', 5, 2, 'andrei@fit.edu.ph', 'a8269f67ab95652635f69d455f9b2751', 'Male', 1, 'uploads/student-11.png?v=1733225236', '2024-12-03 19:18:44', '2024-12-03 19:27:16'),
(13, 'Karl', '', 'Encio', 5, 2, 'karljoshua@fit.edu.ph', '28bfac3336479ec91f5c13b926855227', 'Male', 1, 'uploads/student-13.png?v=1733251685', '2024-12-03 15:34:38', '2024-12-03 18:48:05'),
(14, 'Jerome ', '', 'Ecubin', 5, 2, 'ecubin.jerome40@fit.edu.ph', '3fc0a7acf087f549ac2b266baf94b8b1', 'Male', 1, 'uploads/student-14.png?v=1733251784', '2024-12-03 15:40:32', '2024-12-03 18:49:44'),
(15, 'Lex', '', 'Gustilo', 5, 2, 'lexgustilo6@fit.edu.ph', 'aa962a96a47cdbc8d9459a2364936ab5', 'Male', 1, 'uploads/student-15.png?v=1733241173', '2024-12-03 15:40:59', '2024-12-03 18:45:47'),
(16, 'Ashley ', '', 'Go', 2, 5, 'ashleygo@fit.edu.ph', '09a55b22784af443d56c918d08e01d39', 'Male', 1, 'uploads/student-16.png?v=1733246868', '2024-12-03 16:53:42', '2024-12-03 17:27:48'),
(17, 'Clark', '', 'Aquino', 5, 2, 'clarkaquino@fit.edu.ph', '839887070e411d744aa4f08ce9b02c34', 'Male', 1, 'uploads/student-17.png?v=1733250473', '2024-12-03 18:21:34', '2024-12-03 18:27:53'),
(18, 'Jerico Ivann', '', 'Carabio', 5, 1, 'jericoivann@fit.edu.ph', 'ba65379d69a25b0d3c4a2cc916b3e4a4', 'Male', 1, '', '2024-12-03 18:32:34', '2024-12-03 18:32:50'),
(19, 'Brian', '', 'Yabut', 5, 2, 'brianyabut02@gmail.com', '3abb12e1cc5d6b49e19e6855d53c83e2', 'Male', 0, '', '2024-12-03 21:39:44', NULL),
(20, 'John', '', 'Gustilo', 5, 2, 'john@fit.edu.ph', 'cb6f3b8fa1aa7248aee240f594448a39', 'Male', 1, '', '2024-12-04 08:54:04', '2024-12-04 08:55:37'),
(21, 'Jerica Mae', 'Biag', 'Tiongson', 2, 5, 'tiongson.jerica@gmail.com', '5f340ede5ede698d849571f3cd27fca8', 'Female', 0, '', '2024-12-06 14:34:15', NULL),
(22, 'Jerica Mae', 'Biag', 'Tiongson', 2, 5, 'mika@fit.edu.ph', 'a7264960b3035962d5f53c26ba7e49aa', 'Male', 1, '', '2024-12-06 14:36:17', '2024-12-06 15:09:30'),
(24, 'Trixie', 'P', 'Mandap', 5, 7, 'trixie@fit.edu.ph', 'f30aa7a662c728b7407c54ae6bfd27d1', 'Female', 1, '', '2024-12-06 16:09:04', '2024-12-06 16:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'FEU Institute of Technology Capstone Project Repository'),
(2, 'short_name', 'FEU TECH'),
(15, 'content', 'Array'),
(16, 'email', 'info@feutech.edu.ph'),
(17, 'contact', '(02) 8281 8888 / 222/224'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Padre Paredes St, Sampaloc, Manila, 1015 Metro Manila'),
(101, 'logo', 'uploads/Logo.png'),
(102, 'user_avatar', 'uploads/Hi.jpg'),
(103, 'cover', 'uploads/bg1.png'),
(104, 'cover1', 'uploads/bg2.png'),
(105, 'banner', 'uploads/feutop2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Brian', NULL, 'Yabut', 'Admin Yabs', '6b069cd4d829950aa6b4704e7358d8e1', 'uploads/avatar-1.png?v=1733175021', NULL, 2, 1, '2021-01-20 14:02:37', '2024-12-03 05:30:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
