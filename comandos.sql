-- Volcando datos para la tabla horario.empleados: ~9 rows (aproximadamente)
INSERT INTO `empleados` (`ID`, `PERSONAS_ID`, `CARGO`) VALUES
	(1, 1, 'PROGRAMADOR'),
	(2, 2, 'JEFE GENERAL'),
	(3, 3, 'SECRETARIO'),
	(4, 4, 'PROGRAMADOR'),
	(5, 5, 'JEFE GENERAL'),
	(6, 6, 'SECRETARIO'),
	(7, 7, 'PROGRAMADOR'),
	(8, 8, 'JEFE GENERAL'),
	(9, 9, 'SECRETARIO');

    -- Volcando datos para la tabla horario.personas: ~9 rows (aproximadamente)
INSERT INTO `personas` (`ID`, `NOMBRE`, `EDAD`, `GENERO`) VALUES
	(1, 'LUIS', 32, 'MASCULINO'),
	(2, 'JIMMY', 22, 'MASCULINO'),
	(3, 'MARIO', 19, 'MASCULINO'),
	(4, 'ANDERSON', 32, 'MASCULINO'),
	(5, 'JULIO', 22, 'MASCULINO'),
	(6, 'BRANDON', 19, 'MASCULINO'),
	(7, 'DONALD', 55, 'MASCULINO'),
	(8, 'OTTO', 56, 'MASCULINO'),
	(9, 'MANFRED', 54, 'MASCULINO');

    -- Volcando datos para la tabla horario.registros: ~9 rows (aproximadamente)
INSERT INTO `registros` (`ID`, `EMPLEADOS_ID`, `HORARIO_ENTRADA`, `HORARIO_SALIDA`, `FECHA`) VALUES
	(1, 1, '07:00:00', '06:00:00', '2025-04-10'),
	(2, 2, '10:00:00', '04:00:00', '2025-04-10'),
	(3, 3, '06:00:00', '07:00:00', '2025-04-10'),
	(4, 4, '07:00:00', '60:00:00', '2025-04-14'),
	(5, 5, '10:00:00', '04:00:00', '2025-04-14'),
	(6, 6, '06:00:00', '07:00:00', '2025-04-14'),
	(7, 7, '07:00:00', '06:00:00', '2025-04-18'),
	(8, 8, '10:00:00', '04:00:00', '2025-04-18'),
	(9, 9, '06:00:00', '07:00:00', '2025-04-18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
