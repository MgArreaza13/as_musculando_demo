-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2018 a las 23:57:55
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add crontab', 7, 'add_crontabschedule'),
(20, 'Can change crontab', 7, 'change_crontabschedule'),
(21, 'Can delete crontab', 7, 'delete_crontabschedule'),
(22, 'Can add interval', 8, 'add_intervalschedule'),
(23, 'Can change interval', 8, 'change_intervalschedule'),
(24, 'Can delete interval', 8, 'delete_intervalschedule'),
(25, 'Can add periodic task', 9, 'add_periodictask'),
(26, 'Can change periodic task', 9, 'change_periodictask'),
(27, 'Can delete periodic task', 9, 'delete_periodictask'),
(28, 'Can add periodic tasks', 10, 'add_periodictasks'),
(29, 'Can change periodic tasks', 10, 'change_periodictasks'),
(30, 'Can delete periodic tasks', 10, 'delete_periodictasks'),
(31, 'Can add task state', 11, 'add_taskmeta'),
(32, 'Can change task state', 11, 'change_taskmeta'),
(33, 'Can delete task state', 11, 'delete_taskmeta'),
(34, 'Can add saved group result', 12, 'add_tasksetmeta'),
(35, 'Can change saved group result', 12, 'change_tasksetmeta'),
(36, 'Can delete saved group result', 12, 'delete_tasksetmeta'),
(37, 'Can add task', 13, 'add_taskstate'),
(38, 'Can change task', 13, 'change_taskstate'),
(39, 'Can delete task', 13, 'delete_taskstate'),
(40, 'Can add worker', 14, 'add_workerstate'),
(41, 'Can change worker', 14, 'change_workerstate'),
(42, 'Can delete worker', 14, 'delete_workerstate'),
(43, 'Can add tb_profile', 15, 'add_tb_profile'),
(44, 'Can change tb_profile', 15, 'change_tb_profile'),
(45, 'Can delete tb_profile', 15, 'delete_tb_profile'),
(46, 'Can add tb_plan', 16, 'add_tb_plan'),
(47, 'Can change tb_plan', 16, 'change_tb_plan'),
(48, 'Can delete tb_plan', 16, 'delete_tb_plan'),
(49, 'Can add tb_formas de pago', 17, 'add_tb_formasdepago'),
(50, 'Can change tb_formas de pago', 17, 'change_tb_formasdepago'),
(51, 'Can delete tb_formas de pago', 17, 'delete_tb_formasdepago'),
(52, 'Can add tb_tipo colaborador', 18, 'add_tb_tipocolaborador'),
(53, 'Can change tb_tipo colaborador', 18, 'change_tb_tipocolaborador'),
(54, 'Can delete tb_tipo colaborador', 18, 'delete_tb_tipocolaborador'),
(55, 'Can add tb_tipo egreso', 19, 'add_tb_tipoegreso'),
(56, 'Can change tb_tipo egreso', 19, 'change_tb_tipoegreso'),
(57, 'Can delete tb_tipo egreso', 19, 'delete_tb_tipoegreso'),
(58, 'Can add tb_tipo ingreso', 20, 'add_tb_tipoingreso'),
(59, 'Can change tb_tipo ingreso', 20, 'change_tb_tipoingreso'),
(60, 'Can delete tb_tipo ingreso', 20, 'delete_tb_tipoingreso'),
(61, 'Can add tb_clase', 21, 'add_tb_clase'),
(62, 'Can change tb_clase', 21, 'change_tb_clase'),
(63, 'Can delete tb_clase', 21, 'delete_tb_clase'),
(64, 'Can add tb_proveedor', 22, 'add_tb_proveedor'),
(65, 'Can change tb_proveedor', 22, 'change_tb_proveedor'),
(66, 'Can delete tb_proveedor', 22, 'delete_tb_proveedor'),
(67, 'Can add tb_colaboradores', 23, 'add_tb_colaboradores'),
(68, 'Can change tb_colaboradores', 23, 'change_tb_colaboradores'),
(69, 'Can delete tb_colaboradores', 23, 'delete_tb_colaboradores'),
(70, 'Can add tb_cuenta colaborador', 24, 'add_tb_cuentacolaborador'),
(71, 'Can change tb_cuenta colaborador', 24, 'change_tb_cuentacolaborador'),
(72, 'Can delete tb_cuenta colaborador', 24, 'delete_tb_cuentacolaborador'),
(73, 'Can add tb_ entrada salida', 25, 'add_tb_entradasalida'),
(74, 'Can change tb_ entrada salida', 25, 'change_tb_entradasalida'),
(75, 'Can delete tb_ entrada salida', 25, 'delete_tb_entradasalida'),
(76, 'Can add tb_ingreso_mensualidad', 26, 'add_tb_ingreso_mensualidad'),
(77, 'Can change tb_ingreso_mensualidad', 26, 'change_tb_ingreso_mensualidad'),
(78, 'Can delete tb_ingreso_mensualidad', 26, 'delete_tb_ingreso_mensualidad'),
(79, 'Can add tb_egreso', 27, 'add_tb_egreso'),
(80, 'Can change tb_egreso', 27, 'change_tb_egreso'),
(81, 'Can delete tb_egreso', 27, 'delete_tb_egreso'),
(82, 'Can add tb_ingresos', 28, 'add_tb_ingresos'),
(83, 'Can change tb_ingresos', 28, 'change_tb_ingresos'),
(84, 'Can delete tb_ingresos', 28, 'delete_tb_ingresos'),
(85, 'Can add tb_cierre_de_caja', 29, 'add_tb_cierre_de_caja'),
(86, 'Can change tb_cierre_de_caja', 29, 'change_tb_cierre_de_caja'),
(87, 'Can delete tb_cierre_de_caja', 29, 'delete_tb_cierre_de_caja'),
(88, 'Can add tb_mail', 30, 'add_tb_mail'),
(89, 'Can change tb_mail', 30, 'change_tb_mail'),
(90, 'Can delete tb_mail', 30, 'delete_tb_mail'),
(91, 'Can add tb_socio', 31, 'add_tb_socio'),
(92, 'Can change tb_socio', 31, 'change_tb_socio'),
(93, 'Can delete tb_socio', 31, 'delete_tb_socio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celery_taskmeta`
--

CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celery_tasksetmeta`
--

CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `hidden` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `nameClass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int(11) NOT NULL,
  `tipoColaborador_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comisionXClase` double,
  `cuentaColaborador` double,
  `honorariosMensuales` double,
  `isAguinaldo` tinyint(1) NOT NULL,
  `isComison` tinyint(1) NOT NULL,
  `isHonorarios` tinyint(1) NOT NULL,
  `isPresentimo` tinyint(1) NOT NULL,
  `montoAguinaldo` double,
  `montoXClase` double,
  `presentimo` double,
  `isMontoXClase` tinyint(1) NOT NULL,
  `dateCreate` date NOT NULL,
  `montoPagadoColaborador` double,
  `isPresentimoPay` tinyint(1) NOT NULL,
  `isHonorariosUpload` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentacolaborador`
--

CREATE TABLE `cuentacolaborador` (
  `id` int(11) NOT NULL,
  `typePago` varchar(300) NOT NULL,
  `monto` double DEFAULT NULL,
  `dateCreate` date NOT NULL,
  `colaborador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(29, 'Caja', 'tb_cierre_de_caja'),
(27, 'Caja', 'tb_egreso'),
(28, 'Caja', 'tb_ingresos'),
(26, 'Caja', 'tb_ingreso_mensualidad'),
(21, 'Clases', 'tb_clase'),
(23, 'Colaboradores', 'tb_colaboradores'),
(24, 'Colaboradores', 'tb_cuentacolaborador'),
(25, 'Colaboradores', 'tb_entradasalida'),
(17, 'Configuracion', 'tb_formasdepago'),
(16, 'Configuracion', 'tb_plan'),
(18, 'Configuracion', 'tb_tipocolaborador'),
(19, 'Configuracion', 'tb_tipoegreso'),
(20, 'Configuracion', 'tb_tipoingreso'),
(5, 'contenttypes', 'contenttype'),
(7, 'djcelery', 'crontabschedule'),
(8, 'djcelery', 'intervalschedule'),
(9, 'djcelery', 'periodictask'),
(10, 'djcelery', 'periodictasks'),
(11, 'djcelery', 'taskmeta'),
(12, 'djcelery', 'tasksetmeta'),
(13, 'djcelery', 'taskstate'),
(14, 'djcelery', 'workerstate'),
(30, 'Marketing', 'tb_mail'),
(22, 'Proveedores', 'tb_proveedor'),
(6, 'sessions', 'session'),
(31, 'Socios', 'tb_socio'),
(15, 'UserProfile', 'tb_profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-08-15 19:25:13.288891'),
(2, 'auth', '0001_initial', '2018-08-15 19:25:22.786851'),
(3, 'admin', '0001_initial', '2018-08-15 19:25:25.586040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-08-15 19:25:25.655996'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-08-15 19:25:26.705859'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-08-15 19:25:28.076903'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-08-15 19:25:29.758681'),
(8, 'auth', '0004_alter_user_username_opts', '2018-08-15 19:25:29.890922'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-08-15 19:25:30.446923'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-08-15 19:25:30.523627'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-08-15 19:25:30.566706'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-08-15 19:25:31.364138'),
(13, 'djcelery', '0001_initial', '2018-08-15 19:25:39.668917'),
(14, 'sessions', '0001_initial', '2018-08-15 19:25:40.203442'),
(15, 'UserProfile', '0001_initial', '2018-08-15 19:26:33.449186'),
(16, 'UserProfile', '0002_auto_20180224_1956', '2018-08-15 19:26:33.862876'),
(17, 'UserProfile', '0003_auto_20180227_1321', '2018-08-15 19:26:36.391064'),
(18, 'UserProfile', '0004_tb_profile_is_complete', '2018-08-15 19:26:36.810174'),
(19, 'UserProfile', '0005_auto_20180228_1842', '2018-08-15 19:26:36.858287'),
(20, 'UserProfile', '0006_auto_20180301_1022', '2018-08-15 19:26:37.361652'),
(21, 'UserProfile', '0007_auto_20180312_1412', '2018-08-15 19:26:37.428775'),
(22, 'UserProfile', '0008_auto_20180411_1127', '2018-08-15 19:26:38.991694'),
(23, 'UserProfile', '0009_auto_20180606_1911', '2018-08-15 19:26:41.664667'),
(24, 'Configuracion', '0001_initial', '2018-08-15 19:27:22.015784'),
(25, 'Configuracion', '0002_tb_plan_precioplananual', '2018-08-15 19:27:22.440561'),
(26, 'Configuracion', '0003_tb_formasdepago', '2018-08-15 19:27:23.322879'),
(27, 'Configuracion', '0004_auto_20180521_0938', '2018-08-15 19:27:24.264386'),
(28, 'Configuracion', '0005_tb_tipoegreso', '2018-08-15 19:27:25.249724'),
(29, 'Configuracion', '0006_tb_tipoingreso', '2018-08-15 19:27:26.208115'),
(30, 'Proveedores', '0001_initial', '2018-08-15 19:29:29.672563'),
(31, 'Colaboradores', '0001_initial', '2018-08-15 19:29:31.236415'),
(32, 'Colaboradores', '0002_auto_20180521_0945', '2018-08-15 19:29:32.364928'),
(33, 'Colaboradores', '0003_auto_20180607_1214', '2018-08-15 19:29:38.380673'),
(34, 'Colaboradores', '0004_auto_20180607_1214', '2018-08-15 19:29:38.490864'),
(35, 'Colaboradores', '0005_tb_colaboradores_ismontoxclase', '2018-08-15 19:29:39.997175'),
(36, 'Colaboradores', '0006_tb_colaboradores_datecreate', '2018-08-15 19:29:40.445465'),
(37, 'Colaboradores', '0007_tb_cuentacolaborador', '2018-08-15 19:29:41.372986'),
(38, 'Colaboradores', '0008_auto_20180618_1906', '2018-08-15 19:29:42.004763'),
(39, 'Colaboradores', '0009_auto_20180627_1921', '2018-08-15 19:29:42.077860'),
(40, 'Colaboradores', '0010_tb_colaboradores_ispresentimopay', '2018-08-15 19:29:42.435011'),
(41, 'Caja', '0001_initial', '2018-08-15 19:29:45.064665'),
(42, 'Caja', '0002_auto_20180315_1247', '2018-08-15 19:29:45.369092'),
(43, 'Caja', '0003_auto_20180315_1520', '2018-08-15 19:29:47.170802'),
(44, 'Caja', '0004_tb_egreso', '2018-08-15 19:29:51.799358'),
(45, 'Caja', '0005_tb_egreso_colaborador', '2018-08-15 19:29:54.014478'),
(46, 'Caja', '0006_auto_20180615_1225', '2018-08-15 19:29:55.521809'),
(47, 'Caja', '0007_tb_ingresos', '2018-08-15 19:30:00.131650'),
(48, 'Caja', '0008_auto_20180706_1128', '2018-08-15 19:30:02.502904'),
(49, 'Caja', '0009_tb_cierre_de_caja', '2018-08-15 19:30:03.472118'),
(50, 'Caja', '0010_auto_20180814_1044', '2018-08-15 19:30:05.409336'),
(51, 'Caja', '0011_auto_20180814_1106', '2018-08-15 19:30:07.203874'),
(52, 'Clases', '0001_initial', '2018-08-15 19:30:07.613823'),
(53, 'Colaboradores', '0011_auto_20180727_1311', '2018-08-15 19:30:08.462398'),
(54, 'Colaboradores', '0012_tb_entradasalida_hora', '2018-08-15 19:30:08.833000'),
(55, 'Colaboradores', '0013_tb_colaboradores_ishonorariosupload', '2018-08-15 19:30:09.511690'),
(56, 'Marketing', '0001_initial', '2018-08-15 19:32:39.550147'),
(57, 'Socios', '0001_initial', '2018-08-15 19:32:40.679180'),
(58, 'Socios', '0002_auto_20180312_1144', '2018-08-15 19:32:40.772248'),
(59, 'Socios', '0003_auto_20180312_1418', '2018-08-15 19:32:42.739550'),
(60, 'Socios', '0004_tb_socio_dateinactive_socio', '2018-08-15 19:32:43.541046'),
(61, 'Socios', '0005_auto_20180607_1108', '2018-08-15 19:32:43.632989');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_crontabschedule`
--

CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_intervalschedule`
--

CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_periodictask`
--

CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_periodictasks`
--

CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_taskstate`
--

CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime(6) NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime(6) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `djcelery_workerstate`
--

CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id` int(11) NOT NULL,
  `monto` double DEFAULT NULL,
  `descripcion` longtext,
  `dateCreate` date NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `tipoDeEgreso_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `colaborador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradasalida`
--

CREATE TABLE `entradasalida` (
  `id` int(11) NOT NULL,
  `typeEntradaSalida` varchar(300) NOT NULL,
  `dateCreate` date NOT NULL,
  `colaborador_id` int(11) NOT NULL,
  `hora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_de_pago`
--

CREATE TABLE `formas_de_pago` (
  `id` int(11) NOT NULL,
  `nameFormasDePago` varchar(30) NOT NULL,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `monto` double DEFAULT NULL,
  `descripcion` longtext,
  `dateCreate` date NOT NULL,
  `tipoDeIngresos_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_mensualidad`
--

CREATE TABLE `ingreso_mensualidad` (
  `id` int(11) NOT NULL,
  `monto` double DEFAULT NULL,
  `descripcion` longtext,
  `dateCreate` date NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailbox`
--

CREATE TABLE `mailbox` (
  `id` int(11) NOT NULL,
  `Asunto` varchar(30000) DEFAULT NULL,
  `Mailbody` longtext,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `nombrePlan` varchar(30) DEFAULT NULL,
  `precioPlan` varchar(30) DEFAULT NULL,
  `descripcionPlan` longtext,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `precioPlanAnual` varchar(30)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nameUser` varchar(300) DEFAULT NULL,
  `mailUser` varchar(300) DEFAULT NULL,
  `birthdayDate` date,
  `tipoUser` varchar(30) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dateCreate` date NOT NULL,
  `dni` varchar(30),
  `houseTlf` varchar(30),
  `lastName` varchar(300) DEFAULT NULL,
  `movilTlf` varchar(30),
  `is_complete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nameProveedor` varchar(30) DEFAULT NULL,
  `razonSocial` varchar(30) DEFAULT NULL,
  `phoneNumberProveedor` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `addressProveedor` longtext,
  `dateCreate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` int(11) NOT NULL,
  `obraSocial` varchar(30) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `TarifaMensual_id` int(11) DEFAULT NULL,
  `dateCreate_socio` date NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `dateInactive_socio` date
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cierre_de_caja`
--

CREATE TABLE `tb_cierre_de_caja` (
  `id` int(11) NOT NULL,
  `hora` varchar(50) NOT NULL,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `balanceGeneral` double,
  `totalEgresos` double,
  `totalIngresos` double,
  `egresos` longtext,
  `ingresos` longtext,
  `ingresos_mensualidades` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_colaborador`
--

CREATE TABLE `tipo_de_colaborador` (
  `id` int(11) NOT NULL,
  `tipodeColaborador` varchar(30) NOT NULL,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_egreso`
--

CREATE TABLE `tipo_de_egreso` (
  `id` int(11) NOT NULL,
  `tipodeEgreso` varchar(30) NOT NULL,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_ingreso`
--

CREATE TABLE `tipo_de_ingreso` (
  `id` int(11) NOT NULL,
  `tipodeIngreso` varchar(30) NOT NULL,
  `dateCreate` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `celery_taskmeta`
--
ALTER TABLE `celery_taskmeta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`);

--
-- Indices de la tabla `celery_tasksetmeta`
--
ALTER TABLE `celery_tasksetmeta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taskset_id` (`taskset_id`),
  ADD KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `colaboradores_tipoColaborador_id_171df25b_fk_tipo_de_c` (`tipoColaborador_id`);

--
-- Indices de la tabla `cuentacolaborador`
--
ALTER TABLE `cuentacolaborador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuentaColaborador_colaborador_id_0bb25943_fk_colaboradores_id` (`colaborador_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `djcelery_crontabschedule`
--
ALTER TABLE `djcelery_crontabschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `djcelery_intervalschedule`
--
ALTER TABLE `djcelery_intervalschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `djcelery_periodictask`
--
ALTER TABLE `djcelery_periodictask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` (`crontab_id`),
  ADD KEY `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` (`interval_id`);

--
-- Indices de la tabla `djcelery_periodictasks`
--
ALTER TABLE `djcelery_periodictasks`
  ADD PRIMARY KEY (`ident`);

--
-- Indices de la tabla `djcelery_taskstate`
--
ALTER TABLE `djcelery_taskstate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `djcelery_taskstate_state_53543be4` (`state`),
  ADD KEY `djcelery_taskstate_name_8af9eded` (`name`),
  ADD KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  ADD KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  ADD KEY `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` (`worker_id`);

--
-- Indices de la tabla `djcelery_workerstate`
--
ALTER TABLE `djcelery_workerstate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostname` (`hostname`),
  ADD KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `egresos_proveedor_id_15ecba6a_fk_proveedores_id` (`proveedor_id`),
  ADD KEY `egresos_tipoDeEgreso_id_f86d48c7_fk_tipo_de_egreso_id` (`tipoDeEgreso_id`),
  ADD KEY `egresos_user_id_8f9690c7_fk_auth_user_id` (`user_id`),
  ADD KEY `egresos_colaborador_id_ece5223c_fk_colaboradores_id` (`colaborador_id`);

--
-- Indices de la tabla `entradasalida`
--
ALTER TABLE `entradasalida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EntradaSalida_colaborador_id_8719af41_fk_colaboradores_id` (`colaborador_id`);

--
-- Indices de la tabla `formas_de_pago`
--
ALTER TABLE `formas_de_pago`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nameFormasDePago` (`nameFormasDePago`),
  ADD KEY `formas_de_pago_user_id_a1b83dec_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingresos_tipoDeIngresos_id_18810c03_fk_tipo_de_ingreso_id` (`tipoDeIngresos_id`),
  ADD KEY `ingresos_user_id_d98d5a3a_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `ingreso_mensualidad`
--
ALTER TABLE `ingreso_mensualidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Caja_tb_ingreso_mensualidad_plan_id_0070cf69_fk_planes_id` (`plan_id`),
  ADD KEY `Caja_tb_ingreso_mensualidad_user_id_8b8f019a_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailbox_user_id_fab39f13_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planes_user_id_906fd232_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perfil_id` (`perfil_id`),
  ADD KEY `socios_TarifaMensual_id_6d6af561` (`TarifaMensual_id`);

--
-- Indices de la tabla `tb_cierre_de_caja`
--
ALTER TABLE `tb_cierre_de_caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cierre_de_caja_user_id_875990fa_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `tipo_de_colaborador`
--
ALTER TABLE `tipo_de_colaborador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipodeColaborador` (`tipodeColaborador`),
  ADD KEY `tipo_de_colaborador_user_id_0a4c923b_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `tipo_de_egreso`
--
ALTER TABLE `tipo_de_egreso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipodeEgreso` (`tipodeEgreso`),
  ADD KEY `tipo_de_egreso_user_id_d2f04db7_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `tipo_de_ingreso`
--
ALTER TABLE `tipo_de_ingreso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipodeIngreso` (`tipodeIngreso`),
  ADD KEY `tipo_de_ingreso_user_id_02105c8e_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `celery_taskmeta`
--
ALTER TABLE `celery_taskmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `celery_tasksetmeta`
--
ALTER TABLE `celery_tasksetmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentacolaborador`
--
ALTER TABLE `cuentacolaborador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `djcelery_crontabschedule`
--
ALTER TABLE `djcelery_crontabschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `djcelery_intervalschedule`
--
ALTER TABLE `djcelery_intervalschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `djcelery_periodictask`
--
ALTER TABLE `djcelery_periodictask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `djcelery_taskstate`
--
ALTER TABLE `djcelery_taskstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `djcelery_workerstate`
--
ALTER TABLE `djcelery_workerstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entradasalida`
--
ALTER TABLE `entradasalida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formas_de_pago`
--
ALTER TABLE `formas_de_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingreso_mensualidad`
--
ALTER TABLE `ingreso_mensualidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_cierre_de_caja`
--
ALTER TABLE `tb_cierre_de_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_colaborador`
--
ALTER TABLE `tipo_de_colaborador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_egreso`
--
ALTER TABLE `tipo_de_egreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_ingreso`
--
ALTER TABLE `tipo_de_ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `colaboradores_tipoColaborador_id_171df25b_fk_tipo_de_c` FOREIGN KEY (`tipoColaborador_id`) REFERENCES `tipo_de_colaborador` (`id`),
  ADD CONSTRAINT `colaboradores_user_id_72824ab3_fk_profile_id` FOREIGN KEY (`user_id`) REFERENCES `profile` (`id`);

--
-- Filtros para la tabla `cuentacolaborador`
--
ALTER TABLE `cuentacolaborador`
  ADD CONSTRAINT `cuentaColaborador_colaborador_id_0bb25943_fk_colaboradores_id` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `djcelery_periodictask`
--
ALTER TABLE `djcelery_periodictask`
  ADD CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  ADD CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`);

--
-- Filtros para la tabla `djcelery_taskstate`
--
ALTER TABLE `djcelery_taskstate`
  ADD CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`);

--
-- Filtros para la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD CONSTRAINT `egresos_colaborador_id_ece5223c_fk_colaboradores_id` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`),
  ADD CONSTRAINT `egresos_proveedor_id_15ecba6a_fk_proveedores_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `egresos_tipoDeEgreso_id_f86d48c7_fk_tipo_de_egreso_id` FOREIGN KEY (`tipoDeEgreso_id`) REFERENCES `tipo_de_egreso` (`id`),
  ADD CONSTRAINT `egresos_user_id_8f9690c7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `entradasalida`
--
ALTER TABLE `entradasalida`
  ADD CONSTRAINT `EntradaSalida_colaborador_id_8719af41_fk_colaboradores_id` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`);

--
-- Filtros para la tabla `formas_de_pago`
--
ALTER TABLE `formas_de_pago`
  ADD CONSTRAINT `formas_de_pago_user_id_a1b83dec_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_tipoDeIngresos_id_18810c03_fk_tipo_de_ingreso_id` FOREIGN KEY (`tipoDeIngresos_id`) REFERENCES `tipo_de_ingreso` (`id`),
  ADD CONSTRAINT `ingresos_user_id_d98d5a3a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `ingreso_mensualidad`
--
ALTER TABLE `ingreso_mensualidad`
  ADD CONSTRAINT `Caja_tb_ingreso_mensualidad_plan_id_0070cf69_fk_planes_id` FOREIGN KEY (`plan_id`) REFERENCES `planes` (`id`),
  ADD CONSTRAINT `Caja_tb_ingreso_mensualidad_user_id_8b8f019a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `mailbox`
--
ALTER TABLE `mailbox`
  ADD CONSTRAINT `mailbox_user_id_fab39f13_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `planes_user_id_906fd232_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id_2aeb6f6b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `socios`
--
ALTER TABLE `socios`
  ADD CONSTRAINT `socios_TarifaMensual_id_6d6af561_fk_planes_id` FOREIGN KEY (`TarifaMensual_id`) REFERENCES `planes` (`id`),
  ADD CONSTRAINT `socios_perfil_id_48b786b2_fk_profile_id` FOREIGN KEY (`perfil_id`) REFERENCES `profile` (`id`);

--
-- Filtros para la tabla `tb_cierre_de_caja`
--
ALTER TABLE `tb_cierre_de_caja`
  ADD CONSTRAINT `tb_cierre_de_caja_user_id_875990fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tipo_de_colaborador`
--
ALTER TABLE `tipo_de_colaborador`
  ADD CONSTRAINT `tipo_de_colaborador_user_id_0a4c923b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tipo_de_egreso`
--
ALTER TABLE `tipo_de_egreso`
  ADD CONSTRAINT `tipo_de_egreso_user_id_d2f04db7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tipo_de_ingreso`
--
ALTER TABLE `tipo_de_ingreso`
  ADD CONSTRAINT `tipo_de_ingreso_user_id_02105c8e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
