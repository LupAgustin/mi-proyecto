-- INSERTS BASE DE DATOS
--use CinePolis4
EXEC sp_InsertFormasPago @descripcion = "Efectivo";

EXEC sp_InsertFormasPago @descripcion = "Tarjeta Credito";

EXEC sp_InsertFormasPago @descripcion = "Pago Qr";

-- Insertar un tipo de sala
EXEC sp_tipos_salas 'Sala 2D';

-- Insertar otro tipo de sala
EXEC sp_tipos_salas 'Sala 3D';

EXEC sp_tipos_salas 'Sala VIP';


-- Insertar un método de venta
EXEC sp_Metodo_Ventas 'Venta en caja';


-- Insertar otro método de venta
EXEC sp_Metodo_Ventas 'Venta en línea';

-- Insertar un tipo de butaca
EXEC sp_Tipo_Butacas 'Butaca estándar';

-- Insertar otro tipo de butaca
EXEC sp_Tipo_Butacas 'Butaca para discapacitados';

--Paises
EXEC sp_Paises @descripcion = 'Argentina';
EXEC sp_Paises @descripcion = 'Alemania';
EXEC sp_Paises @descripcion = 'Italia';
EXEC sp_Paises @descripcion = 'Australia';
EXEC sp_Paises @descripcion = 'Canadá';
EXEC sp_Paises @descripcion = 'Brasil';
EXEC sp_Paises @descripcion = 'Chile';
EXEC sp_Paises @descripcion = 'México';
EXEC sp_Paises @descripcion = 'Estados Unidos';
EXEC sp_Paises @descripcion = 'Francia';
EXEC sp_Paises @descripcion = 'España';
EXEC sp_Paises @descripcion = 'Reino Unido';
EXEC sp_Paises @descripcion = 'Japón';
EXEC sp_Paises @descripcion = 'China';
EXEC sp_Paises @descripcion = 'India';
EXEC sp_Paises @descripcion = 'Rusia';
EXEC sp_Paises @descripcion = 'Sudáfrica';
EXEC sp_Paises @descripcion = 'Egipto';
EXEC sp_Paises @descripcion = 'Arabia Saudita';
EXEC sp_Paises @descripcion = 'Corea del Sur';
EXEC sp_Paises @descripcion = 'Singapur';
EXEC sp_Paises @descripcion = 'Indonesia';
EXEC sp_Paises @descripcion = 'Nueva Zelanda';
EXEC sp_Paises @descripcion = 'Colombia';
EXEC sp_Paises @descripcion = 'Perú';
EXEC sp_Paises @descripcion = 'Venezuela';
EXEC sp_Paises @descripcion = 'Ecuador';
EXEC sp_Paises @descripcion = 'Bolivia';
EXEC sp_Paises @descripcion = 'Uruguay';
EXEC sp_Paises @descripcion = 'Paraguay';
EXEC sp_Paises @descripcion = 'Costa Rica';
EXEC sp_Paises @descripcion = 'Panamá';
EXEC sp_Paises @descripcion = 'Honduras';
EXEC sp_Paises @descripcion = 'Nicaragua';
EXEC sp_Paises @descripcion = 'El Salvador';
EXEC sp_Paises @descripcion = 'Guatemala';
EXEC sp_Paises @descripcion = 'Belice';
EXEC sp_Paises @descripcion = 'Haití';
EXEC sp_Paises @descripcion = 'República Dominicana';
EXEC sp_Paises @descripcion = 'Cuba';
EXEC sp_Paises @descripcion = 'Jamaica';
EXEC sp_Paises @descripcion = 'Trinidad y Tobago';
EXEC sp_Paises @descripcion = 'Noruega';
EXEC sp_Paises @descripcion = 'Dinamarca';
EXEC sp_Paises @descripcion = 'Suecia';
EXEC sp_Paises @descripcion = 'Finlandia';
EXEC sp_Paises @descripcion = 'Países Bajos';
EXEC sp_Paises @descripcion = 'Bélgica';
EXEC sp_Paises @descripcion = 'Portugal';
EXEC sp_Paises @descripcion = 'Suiza';
EXEC sp_Paises @descripcion = 'Austria';
EXEC sp_Paises @descripcion = 'Grecia';
EXEC sp_Paises @descripcion = 'Turquía';
EXEC sp_Paises @descripcion = 'Polonia';
EXEC sp_Paises @descripcion = 'Hungría';
EXEC sp_Paises @descripcion = 'Croacia';
EXEC sp_Paises @descripcion = 'Eslovenia';
EXEC sp_Paises @descripcion = 'Estonia';
EXEC sp_Paises @descripcion = 'Letonia';
EXEC sp_Paises @descripcion = 'Lituania';
EXEC sp_Paises @descripcion = 'Rumania';
EXEC sp_Paises @descripcion = 'Bulgaria';
EXEC sp_Paises @descripcion = 'Ucrania';
EXEC sp_Paises @descripcion = 'Bielorrusia';
EXEC sp_Paises @descripcion = 'Kazajistán';
EXEC sp_Paises @descripcion = 'Mongolia';
EXEC sp_Paises @descripcion = 'Vietnam';
EXEC sp_Paises @descripcion = 'Malasia';
EXEC sp_Paises @descripcion = 'Tailandia';
EXEC sp_Paises @descripcion = 'Filipinas';
EXEC sp_Paises @descripcion = 'Bangladesh';
EXEC sp_Paises @descripcion = 'Pakistán';
EXEC sp_Paises @descripcion = 'Irán';
EXEC sp_Paises @descripcion = 'Irak';
EXEC sp_Paises @descripcion = 'Siria';
EXEC sp_Paises @descripcion = 'Egipto';
EXEC sp_Paises @descripcion = 'Túnez';
EXEC sp_Paises @descripcion = 'Marruecos';
EXEC sp_Paises @descripcion = 'Nigeria';
EXEC sp_Paises @descripcion = 'Kenia';
EXEC sp_Paises @descripcion = 'Sudán';
EXEC sp_Paises @descripcion = 'Etiopía';
EXEC sp_Paises @descripcion = 'Sudáfrica';
EXEC sp_Paises @descripcion = 'Argelia';
EXEC sp_Paises @descripcion = 'Perú';
EXEC sp_Paises @descripcion = 'Chile';
EXEC sp_Paises @descripcion = 'Ecuador';

--Provincias
-- Insertar provincias en Argentina
EXEC sp_Provincias 'Córdoba', 1;
EXEC sp_Provincias 'Buenos Aires', 1;
EXEC sp_Provincias 'Catamarca', 1;
EXEC sp_Provincias 'Chaco', 1;
EXEC sp_Provincias 'Chubut', 1;
EXEC sp_Provincias 'Corrientes', 1;
EXEC sp_Provincias 'Entre Ríos', 1;
EXEC sp_Provincias 'Formosa', 1;
EXEC sp_Provincias 'Jujuy', 1;
EXEC sp_Provincias 'La Pampa', 1;
EXEC sp_Provincias 'La Rioja', 1;
EXEC sp_Provincias 'Mendoza', 1;
EXEC sp_Provincias 'Misiones', 1;
EXEC sp_Provincias 'Neuquén', 1;
EXEC sp_Provincias 'Río Negro', 1;
EXEC sp_Provincias 'Salta', 1;
EXEC sp_Provincias 'San Juan', 1;
EXEC sp_Provincias 'San Luis', 1;
EXEC sp_Provincias 'Santa Cruz', 1;
EXEC sp_Provincias 'Santa Fe', 1;
EXEC sp_Provincias 'Santiago del Estero', 1;
EXEC sp_Provincias 'Tierra del Fuego', 1;
EXEC sp_Provincias 'Tucumán', 1;

--Ciudades
-- Insertar ciudades en Córdoba, Argentina
EXEC sp_Ciudades 'Córdoba', 1;
EXEC sp_Ciudades 'Villa María', 1;
EXEC sp_Ciudades 'Río Cuarto', 1;
EXEC sp_Ciudades 'San Francisco', 1;
EXEC sp_Ciudades 'Carlos Paz', 1;

-- Insertar ciudades en Buenos Aires, Argentina
EXEC sp_Ciudades 'Buenos Aires', 2;
EXEC sp_Ciudades 'La Plata', 2;
EXEC sp_Ciudades 'Mar del Plata', 2;
EXEC sp_Ciudades 'Rosario', 2;
EXEC sp_Ciudades 'San Isidro', 2;

-- Insertar ciudades en Catamarca, Argentina
EXEC sp_Ciudades 'San Fernando del Valle de Catamarca', 3;
EXEC sp_Ciudades 'Andalgalá', 3;
EXEC sp_Ciudades 'Tinogasta', 3;
EXEC sp_Ciudades 'Belén', 3;
EXEC sp_Ciudades 'Santa María', 3;

-- Insertar ciudades en Chaco, Argentina
EXEC sp_Ciudades 'Resistencia', 4;
EXEC sp_Ciudades 'Barranqueras', 4;
EXEC sp_Ciudades 'Fontana', 4;
EXEC sp_Ciudades 'Presidencia Roque Sáenz Peña', 4;
EXEC sp_Ciudades 'Charata', 4;

-- Insertar ciudades en Chubut, Argentina
EXEC sp_Ciudades 'Comodoro Rivadavia', 5;
EXEC sp_Ciudades 'Rawson', 5;
EXEC sp_Ciudades 'Trelew', 5;
EXEC sp_Ciudades 'Puerto Madryn', 5;
EXEC sp_Ciudades 'Esquel', 5;

-- Insertar ciudades en Corrientes, Argentina
EXEC sp_Ciudades 'Corrientes', 6;
EXEC sp_Ciudades 'Goya', 6;
EXEC sp_Ciudades 'Mercedes', 6;
EXEC sp_Ciudades 'Curuzú Cuatiá', 6;
EXEC sp_Ciudades 'Paso de los Libres', 6;
-- Insertar ciudades en Entre Ríos, Argentina
EXEC sp_Ciudades 'Paraná', 7;
EXEC sp_Ciudades 'Concordia', 7;
EXEC sp_Ciudades 'Gualeguaychú', 7;
EXEC sp_Ciudades 'Victoria', 7;
EXEC sp_Ciudades 'Villaguay', 7;

-- Insertar ciudades en Formosa, Argentina
EXEC sp_Ciudades 'Formosa', 8;
EXEC sp_Ciudades 'Clorinda', 8;
EXEC sp_Ciudades 'Pirané', 8;
EXEC sp_Ciudades 'Las Lomitas', 8;
EXEC sp_Ciudades 'El Colorado', 8;

-- Insertar ciudades en Jujuy, Argentina
EXEC sp_Ciudades 'San Salvador de Jujuy', 9;
EXEC sp_Ciudades 'Palpalá', 9;
EXEC sp_Ciudades 'San Pedro', 9;
EXEC sp_Ciudades 'La Quiaca', 9;
EXEC sp_Ciudades 'Humahuaca', 9;

-- Insertar ciudades en La Pampa, Argentina
EXEC sp_Ciudades 'Santa Rosa', 10;
EXEC sp_Ciudades 'General Pico', 10;
EXEC sp_Ciudades 'Toay', 10;
EXEC sp_Ciudades 'Realicó', 10;
EXEC sp_Ciudades 'Eduardo Castex', 10;

-- Insertar ciudades en La Rioja, Argentina
EXEC sp_Ciudades 'La Rioja', 11;
EXEC sp_Ciudades 'Chamical', 11;
EXEC sp_Ciudades 'Aimogasta', 11;
EXEC sp_Ciudades 'Arauco', 11;
EXEC sp_Ciudades 'Chepes', 11;

-- Insertar ciudades en Mendoza, Argentina
EXEC sp_Ciudades 'Mendoza', 12;
EXEC sp_Ciudades 'Godoy Cruz', 12;
EXEC sp_Ciudades 'San Rafael', 12;
EXEC sp_Ciudades 'Maipú', 12;
EXEC sp_Ciudades 'Luján de Cuyo', 12;

-- Insertar ciudades en Misiones, Argentina
EXEC sp_Ciudades 'Posadas', 13;
EXEC sp_Ciudades 'Garupá', 13;
EXEC sp_Ciudades 'Oberá', 13;
EXEC sp_Ciudades 'Eldorado', 13;
EXEC sp_Ciudades 'Puerto Iguazú', 13;

-- Insertar ciudades en Neuquén, Argentina
EXEC sp_Ciudades 'Neuquén', 14;
EXEC sp_Ciudades 'Plottier', 14;
EXEC sp_Ciudades 'Cutral-Có', 14;
EXEC sp_Ciudades 'Centenario', 14;
EXEC sp_Ciudades 'Zapala', 14;

-- Insertar ciudades en Río Negro, Argentina
EXEC sp_Ciudades 'Viedma', 15;
EXEC sp_Ciudades 'San Carlos de Bariloche', 15;
EXEC sp_Ciudades 'General Roca', 15;
EXEC sp_Ciudades 'Cipolletti', 15;
EXEC sp_Ciudades 'Cinco Saltos', 15;

-- Insertar ciudades en Salta, Argentina
EXEC sp_Ciudades 'Salta', 16;
EXEC sp_Ciudades 'San Salvador de Jujuy', 16;
EXEC sp_Ciudades 'Orán', 16;
EXEC sp_Ciudades 'Tartagal', 16;
EXEC sp_Ciudades 'Cafayate', 16;

-- Insertar ciudades en San Juan, Argentina
EXEC sp_Ciudades 'San Juan', 17;
EXEC sp_Ciudades 'Rawson', 17;
EXEC sp_Ciudades 'Pocito', 17;
EXEC sp_Ciudades 'Caucete', 17;
EXEC sp_Ciudades 'Santa Lucía', 17;

-- Insertar ciudades en San Luis, Argentina
EXEC sp_Ciudades 'San Luis', 18;
EXEC sp_Ciudades 'Villa Mercedes', 18;
EXEC sp_Ciudades 'Merlo', 18;
EXEC sp_Ciudades 'La Toma', 18;
EXEC sp_Ciudades 'Juana Koslay', 18;

-- Insertar ciudades en Santa Cruz, Argentina
EXEC sp_Ciudades 'Río Gallegos', 19;
EXEC sp_Ciudades 'Caleta Olivia', 19;
EXEC sp_Ciudades 'El Calafate', 19;
EXEC sp_Ciudades 'Pico Truncado', 19;
EXEC sp_Ciudades 'Las Heras', 19;

-- Insertar ciudades en Santa Fe, Argentina
EXEC sp_Ciudades 'Santa Fe', 20;
EXEC sp_Ciudades 'Rosario', 20;
EXEC sp_Ciudades 'Santo Tomé', 20;
EXEC sp_Ciudades 'Venado Tuerto', 20;
EXEC sp_Ciudades 'Reconquista', 20;

-- Insertar ciudades en Santiago del Estero, Argentina
EXEC sp_Ciudades 'Santiago del Estero', 21;
EXEC sp_Ciudades 'La Banda', 21;
EXEC sp_Ciudades 'Termas de Río Hondo', 21;
EXEC sp_Ciudades 'Añatuya', 21;
EXEC sp_Ciudades 'Fernández', 21;

-- Insertar ciudades en Tierra del Fuego, Argentina
EXEC sp_Ciudades 'Ushuaia', 22;
EXEC sp_Ciudades 'Río Grande', 22;
EXEC sp_Ciudades 'Tolhuin', 22;
EXEC sp_Ciudades 'Puerto Williams', 22;
EXEC sp_Ciudades 'Punta Arenas', 22;

-- Insertar ciudades en Tucumán, Argentina
EXEC sp_Ciudades 'San Miguel de Tucumán', 23;
EXEC sp_Ciudades 'Yerba Buena', 23;
EXEC sp_Ciudades 'Tafí Viejo', 23;
EXEC sp_Ciudades 'Banda del Río Salí', 23;
EXEC sp_Ciudades 'Concepción', 23;

-- Insertar un tipo de contacto
EXEC sp_TipoContactos 'Teléfono';

-- Insertar otro tipo de contacto
EXEC sp_TipoContactos 'Correo electrónico';

-- Ejemplo 1: Insertar una temporada de verano
EXEC sp_Temporadas 'Temporada de verano';

-- Ejemplo 2: Insertar una temporada de invierno
EXEC sp_Temporadas 'Temporada de invierno';

-- Ejemplo 3: Insertar una temporada de otoño
EXEC sp_Temporadas 'Temporada de otoño';

-- Ejemplo 4: Insertar una temporada de primavera
EXEC sp_Temporadas 'Temporada de primavera';

-- Ejemplo 1: Insertar Inglés
EXEC sp_Idiomas 'Inglés';

-- Ejemplo 2: Insertar Español
EXEC sp_Idiomas 'Español';

-- Ejemplo 3: Insertar Alemán
EXEC sp_Idiomas 'Alemán';

-- Ejemplo 4: Insertar Francés
EXEC sp_Idiomas 'Francés';

-- Ejemplo 5: Insertar Italiano
EXEC sp_Idiomas 'Italiano';

-- Ejemplo 6: Insertar Portugués
EXEC sp_Idiomas 'Portugués';

-- Ejemplo 7: Insertar Japonés
EXEC sp_Idiomas 'Japonés';

-- Ejemplo 1: Insertar clasificación "PG"
EXEC sp_Clasificaciones 'PG';

-- Ejemplo 2: Insertar clasificación "PG-13"
EXEC sp_Clasificaciones 'PG-13';

-- Ejemplo 3: Insertar clasificación "R"
EXEC sp_Clasificaciones 'R';

-- Ejemplo 4: Insertar clasificación "NC-17"
EXEC sp_Clasificaciones 'NC-17';

-- Ejemplo 5: Insertar clasificación "G"
EXEC sp_Clasificaciones 'ATP';

EXEC sp_Generos_de_Peliculas 'Comedia';
EXEC sp_Generos_de_Peliculas 'Romance';
EXEC sp_Generos_de_Peliculas 'Aventuras';
EXEC sp_Generos_de_Peliculas 'Fantasía';
EXEC sp_Generos_de_Peliculas 'Terror';
EXEC sp_Generos_de_Peliculas 'Acción';
EXEC sp_Generos_de_Peliculas 'Drama';
EXEC sp_Generos_de_Peliculas 'Western';
EXEC sp_Generos_de_Peliculas 'Ciencia ficción';
EXEC sp_Generos_de_Peliculas 'Crimen';

EXEC sp_Descuentos 'Ninguno', 0;
-- Ejemplo 1: Descuento para jubilados (20% de descuento)
EXEC sp_Descuentos 'Jubilados', 20;

-- Ejemplo 2: Descuento para estudiantes (15% de descuento)
EXEC sp_Descuentos 'Estudiantes', 15;

-- Ejemplo 3: Descuento para menores de edad (10% de descuento)
EXEC sp_Descuentos 'Menores', 10;

-- Ejemplo 4: Descuento para grupos grandes (25% de descuento)
EXEC sp_Descuentos 'Grupos Grandes', 25;

-- Ejemplo 5: Descuento para miembros del club de cine (30% de descuento)
EXEC sp_Descuentos 'Club de Cine', 30;

-- Ejemplo 1: Estado "Ocupado"
EXEC sp_Estados_Butacas 'Ocupado';

-- Ejemplo 2: Estado "Libre"
EXEC sp_Estados_Butacas 'Libre';

-- Ejemplo 3: Estado "Reservado"
EXEC sp_Estados_Butacas 'Reservado';

-- Ciudad: Córdoba
-- Barrios en Córdoba
EXEC sp_Barrios 'Nueva Córdoba', 1;
EXEC sp_Barrios 'Alberdi', 1;
EXEC sp_Barrios 'General Paz', 1;

-- Ciudad: Villa María
-- Barrios en Villa María
EXEC sp_Barrios 'Centro', 2;
EXEC sp_Barrios 'Banda Norte', 2;
EXEC sp_Barrios 'Las Acacias', 2;

-- Ciudad: Río Cuarto
-- Barrios en Río Cuarto
EXEC sp_Barrios 'Centro', 3;
EXEC sp_Barrios 'Alberdi', 3;
EXEC sp_Barrios 'Bimaco', 3;

-- Ciudad: San Francisco
-- Barrios en San Francisco
EXEC sp_Barrios 'Centro', 4;
EXEC sp_Barrios 'San Cayetano', 4;
EXEC sp_Barrios '9 de Julio', 4;

-- Ciudad: Carlos Paz
-- Barrios en Carlos Paz
EXEC sp_Barrios 'Centro', 5;
EXEC sp_Barrios 'Villa del Lago', 5;
EXEC sp_Barrios 'Sol y Río', 5;

-- Ciudad: Buenos Aires
-- Barrios en Buenos Aires
EXEC sp_Barrios 'Recoleta', 6;
EXEC sp_Barrios 'Palermo', 6;
EXEC sp_Barrios 'San Telmo', 6;

-- Ciudad: La Plata
-- Barrios en La Plata
EXEC sp_Barrios 'Centro', 7;
EXEC sp_Barrios 'La Loma', 7;
EXEC sp_Barrios 'Gonnet', 7;

-- Ciudad: Mar del Plata
-- Barrios en Mar del Plata
EXEC sp_Barrios 'Centro', 8;
EXEC sp_Barrios 'La Perla', 8;
EXEC sp_Barrios 'Güemes', 8;

-- Ciudad: Rosario
-- Barrios en Rosario
EXEC sp_Barrios 'Centro', 9;
EXEC sp_Barrios 'Fisherton', 9;
EXEC sp_Barrios 'Pichincha', 9;

-- Ciudad: San Isidro
-- Barrios en San Isidro
EXEC sp_Barrios 'San Isidro Centro', 10;
EXEC sp_Barrios 'Beccar', 10;
EXEC sp_Barrios 'Martínez', 10;

-- Ciudad: San Fernando del Valle de Catamarca
-- Barrios en San Fernando del Valle de Catamarca
EXEC sp_Barrios 'Centro', 11;
EXEC sp_Barrios 'El Alto', 11;
EXEC sp_Barrios 'La Carrera', 11;

-- Ciudad: Andalgalá
-- Barrios en Andalgalá
EXEC sp_Barrios 'Centro', 12;
EXEC sp_Barrios 'Las Juntas', 12;
EXEC sp_Barrios 'El Potrero', 12;

-- Ciudad: Tinogasta
-- Barrios en Tinogasta
EXEC sp_Barrios 'Centro', 13;
EXEC sp_Barrios 'Villa Hualfín', 13;
EXEC sp_Barrios 'San José', 13;

-- Ciudad: Belén
-- Barrios en Belén
EXEC sp_Barrios 'Centro', 14;
EXEC sp_Barrios 'Los Reartes', 14;
EXEC sp_Barrios 'Las Juntas', 14;

-- Ciudad: Santa María
-- Barrios en Santa María
EXEC sp_Barrios 'Centro', 15;
EXEC sp_Barrios 'Villa San José', 15;
EXEC sp_Barrios 'San Roque', 15;

-- Ciudad: Resistencia
-- Barrios en Resistencia
EXEC sp_Barrios 'Centro', 16;
EXEC sp_Barrios 'Villa Centenario', 16;
EXEC sp_Barrios 'Villa Alvear', 16;

-- Ciudad: Barranqueras
-- Barrios en Barranqueras
EXEC sp_Barrios 'Centro', 17;
EXEC sp_Barrios 'Villa España', 17;
EXEC sp_Barrios 'La Toma', 17;

-- Ciudad: Fontana
-- Barrios en Fontana
EXEC sp_Barrios 'Centro', 18;
EXEC sp_Barrios 'Villa Libertad', 18;
EXEC sp_Barrios 'San Isidro', 18;

-- Ciudad: Presidencia Roque Sáenz Peña
-- Barrios en Presidencia Roque Sáenz Peña
EXEC sp_Barrios 'Centro', 19;
EXEC sp_Barrios 'Villa Don Enrique', 19;
EXEC sp_Barrios 'Güemes', 19;

-- Ciudad: Charata
-- Barrios en Charata
EXEC sp_Barrios 'Centro', 20;
EXEC sp_Barrios 'Villa San Martín', 20;
EXEC sp_Barrios 'Itatí', 20;

-- Ciudad: Comodoro Rivadavia
-- Barrios en Comodoro Rivadavia
EXEC sp_Barrios 'Centro', 21;
EXEC sp_Barrios 'Stella Maris', 21;
EXEC sp_Barrios 'Km 3', 21;

-- Ciudad: Rawson
-- Barrios en Rawson
EXEC sp_Barrios 'Centro', 22;
EXEC sp_Barrios 'Playa Unión', 22;
EXEC sp_Barrios 'Trelew Chico', 22;

-- Ciudad: Trelew
-- Barrios en Trelew
EXEC sp_Barrios 'Centro', 23;
EXEC sp_Barrios 'Máximo Abásolo', 23;
EXEC sp_Barrios 'Tiro Federal', 23;

-- Ciudad: Puerto Madryn
-- Barrios en Puerto Madryn
EXEC sp_Barrios 'Centro', 24;
EXEC sp_Barrios 'Madryn Nuevo', 24;
EXEC sp_Barrios 'Güemes', 24;

-- Ciudad: Corrientes
-- Barrios en Corrientes
EXEC sp_Barrios 'Centro', 26;
EXEC sp_Barrios 'Bella Vista', 26;
EXEC sp_Barrios 'Ituzaingó', 26;

-- Ciudad: Goya
-- Barrios en Goya
EXEC sp_Barrios 'Centro', 27;
EXEC sp_Barrios 'Güemes', 27;
EXEC sp_Barrios 'La Paz', 27;

-- Ciudad: Mercedes
-- Barrios en Mercedes
EXEC sp_Barrios 'Centro', 28;
EXEC sp_Barrios 'San Martín', 28;
EXEC sp_Barrios 'Santa Rita', 28;

-- Ciudad: Curuzú Cuatiá
-- Barrios en Curuzú Cuatiá
EXEC sp_Barrios 'Centro', 29;
EXEC sp_Barrios 'San Juan', 29;
EXEC sp_Barrios 'Santa Rosa', 29;

-- Ciudad: Paso de los Libres
-- Barrios en Paso de los Libres
EXEC sp_Barrios 'Centro', 30;
EXEC sp_Barrios 'San Pedro', 30;
EXEC sp_Barrios 'Ituzaingó', 30;

-- Ciudad: Paraná
-- Barrios en Paraná
EXEC sp_Barrios 'Centro', 31;
EXEC sp_Barrios 'Alberdi', 31;
EXEC sp_Barrios 'Bajada Grande', 31;

-- Ciudad: Concordia
-- Barrios en Concordia
EXEC sp_Barrios 'Centro', 32;
EXEC sp_Barrios 'La Bianca', 32;
EXEC sp_Barrios 'Los Pájaros', 32;

-- Ciudad: Gualeguaychú
-- Barrios en Gualeguaychú
EXEC sp_Barrios 'Centro', 33;
EXEC sp_Barrios 'Barrio 1', 33;
EXEC sp_Barrios 'Barrio 2', 33;

-- Ciudad: Victoria
-- Barrios en Victoria
EXEC sp_Barrios 'Centro', 34;
EXEC sp_Barrios 'Santa Rosa', 34;
EXEC sp_Barrios 'San Martín', 34;

-- Ciudad: Formosa
-- Barrios en Formosa
EXEC sp_Barrios 'Centro', 36;
EXEC sp_Barrios 'San Francisco', 36;
EXEC sp_Barrios 'Obrero', 36;

-- Ciudad: Clorinda
-- Barrios en Clorinda
EXEC sp_Barrios 'Centro', 37;
EXEC sp_Barrios '25 de Mayo', 37;
EXEC sp_Barrios 'San José', 37;

-- Ciudad: Pirané
-- Barrios en Pirané
EXEC sp_Barrios 'Centro', 38;
EXEC sp_Barrios 'Bicentenario', 38;
EXEC sp_Barrios 'San Cayetano', 38;

-- Ciudad: Las Lomitas
-- Barrios en Las Lomitas
EXEC sp_Barrios 'Centro', 39;
EXEC sp_Barrios 'Norte', 39;
EXEC sp_Barrios 'Este', 39;

-- Ciudad: El Colorado
-- Barrios en El Colorado
EXEC sp_Barrios 'Centro', 40;
EXEC sp_Barrios 'San Antonio', 40;
EXEC sp_Barrios '25 de Mayo', 40;

-- Ciudad: San Salvador de Jujuy
-- Barrios en San Salvador de Jujuy
EXEC sp_Barrios 'Centro', 45;
EXEC sp_Barrios 'Bajo La Viña', 45;
EXEC sp_Barrios 'San Pedrito', 45;

-- Ciudad: Palpalá
-- Barrios en Palpalá
EXEC sp_Barrios 'Centro', 46;
EXEC sp_Barrios 'Mariano Moreno', 46;
EXEC sp_Barrios 'Jardín', 46;

-- Ciudad: San Pedro
-- Barrios en San Pedro
EXEC sp_Barrios 'Centro', 47;
EXEC sp_Barrios 'Santa Bárbara', 47;
EXEC sp_Barrios 'San Francisco', 47;

-- Ciudad: La Quiaca
-- Barrios en La Quiaca
EXEC sp_Barrios 'Centro', 48;
EXEC sp_Barrios 'El Cóndor', 48;
EXEC sp_Barrios 'La Puna', 48;

-- Ciudad: Humahuaca
-- Barrios en Humahuaca
EXEC sp_Barrios 'Centro', 49;
EXEC sp_Barrios 'Tilcara', 49;
EXEC sp_Barrios 'Uquía', 49;

-- Ciudad: Santa Rosa
-- Barrios en Santa Rosa
EXEC sp_Barrios 'Centro', 50;
EXEC sp_Barrios 'Toay', 50;
EXEC sp_Barrios 'Alberdi', 50;

-- Ciudad: General Pico
-- Barrios en General Pico
EXEC sp_Barrios 'Centro', 51;
EXEC sp_Barrios 'Roca', 51;
EXEC sp_Barrios 'Federal', 51;

-- Ciudad: Toay
-- Barrios en Toay
EXEC sp_Barrios 'Centro', 52;
EXEC sp_Barrios 'San Cayetano', 52;
EXEC sp_Barrios 'Los Fresnos', 52;

-- Ciudad: La Rioja
-- Barrios en La Rioja
EXEC sp_Barrios 'Centro', 58;
EXEC sp_Barrios 'San Vicente', 58;
EXEC sp_Barrios 'Los Sarmientos', 58;

-- Ciudad: Chamical
-- Barrios en Chamical
EXEC sp_Barrios 'Centro', 59;
EXEC sp_Barrios 'San Antonio', 59;
EXEC sp_Barrios 'La Florida', 59;

-- Ciudad: Aimogasta
-- Barrios en Aimogasta
EXEC sp_Barrios 'Centro', 60;
EXEC sp_Barrios 'San José', 60;
EXEC sp_Barrios 'Los Alamos', 60;

-- Ciudad: Mendoza
-- Barrios en Mendoza
EXEC sp_Barrios 'Centro', 61;
EXEC sp_Barrios 'Godoy Cruz Centro', 62;
EXEC sp_Barrios 'San Rafael Centro', 63;

-- Ciudad: Godoy Cruz
-- Barrios en Godoy Cruz
EXEC sp_Barrios 'Villa Hipódromo', 64;
EXEC sp_Barrios 'San Vicente', 64;
EXEC sp_Barrios 'Gral. San Martín', 64;

-- Ciudad: San Rafael
-- Barrios en San Rafael
EXEC sp_Barrios 'Ciudad', 65;
EXEC sp_Barrios 'Villa 25 de Mayo', 65;
EXEC sp_Barrios 'San Isidro', 65;

-- Ciudad: Posadas
-- Barrios en Posadas
EXEC sp_Barrios 'Centro', 66;
EXEC sp_Barrios 'Villa Sarita', 66;
EXEC sp_Barrios 'Itaembé Miní', 66;

-- Ciudad: Garupá
-- Barrios en Garupá
EXEC sp_Barrios 'Centro', 67;
EXEC sp_Barrios 'San Alberto', 67;
EXEC sp_Barrios 'Virgen del Rosario', 67;

-- Ciudad: Oberá
-- Barrios en Oberá
EXEC sp_Barrios 'Centro', 68;
EXEC sp_Barrios 'Villa Stemberg', 68;
EXEC sp_Barrios 'Villa Schuster', 68;

-- Ciudad: Neuquén
-- Barrios en Neuquén
EXEC sp_Barrios 'Centro', 69;
EXEC sp_Barrios 'Confluencia', 69;
EXEC sp_Barrios 'Santo Tomás', 69;

-- Ciudad: Plottier
-- Barrios en Plottier
EXEC sp_Barrios 'Centro', 70;
EXEC sp_Barrios 'Villa Ceferino', 70;
EXEC sp_Barrios 'San Sebastián', 70;

-- Ciudad: Cutral-Có
-- Barrios en Cutral-Có
EXEC sp_Barrios 'Centro', 71;
EXEC sp_Barrios 'Barrio 500 Viviendas', 71;
EXEC sp_Barrios 'Barrio Petrolero', 71;

-- Ciudad: Centenario
-- Barrios en Centenario
EXEC sp_Barrios 'Centro', 72;
EXEC sp_Barrios 'Barrio Unión', 72;
EXEC sp_Barrios 'Barrio Altos del Limay', 72;

-- Ciudad: Zapala
-- Barrios en Zapala
EXEC sp_Barrios 'Centro', 73;
EXEC sp_Barrios 'Barrio Norte', 73;
EXEC sp_Barrios 'Barrio San Martín', 73;

-- Ciudad: Viedma
-- Barrios en Viedma
EXEC sp_Barrios 'Centro', 74;
EXEC sp_Barrios 'Barrio Lavalle', 74;
EXEC sp_Barrios 'Barrio Don Bosco', 74;

-- Ciudad: San Carlos de Bariloche
-- Barrios en San Carlos de Bariloche
EXEC sp_Barrios 'Centro', 75;
EXEC sp_Barrios 'Barrio El Frutillar', 75;
EXEC sp_Barrios 'Barrio Las Victorias', 75;

-- Ciudad: General Roca
-- Barrios en General Roca
EXEC sp_Barrios 'Centro', 76;
EXEC sp_Barrios 'Barrio Belgrano', 76;
EXEC sp_Barrios 'Barrio Norte', 76;

-- Ciudad: Cipolletti
-- Barrios en Cipolletti
EXEC sp_Barrios 'Centro', 77;
EXEC sp_Barrios 'Barrio Don Bosco', 77;
EXEC sp_Barrios 'Barrio Santa Clara', 77;

-- Ciudad: Cinco Saltos
-- Barrios en Cinco Saltos
EXEC sp_Barrios 'Centro', 78;
EXEC sp_Barrios 'Barrio Unión', 78;
EXEC sp_Barrios 'Barrio Belgrano', 78;

-- Ciudad: Salta
-- Barrios en Salta
EXEC sp_Barrios 'Centro', 79;
EXEC sp_Barrios 'Barrio San Lorenzo', 79;
EXEC sp_Barrios 'Barrio Tres Cerritos', 79;

-- Ciudad: San Salvador de Jujuy
-- Barrios en San Salvador de Jujuy
EXEC sp_Barrios 'Centro', 80;
EXEC sp_Barrios 'Barrio Gorriti', 80;
EXEC sp_Barrios 'Barrio Los Perales', 80;

-- Ciudad: San Juan
-- Barrios en San Juan
EXEC sp_Barrios 'Centro', 81;
EXEC sp_Barrios 'Barrio Huarpes', 81;
EXEC sp_Barrios 'Barrio Concepción', 81;

-- Ciudad: Rawson
-- Barrios en Rawson
EXEC sp_Barrios 'Centro', 82;
EXEC sp_Barrios 'Barrio San José', 82;
EXEC sp_Barrios 'Barrio San Roque', 82;

-- Ciudad: Pocito
-- Barrios en Pocito
EXEC sp_Barrios 'Centro', 83;
EXEC sp_Barrios 'Barrio La Rinconada', 83;
EXEC sp_Barrios 'Barrio Villa del Bono', 83;

-- Ciudad: Caucete
-- Barrios en Caucete
EXEC sp_Barrios 'Centro', 84;
EXEC sp_Barrios 'Barrio Santa Bárbara', 84;
EXEC sp_Barrios 'Barrio Los Álamos', 84;

-- Ciudad: Santa Lucía
-- Barrios en Santa Lucía
EXEC sp_Barrios 'Centro', 85;
EXEC sp_Barrios 'Barrio Villa Krause', 85;
EXEC sp_Barrios 'Barrio Santa Lucía', 85;

-- Ciudad: San Luis
-- Barrios en San Luis
EXEC sp_Barrios 'Centro', 86;
EXEC sp_Barrios 'Barrio La Ribera', 86;
EXEC sp_Barrios 'Barrio San Martín', 86;

-- Ciudad: Villa Mercedes
-- Barrios en Villa Mercedes
EXEC sp_Barrios 'Centro', 87;
EXEC sp_Barrios 'Barrio San Antonio', 87;
EXEC sp_Barrios 'Barrio La Florida', 87;

-- Ciudad: Merlo
-- Barrios en Merlo
EXEC sp_Barrios 'Centro', 88;
EXEC sp_Barrios 'Barrio Los Lapachos', 88;
EXEC sp_Barrios 'Barrio El Rincón', 88;

-- Ciudad: La Toma
-- Barrios en La Toma
EXEC sp_Barrios 'Centro', 89;
EXEC sp_Barrios 'Barrio 20 de Junio', 89;
EXEC sp_Barrios 'Barrio La Toma', 89;

-- Ciudad: Juana Koslay
-- Barrios en Juana Koslay
EXEC sp_Barrios 'Centro', 90;
EXEC sp_Barrios 'Barrio Solares del Sur', 90;
EXEC sp_Barrios 'Barrio La Florida', 90;

-- Ciudad: Río Gallegos, Santa Cruz
-- Barrios en Río Gallegos
EXEC sp_Barrios 'Centro', 91;
EXEC sp_Barrios 'Barrio San Benito', 91;
EXEC sp_Barrios 'Barrio Bicentenario', 91;

-- Ciudad: Caleta Olivia, Santa Cruz
-- Barrios en Caleta Olivia
EXEC sp_Barrios 'Centro', 92;
EXEC sp_Barrios 'Barrio 3 de Febrero', 92;
EXEC sp_Barrios 'Barrio San Miguel', 92;

-- Ciudad: El Calafate, Santa Cruz
-- Barrios en El Calafate
EXEC sp_Barrios 'Centro', 93;
EXEC sp_Barrios 'Barrio Lago Argentino', 93;
EXEC sp_Barrios 'Barrio Los Pájaros', 93;

-- Ciudad: Pico Truncado, Santa Cruz
-- Barrios en Pico Truncado
EXEC sp_Barrios 'Centro', 94;
EXEC sp_Barrios 'Barrio San Martín', 94;
EXEC sp_Barrios 'Barrio 9 de Julio', 94;

-- Ciudad: Las Heras, Santa Cruz
-- Barrios en Las Heras
EXEC sp_Barrios 'Centro', 95;
EXEC sp_Barrios 'Barrio San Cayetano', 95;
EXEC sp_Barrios 'Barrio 12 de Octubre', 95;

-- Ciudad: Santa Fe, Santa Fe
-- Barrios en Santa Fe
EXEC sp_Barrios 'Centro', 96;
EXEC sp_Barrios 'Barrio Candioti', 96;
EXEC sp_Barrios 'Barrio Guadalupe', 96;

-- Ciudad: Rosario, Santa Fe
-- Barrios en Rosario
EXEC sp_Barrios 'Centro', 97;
EXEC sp_Barrios 'Barrio Pichincha', 97;
EXEC sp_Barrios 'Barrio Fisherton', 97;

-- Ciudad: Santo Tomé, Santa Fe
-- Barrios en Santo Tomé
EXEC sp_Barrios 'Centro', 98;
EXEC sp_Barrios 'Barrio 7 Jefes', 98;
EXEC sp_Barrios 'Barrio Don Bosco', 98;

-- Ciudad: Venado Tuerto, Santa Fe
-- Barrios en Venado Tuerto
EXEC sp_Barrios 'Centro', 99;
EXEC sp_Barrios 'Barrio Belgrano', 99;
EXEC sp_Barrios 'Barrio Villa Casey', 99;

-- Ciudad: Reconquista, Santa Fe
-- Barrios en Reconquista
EXEC sp_Barrios 'Centro', 100;
EXEC sp_Barrios 'Barrio La Loma', 100;
EXEC sp_Barrios 'Barrio Don Antonio', 100;

-- Ciudad: Santiago del Estero, Santiago del Estero
-- Barrios en Santiago del Estero
EXEC sp_Barrios 'Centro', 101;
EXEC sp_Barrios 'Barrio General Paz', 101;
EXEC sp_Barrios 'Barrio Belgrano', 101;

-- Ciudad: Ushuaia, Tierra del Fuego
-- Barrios en Ushuaia
EXEC sp_Barrios 'Centro', 102;
EXEC sp_Barrios 'Barrio Río Pipo', 102;
EXEC sp_Barrios 'Barrio Andorra', 102;

-- Ciudad: San Miguel de Tucumán, Tucumán
-- Barrios en San Miguel de Tucumán
EXEC sp_Barrios 'Centro', 103;
EXEC sp_Barrios 'Barrio Norte', 103;
EXEC sp_Barrios 'Barrio Sur', 103;

-- Ciudad: La Banda, Santiago del Estero
-- Barrios en La Banda
EXEC sp_Barrios 'Centro', 104;
EXEC sp_Barrios 'Barrio Almirante Brown', 104;
EXEC sp_Barrios 'Barrio 25 de Mayo', 104;

-- Ciudad: Río Grande, Tierra del Fuego
-- Barrios en Río Grande
EXEC sp_Barrios 'Centro', 105;
EXEC sp_Barrios 'Barrio Chacra II', 105;
EXEC sp_Barrios 'Barrio Malvinas Argentinas', 105;

-- Ciudad: Yerba Buena, Tucumán
-- Barrios en Yerba Buena
EXEC sp_Barrios 'Centro', 106;
EXEC sp_Barrios 'Barrio San Jorge', 106;
EXEC sp_Barrios 'Barrio San Ignacio', 106;

-- Ciudad: Termas de Río Hondo, Santiago del Estero
-- Barrios en Termas de Río Hondo
EXEC sp_Barrios 'Centro', 107;
EXEC sp_Barrios 'Barrio El Mirador', 107;
EXEC sp_Barrios 'Barrio El Bosque', 107;

-- Ciudad: Tolhuin, Tierra del Fuego
-- Barrios en Tolhuin
EXEC sp_Barrios 'Centro', 108;
EXEC sp_Barrios 'Barrio Dos Banderas', 108;
EXEC sp_Barrios 'Barrio 11 de Noviembre', 108;

-- Ciudad: Tafí Viejo, Tucumán
-- Barrios en Tafí Viejo
EXEC sp_Barrios 'Centro', 109;
EXEC sp_Barrios 'Barrio Las Talitas', 109;
EXEC sp_Barrios 'Barrio El Colmenar', 109;

-- Ejemplo 1: Insertar una persona
EXEC sp_Personas 'Juan', 'Pérez', 'M', '12345678', '1990-01-15', 'Calle 123', 1;

-- Ejemplo 2: Insertar otra persona
EXEC sp_Personas 'María', 'González', 'F', '98765432', '1985-06-20', 'Av. Principal', 2;

-- Ejemplo 3
EXEC sp_Personas 'Carlos', 'Martínez', 'M', '23456789', '1987-03-10', 'Calle 456', 3;

-- Ejemplo 4
EXEC sp_Personas 'Ana', 'López', 'F', '87654321', '1992-09-05', 'Av. Secundaria', 4;

-- Ejemplo 5
EXEC sp_Personas 'Luis', 'Rodríguez', 'M', '34567890', '1984-12-25', 'Calle Principal', 5;

-- Ejemplo 6
EXEC sp_Personas 'Laura', 'Fernández', 'F', '76543210', '1995-07-15', 'Av. Central', 6;

-- Ejemplo 7
EXEC sp_Personas 'Pedro', 'Sánchez', 'M', '45678901', '1988-04-30', 'Calle 789', 7;

-- Ejemplo 8
EXEC sp_Personas 'Silvia', 'Torres', 'F', '65432109', '1991-11-12', 'Av. Norte', 8;

-- Ejemplo 9
EXEC sp_Personas 'Jorge', 'Gómez', 'M', '56789012', '1983-02-08', 'Calle 1011', 9;

-- Ejemplo 10
EXEC sp_Personas 'Marcela', 'Díaz', 'F', '54321098', '1990-03-18', 'Av. Sur', 10;

-- Ejemplo 11
EXEC sp_Personas 'Gabriel', 'Ramírez', 'M', '67890123', '1986-08-04', 'Calle 1213', 11;

-- Ejemplo 12
EXEC sp_Personas 'Laura', 'Ponce', 'F', '43210987', '1993-05-22', 'Av. Oeste', 12;

-- Ejemplo 13
EXEC sp_Personas 'Daniel', 'Hernández', 'M', '78901234', '1982-10-01', 'Calle 1415', 13;

-- Ejemplo 14
EXEC sp_Personas 'Florencia', 'Ortega', 'F', '32109876', '1994-07-27', 'Av. Este', 14;

-- Ejemplo 15
EXEC sp_Personas 'Martín', 'Silva', 'M', '89012345', '1989-12-10', 'Calle 1617', 15;

-- Ejemplo 16
EXEC sp_Personas 'Carmen', 'Molina', 'F', '21098765', '1998-01-05', 'Av. Occidente', 16;

-- Ejemplo 17
EXEC sp_Personas 'José', 'Paz', 'M', '90123456', '1981-06-15', 'Calle 1819', 17;

-- Ejemplo 18
EXEC sp_Personas 'Patricia', 'Vargas', 'F', '10987654', '1997-09-20', 'Av. Central', 18;

-- Ejemplo 19
EXEC sp_Personas 'Lorenzo', 'Ríos', 'M', '01234567', '1980-03-30', 'Calle 2021', 19;

-- Ejemplo 20
EXEC sp_Personas 'Valentina', 'Ferreyra', 'F', '09876543', '1996-12-25', 'Av. Principal', 20;

-- Ejemplo 21
EXEC sp_Personas 'Matías', 'Luna', 'M', '12345670', '1987-07-01', 'Calle 2223', 21;

-- Ejemplo 22
EXEC sp_Personas 'Isabel', 'Cabrera', 'F', '98765430', '1992-11-10', 'Av. Norte', 22;

-- Ejemplo 23
EXEC sp_Personas 'Felipe', 'Mendez', 'M', '23456780', '1985-05-15', 'Calle 2425', 23;

-- Ejemplo 24
EXEC sp_Personas 'Camila', 'Lagos', 'F', '87654320', '1990-09-20', 'Av. Sur', 24;

-- Ejemplo 25
EXEC sp_Personas 'Ricardo', 'Cáceres', 'M', '34567890', '1983-01-05', 'Calle 2627', 25;

-- Ejemplo 26
EXEC sp_Personas 'Adriana', 'Gutiérrez', 'F', '76543210', '1995-04-12', 'Av. Oeste', 26;

-- Ejemplo 27
EXEC sp_Personas 'Héctor', 'Soto', 'M', '45678901', '1989-10-25', 'Calle 2829', 27;

-- Ejemplo 28
EXEC sp_Personas 'Natalia', 'Delgado', 'F', '65432109', '1991-02-15', 'Av. Este', 28;

-- Ejemplo 29
EXEC sp_Personas 'Antonio', 'Morales', 'M', '56789012', '1984-05-30', 'Calle 3031', 29;

-- Ejemplo 30
EXEC sp_Personas 'Valeria', 'Mendoza', 'F', '43210987', '1993-08-20', 'Av. Occidente', 30;

-- Ejemplo 31
EXEC sp_Personas 'Raúl', 'Peralta', 'M', '78901234', '1988-04-01', 'Calle 3233', 31;

-- Ejemplo 32
EXEC sp_Personas 'Luisa', 'Navarro', 'F', '32109876', '1994-10-10', 'Av. Central', 32;

-- Ejemplo 33
EXEC sp_Personas 'Eduardo', 'Aguirre', 'M', '89012345', '1981-03-25', 'Calle 3435', 33;

-- Ejemplo 34
EXEC sp_Personas 'Marina', 'Herrera', 'F', '21098765', '1997-06-12', 'Av. Principal', 34;

-- Ejemplo 35
EXEC sp_Personas 'Roberto', 'Sosa', 'M', '90123456', '1985-09-05', 'Calle 3637', 35;

-- Ejemplo 36
EXEC sp_Personas 'Cecilia', 'Castro', 'F', '10987654', '1992-12-30', 'Av. Norte', 36;

-- Ejemplo 37
EXEC sp_Personas 'Eduardo', 'Paz', 'M', '01234567', '1988-02-10', 'Calle 3839', 37;

-- Ejemplo 38
EXEC sp_Personas 'Clara', 'Molina', 'F', '09876543', '1995-04-15', 'Av. Sur', 38;

-- Ejemplo 39
EXEC sp_Personas 'Martín', 'Fernández', 'M', '12345670', '1982-11-20', 'Calle 4041', 39;

-- Ejemplo 40
EXEC sp_Personas 'Lorena', 'López', 'F', '98765430', '1993-06-05', 'Av. Oeste', 40;

-- Continuar con más ejemplos...
-- Ejemplo 3: Insertar una persona
EXEC sp_Personas 'Carlos', 'Gómez', 'M', '13579246', '1988-07-10', 'Calle 456', 143;

-- Ejemplo 4: Insertar otra persona
EXEC sp_Personas 'Laura', 'Fernández', 'F', '65432187', '1995-04-25', 'Av. Libertad', 88;

-- Ejemplo 5: Insertar otra persona
EXEC sp_Personas 'Pedro', 'Martínez', 'M', '78945612', '1983-11-30', 'Calle 789', 265;

-- Ejemplo 6: Insertar otra persona
EXEC sp_Personas 'Ana', 'Rodríguez', 'F', '98765432', '1992-09-15', 'Av. Principal', 72;

-- Ejemplo 7: Insertar otra persona
EXEC sp_Personas 'Luis', 'Hernández', 'M', '12348765', '1980-03-08', 'Calle 987', 209;

-- Ejemplo 41
EXEC sp_Personas 'Pedro', 'López', 'M', '56789012', '1988-03-10', 'Calle Progreso', 134;

-- Ejemplo 42
EXEC sp_Personas 'Ana', 'Rodríguez', 'F', '34567890', '1995-07-05', 'Av. Central', 72;

-- Ejemplo 43
EXEC sp_Personas 'Luis', 'Martínez', 'M', '43210987', '1982-11-18', 'Calle Primavera', 255;

-- Ejemplo 44
EXEC sp_Personas 'Sofía', 'Fernández', 'F', '87654321', '1993-04-22', 'Av. Libertad', 198;

-- Ejemplo 45
EXEC sp_Personas 'Javier', 'Gómez', 'M', '65432109', '1980-09-30', 'Calle Sol', 114;

-- Ejemplo 46
EXEC sp_Personas 'Valentina', 'Díaz', 'F', '78901234', '1991-12-15', 'Av. Independencia', 176;

-- Ejemplo 47
EXEC sp_Personas 'Mateo', 'Sánchez', 'M', '89012345', '1987-02-28', 'Calle Luna', 64;

-- Ejemplo 41
EXEC sp_Personas 'Carlos', 'López', 'M', '34567890', '1992-04-08', 'Calle 456', 153;

-- Ejemplo 42
EXEC sp_Personas 'Ana', 'Rodríguez', 'F', '23456789', '1988-09-15', 'Av. Central', 75;

-- Ejemplo 43
EXEC sp_Personas 'José', 'Martínez', 'M', '56789012', '1995-12-20', 'Calle 789', 112;

-- Ejemplo 44
EXEC sp_Personas 'Laura', 'Fernández', 'F', '67890123', '1983-07-05', 'Av. Norte', 248;

-- Ejemplo 45
EXEC sp_Personas 'Manuel', 'Gómez', 'M', '78901234', '1980-03-12', 'Calle 901', 36;

-- Ejemplo 46
EXEC sp_Personas 'Mónica', 'Sánchez', 'F', '89012345', '1998-11-25', 'Av. Este', 212;

-- Ejemplo 47
EXEC sp_Personas 'Ricardo', 'Torres', 'M', '12345987', '1981-06-30', 'Calle 345', 177;

-- Ejemplo 48
EXEC sp_Personas 'Susana', 'Díaz', 'F', '23459876', '1987-04-18', 'Av. Oeste', 50;

-- Ejemplo 49
EXEC sp_Personas 'Diego', 'Hernández', 'M', '34598765', '1993-02-22', 'Calle 678', 99;

-- Ejemplo 50
EXEC sp_Personas 'Isabel', 'López', 'F', '45987654', '1989-08-10', 'Av. Sur', 188;

-- Ejemplo 51
EXEC sp_Personas 'Carlos', 'Fernández', 'M', '59876543', '1996-05-27', 'Calle 123', 37;

-- Ejemplo 52
EXEC sp_Personas 'María', 'García', 'F', '98765432', '1984-01-03', 'Av. Principal', 112;

-- Ejemplo 53
EXEC sp_Personas 'Javier', 'Sánchez', 'M', '87654321', '1991-10-14', 'Calle 456', 189;

-- Ejemplo 54
EXEC sp_Personas 'Laura', 'Torres', 'F', '76543210', '1986-07-28', 'Av. Central', 69;

-- Ejemplo 55
EXEC sp_Personas 'Sergio', 'González', 'M', '65432109', '1990-03-01', 'Calle 789', 245;

-- Ejemplo 56
EXEC sp_Personas 'Carolina', 'Martínez', 'F', '54321098', '1982-11-06', 'Av. Norte', 112;

-- Ejemplo 57
EXEC sp_Personas 'Luis', 'Díaz', 'M', '43210987', '1997-08-18', 'Calle 901', 78;

-- Ejemplo 58
EXEC sp_Personas 'Silvia', 'Hernández', 'F', '32109876', '1988-04-23', 'Av. Este', 155;

-- Ejemplo 59
EXEC sp_Personas 'Pedro', 'Gómez', 'M', '21098765', '1985-01-15', 'Calle 345', 200;

-- Ejemplo 60
EXEC sp_Personas 'Marta', 'Sánchez', 'F', '10987654', '1994-06-10', 'Av. Oeste', 27;

-- Ejemplo 61
EXEC sp_Personas 'Andrés', 'Torres', 'M', '09876543', '1999-03-09', 'Calle 678', 99;

-- Ejemplo 62
EXEC sp_Personas 'Rosa', 'López', 'F', '98765432', '1983-10-04', 'Av. Sur', 84;

-- Ejemplo 63
EXEC sp_Personas 'Roberto', 'García', 'M', '87654321', '1992-07-28', 'Calle 123', 140;

-- Ejemplo 64
EXEC sp_Personas 'Julia', 'Martínez', 'F', '76543210', '1987-05-12', 'Av. Principal', 173;

-- Ejemplo 65
EXEC sp_Personas 'Fernando', 'Torres', 'M', '65432109', '1996-12-30', 'Calle 456', 22;

-- Ejemplo 66
EXEC sp_Personas 'Alicia', 'Díaz', 'F', '54321098', '1981-02-15', 'Av. Central', 268;

-- Ejemplo 67
EXEC sp_Personas 'Oscar', 'Sánchez', 'M', '43210987', '1990-09-20', 'Calle 789', 61;

-- Ejemplo 68
EXEC sp_Personas 'Lorena', 'Hernández', 'F', '32109876', '1986-03-18', 'Av. Norte', 189;

-- Ejemplo 69
EXEC sp_Personas 'Jorge', 'Gómez', 'M', '21098765', '1988-11-10', 'Calle 901', 84;

-- Ejemplo 70
EXEC sp_Personas 'Patricia', 'Martínez', 'F', '10987654', '1995-04-09', 'Av. Este', 243;

-- Ejemplo 71
EXEC sp_Personas 'Gustavo', 'Sánchez', 'M', '09876543', '1987-01-25', 'Calle 345', 75;

-- Ejemplo 72
EXEC sp_Personas 'Camila', 'Torres', 'F', '98765432', '1993-06-08', 'Av. Oeste', 109;

-- Ejemplo 73
EXEC sp_Personas 'Carlos', 'López', 'M', '87654321', '1989-04-14', 'Calle 678', 226;

-- Ejemplo 74
EXEC sp_Personas 'María', 'González', 'F', '76543210', '1997-09-19', 'Av. Sur', 13;

-- Ejemplo 75
EXEC sp_Personas 'José', 'Martínez', 'M', '65432109', '1984-12-01', 'Calle 123', 215;

-- Ejemplo 76
EXEC sp_Personas 'Laura', 'Fernández', 'F', '54321098', '1992-08-07', 'Av. Principal', 67;

-- Ejemplo 77
EXEC sp_Personas 'Manuel', 'Gómez', 'M', '43210987', '1980-05-23', 'Calle 456', 179;

-- Ejemplo 78
EXEC sp_Personas 'Mónica', 'Sánchez', 'F', '32109876', '1988-10-16', 'Av. Central', 122;

-- Ejemplo 79
EXEC sp_Personas 'Ricardo', 'Torres', 'M', '21098765', '1995-07-28', 'Calle 789', 37;

-- Ejemplo 80
EXEC sp_Personas 'Susana', 'Díaz', 'F', '10987654', '1987-03-02', 'Av. Norte', 84;

-- Ejemplo 81
EXEC sp_Personas 'Diego', 'Hernández', 'M', '09876543', '1990-10-12', 'Calle 901', 29;

-- Ejemplo 82
EXEC sp_Personas 'Isabel', 'López', 'F', '98765432', '1982-05-06', 'Av. Este', 171;

-- Ejemplo 83
EXEC sp_Personas 'Carlos', 'Fernández', 'M', '87654321', '1998-02-19', 'Calle 345', 63;

-- Ejemplo 84
EXEC sp_Personas 'María', 'García', 'F', '76543210', '1983-09-17', 'Av. Oeste', 248;

-- Ejemplo 85
EXEC sp_Personas 'Javier', 'Sánchez', 'M', '65432109', '1994-04-22', 'Calle 678', 99;

-- Ejemplo 86
EXEC sp_Personas 'Laura', 'Torres', 'F', '54321098', '1986-11-25', 'Av. Sur', 202;

-- Ejemplo 87
EXEC sp_Personas 'Sergio', 'González', 'M', '43210987', '1993-06-20', 'Calle 123', 36;

-- Ejemplo 88
EXEC sp_Personas 'Carolina', 'Martínez', 'F', '32109876', '1989-03-15', 'Av. Principal', 155;

-- Ejemplo 89
EXEC sp_Personas 'Luis', 'Díaz', 'M', '21098765', '1981-10-08', 'Calle 456', 200;

-- Ejemplo 90
EXEC sp_Personas 'Silvia', 'Hernández', 'F', '10987654', '1996-07-11', 'Av. Central', 36;

-- Ejemplo 91
EXEC sp_Personas 'Pedro', 'Gómez', 'M', '09876543', '1984-04-03', 'Calle 789', 99;

-- Ejemplo 92
EXEC sp_Personas 'Marta', 'Sánchez', 'F', '98765432', '1999-09-14', 'Av. Norte', 214;

-- Ejemplo 93
EXEC sp_Personas 'Andrés', 'Torres', 'M', '87654321', '1980-02-22', 'Calle 901', 69;

-- Ejemplo 94
EXEC sp_Personas 'Rosa', 'López', 'F', '76543210', '1987-07-05', 'Av. Este', 105;

-- Ejemplo 95
EXEC sp_Personas 'Roberto', 'García', 'M', '65432109', '1992-03-10', 'Calle 345', 179;

-- Ejemplo 96
EXEC sp_Personas 'Julia', 'Martínez', 'F', '54321098', '1988-12-19', 'Av. Oeste', 48;

-- Ejemplo 97
EXEC sp_Personas 'Fernando', 'Torres', 'M', '43210987', '1997-09-27', 'Calle 678', 122;

-- Ejemplo 98
EXEC sp_Personas 'Alicia', 'Díaz', 'F', '32109876', '1985-01-02', 'Av. Sur', 184;

-- Ejemplo 99
EXEC sp_Personas 'Oscar', 'Sánchez', 'M', '21098765', '1991-06-25', 'Calle 123', 39;

-- Ejemplo 100
EXEC sp_Personas 'Lorena', 'Hernández', 'F', '10987654', '1983-04-28', 'Av. Principal', 7;

-- Para Juan Pérez (id_persona = 1)
EXEC sp_Contactos 1, '123-456-78', 1;  -- Teléfono
EXEC sp_Contactos 1, 'juan.perez@email.com', 2;  -- Correo electrónico

-- Para María González (id_persona = 2)
EXEC sp_Contactos 2, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 2, 'maria.gonzalez@email.com', 2;  -- Correo electrónico

-- Para Carlos Martínez (id_persona = 3)
EXEC sp_Contactos 3, '234-567-89', 1;  -- Teléfono
EXEC sp_Contactos 3, 'carlos.martinez@email.com', 2;  -- Correo electrónico

-- Para Ana López (id_persona = 4)
EXEC sp_Contactos 4, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 4, 'ana.lopez@email.com', 2;  -- Correo electrónico

-- Para Luis Rodríguez (id_persona = 5)
EXEC sp_Contactos 5, '345-678-90', 1;  -- Teléfono
EXEC sp_Contactos 5, 'luis.rodriguez@email.com', 2;  -- Correo electrónico

-- Para Laura Fernández (id_persona = 6)
EXEC sp_Contactos 6, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 6, 'laura.fernandez@email.com', 2;  -- Correo electrónico

-- Para Pedro Sánchez (id_persona = 7)
EXEC sp_Contactos 7, '456-789-01', 1;  -- Teléfono
EXEC sp_Contactos 7, 'pedro.sanchez@email.com', 2;  -- Correo electrónico

-- Para Silvia Torres (id_persona = 8)
EXEC sp_Contactos 8, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 8, 'silvia.torres@email.com', 2;  -- Correo electrónico

-- Para Jorge Gómez (id_persona = 9)
EXEC sp_Contactos 9, '567-890-12', 1;  -- Teléfono
EXEC sp_Contactos 9, 'jorge.gomez@email.com', 2;  -- Correo electrónico

-- Para Marcela Díaz (id_persona = 10)
EXEC sp_Contactos 10, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 10, 'marcela.diaz@email.com', 2;  -- Correo electrónico

-- Para Gabriel Ramírez (id_persona = 11)
EXEC sp_Contactos 11, '678-901-23', 1;  -- Teléfono
EXEC sp_Contactos 11, 'gabriel.ramirez@email.com', 2;  -- Correo electrónico

-- Para Laura Ponce (id_persona = 12)
EXEC sp_Contactos 12, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 12, 'laura.ponce@email.com', 2;  -- Correo electrónico

-- Para Daniel Hernández (id_persona = 13)
EXEC sp_Contactos 13, '789-012-34', 1;  -- Teléfono
EXEC sp_Contactos 13, 'daniel.hernandez@email.com', 2;  -- Correo electrónico

-- Para Florencia Ortega (id_persona = 14)
EXEC sp_Contactos 14, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 14, 'florencia.ortega@email.com', 2;  -- Correo electrónico

-- Para Martín Silva (id_persona = 15)
EXEC sp_Contactos 15, '890-123-45', 1;  -- Teléfono
EXEC sp_Contactos 15, 'martin.silva@email.com', 2;  -- Correo electrónico

-- Para Carmen Molina (id_persona = 16)
EXEC sp_Contactos 16, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 16, 'carmen.molina@email.com', 2;  -- Correo electrónico

-- Para José Paz (id_persona = 17)
EXEC sp_Contactos 17, '901-234-56', 1;  -- Teléfono
EXEC sp_Contactos 17, 'jose.paz@email.com', 2;  -- Correo electrónico

-- Para Patricia Vargas (id_persona = 18)
EXEC sp_Contactos 18, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 18, 'patricia.vargas@email.com', 2;  -- Correo electrónico

-- Para Lorenzo Ríos (id_persona = 19)
EXEC sp_Contactos 19, '012-345-67', 1;  -- Teléfono
EXEC sp_Contactos 19, 'lorenzo.rios@email.com', 2;  -- Correo electrónico

-- Para Valentina Ferreyra (id_persona = 20)
EXEC sp_Contactos 20, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 20, 'valentina.ferreyra@email.com', 2;  -- Correo electrónico

-- Para Matías Luna (id_persona = 21)
EXEC sp_Contactos 21, '123-456-70', 1;  -- Teléfono
EXEC sp_Contactos 21, 'matias.luna@email.com', 2;  -- Correo electrónico

-- Para Isabel Cabrera (id_persona = 22)
EXEC sp_Contactos 22, '987-654-30', 1;  -- Teléfono
EXEC sp_Contactos 22, 'isabel.cabrera@email.com', 2;  -- Correo electrónico

-- Para Felipe Mendez (id_persona = 23)
EXEC sp_Contactos 23, '234-567-80', 1;  -- Teléfono
EXEC sp_Contactos 23, 'felipe.mendez@email.com', 2;  -- Correo electrónico

-- Para Camila Lagos (id_persona = 24)
EXEC sp_Contactos 24, '876-543-20', 1;  -- Teléfono
EXEC sp_Contactos 24, 'camila.lagos@email.com', 2;  -- Correo electrónico

-- Para Ricardo Cáceres (id_persona = 25)
EXEC sp_Contactos 25, '345-678-90', 1;  -- Teléfono
EXEC sp_Contactos 25, 'ricardo.caceres@email.com', 2;  -- Correo electrónico

-- Para Adriana Gutiérrez (id_persona = 26)
EXEC sp_Contactos 26, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 26, 'adriana.gutierrez@email.com', 2;  -- Correo electrónico

-- Para Héctor Soto (id_persona = 27)
EXEC sp_Contactos 27, '456-789-01', 1;  -- Teléfono
EXEC sp_Contactos 27, 'hector.soto@email.com', 2;  -- Correo electrónico

-- Para Natalia Delgado (id_persona = 28)
EXEC sp_Contactos 28, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 28, 'natalia.delgado@email.com', 2;  -- Correo electrónico

-- Para Antonio Morales (id_persona = 29)
EXEC sp_Contactos 29, '567-890-12', 1;  -- Teléfono
EXEC sp_Contactos 29, 'antonio.morales@email.com', 2;  -- Correo electrónico

-- Para Valeria Mendoza (id_persona = 30)
EXEC sp_Contactos 30, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 30, 'valeria.mendoza@email.com', 2;  -- Correo electrónico

-- Para Raúl Peralta (id_persona = 31)
EXEC sp_Contactos 31, '789-012-34', 1;  -- Teléfono
EXEC sp_Contactos 31, 'raul.peralta@email.com', 2;  -- Correo electrónico

-- Para Luisa Navarro (id_persona = 32)
EXEC sp_Contactos 32, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 32, 'luisa.navarro@email.com', 2;  -- Correo electrónico

-- Para Eduardo Aguirre (id_persona = 33)
EXEC sp_Contactos 33, '890-123-45', 1;  -- Teléfono
EXEC sp_Contactos 33, 'eduardo.aguirre@email.com', 2;  -- Correo electrónico

-- Para Marina Herrera (id_persona = 34)
EXEC sp_Contactos 34, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 34, 'marina.herrera@email.com', 2;  -- Correo electrónico

-- Para Roberto Sosa (id_persona = 35)
EXEC sp_Contactos 35, '901-234-56', 1;  -- Teléfono
EXEC sp_Contactos 35, 'roberto.sosa@email.com', 2;  -- Correo electrónico

-- Para Cecilia Castro (id_persona = 36)
EXEC sp_Contactos 36, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 36, 'cecilia.castro@email.com', 2;  -- Correo electrónico

-- Para Eduardo Paz (id_persona = 37)
EXEC sp_Contactos 37, '012-345-67', 1;  -- Teléfono
EXEC sp_Contactos 37, 'eduardo.paz@email.com', 2;  -- Correo electrónico

-- Para Clara Molina (id_persona = 38)
EXEC sp_Contactos 38, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 38, 'clara.molina@email.com', 2;  -- Correo electrónico

-- Para Martín Fernández (id_persona = 39)
EXEC sp_Contactos 39, '123-456-70', 1;  -- Teléfono
EXEC sp_Contactos 39, 'martin.fernandez@email.com', 2;  -- Correo electrónico

-- Para Lorena López (id_persona = 40)
EXEC sp_Contactos 40, '987-654-30', 1;  -- Teléfono
EXEC sp_Contactos 40, 'lorena.lopez@email.com', 2;  -- Correo electrónico

-- Para Carlos Gómez (id_persona = 41)
EXEC sp_Contactos 41, '135-792-46', 1;  -- Teléfono
EXEC sp_Contactos 41, 'carlos.gomez@email.com', 2;  -- Correo electrónico

-- Para Laura Fernández (id_persona = 42)
EXEC sp_Contactos 42, '654-321-87', 1;  -- Teléfono
EXEC sp_Contactos 42, 'laura.fernandez@email.com', 2;  -- Correo electrónico

-- Para Pedro Martínez (id_persona = 43)
EXEC sp_Contactos 43, '789-456-12', 1;  -- Teléfono
EXEC sp_Contactos 43, 'pedro.martinez@email.com', 2;  -- Correo electrónico

-- Para Ana Rodríguez (id_persona = 44)
EXEC sp_Contactos 44, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 44, 'ana.rodriguez@email.com', 2;  -- Correo electrónico

-- Para Luis Hernández (id_persona = 45)
EXEC sp_Contactos 45, '123-487-65', 1;  -- Teléfono
EXEC sp_Contactos 45, 'luis.hernandez@email.com', 2;  -- Correo electrónico

-- Para Pedro López (id_persona = 46)
EXEC sp_Contactos 46, '567-890-12', 1;  -- Teléfono
EXEC sp_Contactos 46, 'pedro.lopez@email.com', 2;  -- Correo electrónico

-- Para Ana Rodríguez (id_persona = 47)
EXEC sp_Contactos 47, '345-678-90', 1;  -- Teléfono
EXEC sp_Contactos 47, 'ana.rodriguez@email.com', 2;  -- Correo electrónico

-- Para Luis Martínez (id_persona = 48)
EXEC sp_Contactos 48, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 48, 'luis.martinez@email.com', 2;  -- Correo electrónico

-- Para Sofía Fernández (id_persona = 49)
EXEC sp_Contactos 49, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 49, 'sofia.fernandez@email.com', 2;  -- Correo electrónico

-- Para Javier Gómez (id_persona = 50)
EXEC sp_Contactos 50, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 50, 'javier.gomez@email.com', 2;  -- Correo electrónico

-- Para Valentina Díaz (id_persona = 51)
EXEC sp_Contactos 51, '789-012-34', 1;  -- Teléfono
EXEC sp_Contactos 51, 'valentina.diaz@email.com', 2;  -- Correo electrónico

-- Para Mateo Sánchez (id_persona = 52)
EXEC sp_Contactos 52, '890-123-45', 1;  -- Teléfono
EXEC sp_Contactos 52, 'mateo.sanchez@email.com', 2;  -- Correo electrónico

-- Para Carlos López (id_persona = 53)
EXEC sp_Contactos 53, '345-678-90', 1;  -- Teléfono
EXEC sp_Contactos 53, 'carlos.lopez@email.com', 2;  -- Correo electrónico

-- Para Ana Rodríguez (id_persona = 54)
EXEC sp_Contactos 54, '234-567-89', 1;  -- Teléfono
EXEC sp_Contactos 54, 'ana.rodriguez@email.com', 2;  -- Correo electrónico

-- Para José Martínez (id_persona = 55)
EXEC sp_Contactos 55, '567-890-12', 1;  -- Teléfono
EXEC sp_Contactos 55, 'jose.martinez@email.com', 2;  -- Correo electrónico

-- Para Laura Fernández (id_persona = 56)
EXEC sp_Contactos 56, '678-901-23', 1;  -- Teléfono
EXEC sp_Contactos 56, 'laura.fernandez@email.com', 2;  -- Correo electrónico

-- Para Manuel Gómez (id_persona = 57)
EXEC sp_Contactos 57, '789-012-34', 1;  -- Teléfono
EXEC sp_Contactos 57, 'manuel.gomez@email.com', 2;  -- Correo electrónico

-- Para Mónica Sánchez (id_persona = 58)
EXEC sp_Contactos 58, '890-123-45', 1;  -- Teléfono
EXEC sp_Contactos 58, 'monica.sanchez@email.com', 2;  -- Correo electrónico

-- Para Ricardo Torres (id_persona = 59)
EXEC sp_Contactos 59, '123-459-87', 1;  -- Teléfono
EXEC sp_Contactos 59, 'ricardo.torres@email.com', 2;  -- Correo electrónico

-- Para Susana Díaz (id_persona = 60)
EXEC sp_Contactos 60, '234-598-76', 1;  -- Teléfono
EXEC sp_Contactos 60, 'susana.diaz@email.com', 2;  -- Correo electrónico

-- Para Diego Hernández (id_persona = 61)
EXEC sp_Contactos 61, '345-987-65', 1;  -- Teléfono
EXEC sp_Contactos 61, 'diego.hernandez@email.com', 2;  -- Correo electrónico

-- Para Isabel López (id_persona = 62)
EXEC sp_Contactos 62, '459-876-54', 1;  -- Teléfono
EXEC sp_Contactos 62, 'isabel.lopez@email.com', 2;  -- Correo electrónico

-- Para Carlos Fernández (id_persona = 63)
EXEC sp_Contactos 63, '598-765-43', 1;  -- Teléfono
EXEC sp_Contactos 63, 'carlos.fernandez@email.com', 2;  -- Correo electrónico

-- Para María García (id_persona = 64)
EXEC sp_Contactos 64, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 64, 'maria.garcia@email.com', 2;  -- Correo electrónico

-- Para Javier Sánchez (id_persona = 65)
EXEC sp_Contactos 65, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 65, 'javier.sanchez@email.com', 2;  -- Correo electrónico

-- Para Laura Torres (id_persona = 66)
EXEC sp_Contactos 66, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 66, 'laura.torres@email.com', 2;  -- Correo electrónico

-- Para Sergio González (id_persona = 67)
EXEC sp_Contactos 67, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 67, 'sergio.gonzalez@email.com', 2;  -- Correo electrónico

-- Para Carolina Martínez (id_persona = 68)
EXEC sp_Contactos 68, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 68, 'carolina.martinez@email.com', 2;  -- Correo electrónico

-- Para Luis Díaz (id_persona = 69)
EXEC sp_Contactos 69, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 69, 'luis.diaz@email.com', 2;  -- Correo electrónico

-- Para Silvia Hernández (id_persona = 70)
EXEC sp_Contactos 70, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 70, 'silvia.hernandez@email.com', 2;  -- Correo electrónico

-- Para Pedro Gómez (id_persona = 71)
EXEC sp_Contactos 71, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 71, 'pedro.gomez@email.com', 2;  -- Correo electrónico

-- Para Marta Sánchez (id_persona = 72)
EXEC sp_Contactos 72, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 72, 'marta.sanchez@email.com', 2;  -- Correo electrónico

-- Para Andrés Torres (id_persona = 73)
EXEC sp_Contactos 73, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 73, 'andres.torres@email.com', 2;  -- Correo electrónico

-- Para Rosa López (id_persona = 74)
EXEC sp_Contactos 74, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 74, 'rosa.lopez@email.com', 2;  -- Correo electrónico

-- Para Roberto García (id_persona = 75)
EXEC sp_Contactos 75, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 75, 'roberto.garcia@email.com', 2;  -- Correo electrónico

-- Para Julia Martínez (id_persona = 76)
EXEC sp_Contactos 76, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 76, 'julia.martinez@email.com', 2;  -- Correo electrónico

-- Para Fernando Torres (id_persona = 77)
EXEC sp_Contactos 77, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 77, 'fernando.torres@email.com', 2;  -- Correo electrónico

-- Para Alicia Díaz (id_persona = 78)
EXEC sp_Contactos 78, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 78, 'alicia.diaz@email.com', 2;  -- Correo electrónico

-- Para Oscar Sánchez (id_persona = 79)
EXEC sp_Contactos 79, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 79, 'oscar.sanchez@email.com', 2;  -- Correo electrónico

-- Para Lorena Hernández (id_persona = 80)
EXEC sp_Contactos 80, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 80, 'lorena.hernandez@email.com', 2;  -- Correo electrónico

-- Para Jorge Gómez (id_persona = 81)
EXEC sp_Contactos 81, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 81, 'jorge.gomez@email.com', 2;  -- Correo electrónico

-- Para Marta Sánchez (id_persona = 72)
EXEC sp_Contactos 72, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 72, 'marta.sanchez@email.com', 2;  -- Correo electrónico

-- Para Andrés Torres (id_persona = 73)
EXEC sp_Contactos 73, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 73, 'andres.torres@email.com', 2;  -- Correo electrónico

-- Para Rosa López (id_persona = 74)
EXEC sp_Contactos 74, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 74, 'rosa.lopez@email.com', 2;  -- Correo electrónico

-- Para Roberto García (id_persona = 75)
EXEC sp_Contactos 75, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 75, 'roberto.garcia@email.com', 2;  -- Correo electrónico

-- Para Julia Martínez (id_persona = 76)
EXEC sp_Contactos 76, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 76, 'julia.martinez@email.com', 2;  -- Correo electrónico

-- Para Fernando Torres (id_persona = 77)
EXEC sp_Contactos 77, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 77, 'fernando.torres@email.com', 2;  -- Correo electrónico

-- Para Alicia Díaz (id_persona = 78)
EXEC sp_Contactos 78, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 78, 'alicia.diaz@email.com', 2;  -- Correo electrónico

-- Para Oscar Sánchez (id_persona = 79)
EXEC sp_Contactos 79, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 79, 'oscar.sanchez@email.com', 2;  -- Correo electrónico

-- Para Lorena Hernández (id_persona = 80)
EXEC sp_Contactos 80, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 80, 'lorena.hernandez@email.com', 2;  -- Correo electrónico

-- Para Jorge Gómez (id_persona = 81)
EXEC sp_Contactos 81, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 81, 'jorge.gomez@email.com', 2;  -- Correo electrónico

-- Para Susana Díaz (id_persona = 92)
EXEC sp_Contactos 92, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 92, 'susana.diaz@email.com', 2;  -- Correo electrónico

-- Para Diego Hernández (id_persona = 93)
EXEC sp_Contactos 93, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 93, 'diego.hernandez@email.com', 2;  -- Correo electrónico

-- Para Isabel López (id_persona = 94)
EXEC sp_Contactos 94, '987-654-32', 1;  -- Teléfono
EXEC sp_Contactos 94, 'isabel.lopez@email.com', 2;  -- Correo electrónico

-- Para Carlos Fernández (id_persona = 95)
EXEC sp_Contactos 95, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 95, 'carlos.fernandez@email.com', 2;  -- Correo electrónico

-- Para María García (id_persona = 96)
EXEC sp_Contactos 96, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 96, 'maria.garcia@email.com', 2;  -- Correo electrónico

-- Para Javier Sánchez (id_persona = 97)
EXEC sp_Contactos 97, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 97, 'javier.sanchez@email.com', 2;  -- Correo electrónico

-- Para Laura Torres (id_persona = 98)
EXEC sp_Contactos 98, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 98, 'laura.torres@email.com', 2;  -- Correo electrónico

-- Para Sergio González (id_persona = 99)
EXEC sp_Contactos 99, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 99, 'sergio.gonzalez@email.com', 2;  -- Correo electrónico

-- Para Carolina Martínez (id_persona = 100)
EXEC sp_Contactos 100, '321-098-76', 1;  -- Teléfono
EXEC sp_Contactos 100, 'carolina.martinez@email.com', 2;  -- Correo electrónico

-- Para Luis Díaz (id_persona = 101)
EXEC sp_Contactos 101, '210-987-65', 1;  -- Teléfono
EXEC sp_Contactos 101, 'luis.diaz@email.com', 2;  -- Correo electrónico

-- Para Silvia Hernández (id_persona = 102)
EXEC sp_Contactos 102, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 102, 'silvia.hernandez@email.com', 2;  -- Correo electrónico

-- Para Pedro Gómez (id_persona = 103)
EXEC sp_Contactos 103, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 103, 'pedro.gomez@email.com', 2;  -- Correo electrónico

-- Para Marta Sánchez (id_persona = 104)
EXEC sp_Contactos 104, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 104, 'marta.sanchez@email.com', 2;  -- Correo electrónico

-- Para Andrés Torres (id_persona = 105)
EXEC sp_Contactos 105, '765-432-10', 1;  -- Teléfono
EXEC sp_Contactos 105, 'andres.torres@email.com', 2;  -- Correo electrónico

-- Para Rosa López (id_persona = 106)
EXEC sp_Contactos 106, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 106, 'rosa.lopez@email.com', 2;  -- Correo electrónico

-- Para Roberto García (id_persona = 107)
EXEC sp_Contactos 107, '543-210-98', 1;  -- Teléfono
EXEC sp_Contactos 107, 'roberto.garcia@email.com', 2;  -- Correo electrónico

-- Para Julia Martínez (id_persona = 108)
EXEC sp_Contactos 108, '432-109-87', 1;  -- Teléfono
EXEC sp_Contactos 108, 'julia.martinez@email.com', 2;  -- Correo electrónico

-- Para Fernando Torres (id_persona = 109)
EXEC sp_Contactos 109, '109-876-54', 1;  -- Teléfono
EXEC sp_Contactos 109, 'fernando.torres@email.com', 2;  -- Correo electrónico

-- Para Alicia Díaz (id_persona = 110)
EXEC sp_Contactos 110, '098-765-43', 1;  -- Teléfono
EXEC sp_Contactos 110, 'alicia.diaz@email.com', 2;  -- Correo electrónico

-- Para Oscar Sánchez (id_persona = 111)
EXEC sp_Contactos 111, '876-543-21', 1;  -- Teléfono
EXEC sp_Contactos 111, 'oscar.sanchez@email.com', 2;  -- Correo electrónico

-- Para Lorena Hernández (id_persona = 112)
EXEC sp_Contactos 112, '654-321-09', 1;  -- Teléfono
EXEC sp_Contactos 112, 'lorena.hernandez@email.com', 2;  -- Correo electrónico

-- Vendedores
EXEC sp_Vendedores 1, '2023-01-10';
EXEC sp_Vendedores 5, '2023-02-15';
EXEC sp_Vendedores 9, '2023-03-20';
EXEC sp_Vendedores 13, '2023-04-25';
EXEC sp_Vendedores 17, '2023-05-30';
EXEC sp_Vendedores 21, '2023-06-05';
EXEC sp_Vendedores 25, '2023-07-10';
EXEC sp_Vendedores 29, '2023-08-15';
EXEC sp_Vendedores 33, '2023-09-20';
EXEC sp_Vendedores 37, '2023-10-25';
EXEC sp_Vendedores 41, '2023-11-30';
EXEC sp_Vendedores 45, '2023-12-31';

-- Clientes
EXEC sp_Clientes 2, 'S';
EXEC sp_Clientes 3, 'S';
EXEC sp_Clientes 4, 'S';
EXEC sp_Clientes 6, 'S';
EXEC sp_Clientes 7, 'S';
EXEC sp_Clientes 8, 'S';
EXEC sp_Clientes 10, 'S';
EXEC sp_Clientes 11, 'S';
EXEC sp_Clientes 12, 'S';
EXEC sp_Clientes 14, 'S';
EXEC sp_Clientes 15, 'S';
EXEC sp_Clientes 16, 'S';
EXEC sp_Clientes 18, 'S';
EXEC sp_Clientes 19, 'S';
EXEC sp_Clientes 20, 'S';
EXEC sp_Clientes 22, 'S';
EXEC sp_Clientes 23, 'S';
EXEC sp_Clientes 24, 'S';
EXEC sp_Clientes 26, 'S';
EXEC sp_Clientes 27, 'S';
EXEC sp_Clientes 28, 'S';
EXEC sp_Clientes 30, 'S';
EXEC sp_Clientes 31, 'S';
EXEC sp_Clientes 32, 'S';
EXEC sp_Clientes 34, 'S';
EXEC sp_Clientes 35, 'S';
EXEC sp_Clientes 36, 'S';
EXEC sp_Clientes 38, 'S';
EXEC sp_Clientes 39, 'S';
EXEC sp_Clientes 40, 'S';
EXEC sp_Clientes 42, 'S';
EXEC sp_Clientes 43, 'S';
EXEC sp_Clientes 44, 'S';
EXEC sp_Clientes 46, 'S';
EXEC sp_Clientes 47, 'S';
EXEC sp_Clientes 48, 'S';
EXEC sp_Clientes 49, 'S';
EXEC sp_Clientes 50, 'S';
EXEC sp_Clientes 51, 'S';
EXEC sp_Clientes 52, 'S';
EXEC sp_Clientes 53, 'S';
EXEC sp_Clientes 54, 'S';
EXEC sp_Clientes 55, 'S';
EXEC sp_Clientes 56, 'S';
EXEC sp_Clientes 57, 'S';
EXEC sp_Clientes 58, 'S';
EXEC sp_Clientes 59, 'S';
EXEC sp_Clientes 60, 'S';
EXEC sp_Clientes 61, 'S';
EXEC sp_Clientes 62, 'S';
EXEC sp_Clientes 63, 'S';
EXEC sp_Clientes 64, 'S';
EXEC sp_Clientes 65, 'S';
EXEC sp_Clientes 66, 'S';
EXEC sp_Clientes 67, 'S';
EXEC sp_Clientes 68, 'S';
EXEC sp_Clientes 69, 'S';
EXEC sp_Clientes 70, 'S';
EXEC sp_Clientes 71, 'S';
EXEC sp_Clientes 72, 'S';
EXEC sp_Clientes 73, 'S';
EXEC sp_Clientes 74, 'S';
EXEC sp_Clientes 75, 'S';
EXEC sp_Clientes 76, 'S';
EXEC sp_Clientes 77, 'S';
EXEC sp_Clientes 78, 'S';
EXEC sp_Clientes 79, 'S';
EXEC sp_Clientes 80, 'S';
EXEC sp_Clientes 81, 'S';
EXEC sp_Clientes 82, 'S';
EXEC sp_Clientes 83, 'S';
EXEC sp_Clientes 84, 'S';
EXEC sp_Clientes 85, 'S';
EXEC sp_Clientes 86, 'S';
EXEC sp_Clientes 87, 'S';
EXEC sp_Clientes 88, 'S';
EXEC sp_Clientes 89, 'S';
EXEC sp_Clientes 90, 'S';
EXEC sp_Clientes 91, 'S';
EXEC sp_Clientes 92, 'S';
EXEC sp_Clientes 93, 'S';
EXEC sp_Clientes 94, 'S';
EXEC sp_Clientes 95, 'S';
EXEC sp_Clientes 96, 'S';
EXEC sp_Clientes 97, 'S';
EXEC sp_Clientes 98, 'S';
EXEC sp_Clientes 99, 'S';
EXEC sp_Clientes 100, 'S';
EXEC sp_Clientes 101, 'S';
EXEC sp_Clientes 102, 'S';
EXEC sp_Clientes 103, 'S';
EXEC sp_Clientes 104, 'S';
EXEC sp_Clientes 105, 'S';
EXEC sp_Clientes 106, 'S';
EXEC sp_Clientes 107, 'S';
EXEC sp_Clientes 108, 'S';
EXEC sp_Clientes 109, 'S';
EXEC sp_Clientes 110, 'S';
EXEC sp_Clientes 111, 'S';
EXEC sp_Clientes 112, 'S';


-- SALAS
-- Primera ejecución para 'Sala 2D' (Hasta 20 asientos)
EXEC sp_Salas 1, 25;
-- Segunda ejecución para 'Sala 2D' (Hasta 20 asientos)
EXEC sp_Salas 1, 25;

-- Primera ejecución para 'Sala 3D' (Hasta 20 asientos)
EXEC sp_Salas 2, 25;
-- Segunda ejecución para 'Sala 3D' (Hasta 20 asientos)
EXEC sp_Salas 2, 25;

-- Primera ejecución para 'Sala VIP' (Hasta 10 asientos)
EXEC sp_Salas 3, 25;
-- Segunda ejecución para 'Sala VIP' (Hasta 10 asientos)
EXEC sp_Salas 3, 25;

-- ACTORES
-- Tom Cruise
EXEC sp_Actores 'Tom', 'Cruise', 'Tom Cruise', '1962-07-03', 9;

-- Nicole Kidman
EXEC sp_Actores 'Nicole', 'Kidman', 'Nicole Kidman', '1967-06-20', 9;

-- Sydney Pollack
EXEC sp_Actores 'Sydney', 'Pollack', 'Sydney Pollack', '1934-07-01', 9;

-- Keir Dullea
EXEC sp_Actores 'Keir', 'Dullea', 'Keir Dullea', '1936-05-30', 9;

-- Gary Lockwood
EXEC sp_Actores 'Gary', 'Lockwood', 'Gary Lockwood', '1934-02-28', 9;

-- Douglas Rain
EXEC sp_Actores 'Douglas', 'Rain', 'Douglas Rain', NULL, 5;

-- Malcolm McDowell
EXEC sp_Actores 'Malcolm', 'McDowell', 'Malcolm McDowell', '1943-06-13', 12;

-- Patrick Magee
EXEC sp_Actores 'Patrick', 'Magee', 'Patrick Magee', '1922-03-31', 12;

-- Warren Clarke
EXEC sp_Actores 'Warren', 'Clarke', 'Warren Clarke', '1947-04-26', 12;

-- Michael Bates
EXEC sp_Actores 'Michael', 'Bates', 'Michael Bates', '1920-12-04', 15;

-- Jack Nicholson
EXEC sp_Actores 'Jack', 'Nicholson', 'Jack Nicholson', '1937-04-22', 9;

-- Shelley Duvall
EXEC sp_Actores 'Shelley', 'Duvall', 'Shelley Duvall', '1949-07-07', 9;

-- Danny Lloyd
EXEC sp_Actores 'Danny', 'Lloyd', 'Danny Lloyd', '1973-01-01', 9;

-- Clint Eastwood
EXEC sp_Actores 'Clint', 'Eastwood', 'Clint Eastwood', '1930-05-31', 9;

-- Gian Maria Volontè
EXEC sp_Actores 'Gian Maria', 'Volontè', 'Gian Maria Volontè', '1933-04-09', 3;

-- Marianne Koch
EXEC sp_Actores 'Marianne', 'Koch', 'Marianne Koch', '1932-08-19', 2;

-- Lee Van Cleef
EXEC sp_Actores 'Lee', 'Van Cleef', 'Lee Van Cleef', '1925-01-09', 9;

-- Eli Wallach
EXEC sp_Actores 'Eli', 'Wallach', 'Eli Wallach', '1915-12-07', 9;

-- Henry Fonda
EXEC sp_Actores 'Henry', 'Fonda', 'Henry Fonda', '1905-05-16', 9;

-- Charles Bronson
EXEC sp_Actores 'Charles', 'Bronson', 'Charles Bronson', '1921-11-03', 9;

-- Claudia Cardinale
EXEC sp_Actores 'Claudia', 'Cardinale', 'Claudia Cardinale', '1938-04-15', 14;

-- Paolo Bonacelli
EXEC sp_Actores 'Paolo', 'Bonacelli', 'Paolo Bonacelli', '1937-02-28', 3;

-- Giorgio Cataldi
EXEC sp_Actores 'Giorgio', 'Cataldi', 'Giorgio Cataldi', '1941-04-23', 3;

-- Umberto Paolo Quintavalle
EXEC sp_Actores 'Umberto Paolo', 'Quintavalle', 'Umberto Paolo Quintavalle', '1927-03-31', 3;

-- Franco Citti
EXEC sp_Actores 'Franco', 'Citti', 'Franco Citti', '1935-04-23', 3;

-- Ninetto Davoli
EXEC sp_Actores 'Ninetto', 'Davoli', 'Ninetto Davoli', '1948-03-11', 3;

-- Jovan Jovanovic
EXEC sp_Actores 'Jovan', 'Jovanovic', 'Jovan Jovanovic', '1938-09-12', 34;

-- Terence Stamp
EXEC sp_Actores 'Terence', 'Stamp', 'Terence Stamp', '1938-07-22', 12;

-- Silvana Mangano
EXEC sp_Actores 'Silvana', 'Mangano', 'Silvana Mangano', '1930-04-21', 3;

-- Massimo Girotti
EXEC sp_Actores 'Massimo', 'Girotti', 'Massimo Girotti', '1918-05-18', 3;

-- Ricardo Darín
EXEC sp_Actores 'Ricardo', 'Darín', 'Ricardo Darín', '1957-01-16', 1;

-- Darío Grandinetti
EXEC sp_Actores 'Darío', 'Grandinetti', 'Darío Grandinetti', '1959-03-05', 1;

-- Leonardo Sbaraglia
EXEC sp_Actores 'Leonardo', 'Sbaraglia', 'Leonardo Sbaraglia', '1970-06-30', 1;

-- Diego Peretti
EXEC sp_Actores 'Diego', 'Peretti', 'Diego Peretti', '1963-02-16', 1;

-- Luis Luque
EXEC sp_Actores 'Luis', 'Luque', 'Luis Luque', '1967-03-11', 1;

-- Pablo Rago
EXEC sp_Actores 'Pablo', 'Rago', 'Pablo Rago', '1972-09-24', 1;



-- Insertar director Stanley Kubrick
EXEC sp_Directores
    @nombre = 'Stanley',
    @apellido = 'Kubrick',
    @nombre_artistico = 'Stanley Kubrick',
    @fecha_nac = '1928-07-26',
    @id_pais = 12;  -- ID del Reino Unido

-- Insertar director Quentin Tarantino
EXEC sp_Directores
    @nombre = 'Quentin',
    @apellido = 'Tarantino',
    @nombre_artistico = 'Quentin Tarantino',
    @fecha_nac = '1963-03-27',
    @id_pais = 9;  -- ID de Estados Unidos

-- Insertar director Martin Scorsese
EXEC sp_Directores
    @nombre = 'Martin',
    @apellido = 'Scorsese',
    @nombre_artistico = 'Martin Scorsese',
    @fecha_nac = '1942-11-17',
    @id_pais = 9;  -- ID de Estados Unidos

-- Insertar director Sergio Leone
EXEC sp_Directores
    @nombre = 'Sergio',
    @apellido = 'Leone',
    @nombre_artistico = 'Sergio Leone',
    @fecha_nac = '1929-01-03',
    @id_pais = 3;  -- ID de Italia
-- Insertar director Pier Paolo Pasolini
EXEC sp_Directores
    @nombre = 'Pier Paolo',
    @apellido = 'Pasolini',
    @nombre_artistico = 'Pier Paolo Pasolini',
    @fecha_nac = '1922-03-05',  
    @id_pais = 3;  

-- Insertar director Damián Szifron
EXEC sp_Directores
    @nombre = 'Damián',
    @apellido = 'Szifron',
    @nombre_artistico = 'Damián Szifron',
    @fecha_nac = '1975-07-09',  
    @id_pais = 1;  

--PELICULAS
-- Ojos bien cerrados (Reino Unido)
EXEC sp_Peliculas
    @id_pelicula = 1,
    @nom_pelicula = 'Ojos bien cerrados',
    @sinopsis = 'Un médico de Nueva York, después de una confesión de su esposa, se embarca en un peligroso viaje de descubrimiento sexual en la ciudad.',
    @anio = 1999,
    @id_pais = 13, -- Reino Unido
    @duracion = 159,
    @id_idioma = 1, -- Inglés
    @id_genero = 7, -- Drama
    @id_Clasificacion = 3; -- Clasificación "R"

-- 2001: Una odisea del espacio (Reino Unido)
EXEC sp_Peliculas
    @id_pelicula = 2,
    @nom_pelicula = '2001: Una odisea del espacio',
    @sinopsis = 'Un viaje épico a través de la evolución de la humanidad, desde el amanecer de la civilización hasta un futuro distante donde se encuentran con un misterioso monolito.',
    @anio = 1968,
    @id_pais = 12, -- Reino Unido
    @duracion = 149,
    @id_idioma = 1, -- Inglés
    @id_genero = 7, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- La chaqueta mecánica (Reino Unido)
EXEC sp_Peliculas
    @id_pelicula = 3,
    @nom_pelicula = 'La chaqueta mecánica',
    @sinopsis = 'En un futuro distópico, un joven delincuente es sometido a un controvertido experimento de modificación de la conducta que lo convierte en un violento criminal.',
    @anio = 1971,
    @id_pais = 13, -- Reino Unido
    @duracion = 136,
    @id_idioma = 1, -- Inglés
    @id_genero = 7, -- Drama
    @id_Clasificacion = 4; -- Clasificación "NC-17"

-- La naranja mecánica (Reino Unido)
EXEC sp_Peliculas
    @id_pelicula = 4,
    @nom_pelicula = 'La naranja mecánica',
    @sinopsis = 'Un joven delincuente lidera una pandilla de "drugos" en un mundo distópico, cometiendo actos de ultraviolencia hasta que es sometido a un controvertido tratamiento.',
    @anio = 1971,
    @id_pais = 13, -- Reino Unido
    @duracion = 136,
    @id_idioma = 1, -- Inglés
    @id_genero = 7, -- Drama
    @id_Clasificacion = 4; -- Clasificación "NC-17"

-- El resplandor (Reino Unido)
EXEC sp_Peliculas
    @id_pelicula = 5,
    @nom_pelicula = 'El resplandor',
    @sinopsis = 'Un escritor acepta un trabajo como cuidador de un hotel aislado en las montañas de Colorado, pero las fuerzas sobrenaturales del hotel comienzan a afectar su cordura.',
    @anio = 1980,
    @id_pais = 13, -- Reino Unido
    @duracion = 144,
    @id_idioma = 1, -- Inglés
    @id_genero = 7, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- Por un puñado de dólares (Italia)
EXEC sp_Peliculas
    @id_pelicula = 6,
    @nom_pelicula = 'Por un puñado de dólares',
    @sinopsis = 'Un pistolero solitario llega a un pueblo en conflicto y se convierte en un mercenario, desencadenando una guerra entre dos familias rivales.',
    @anio = 1964,
    @id_pais = 3, -- Italia
    @duracion = 99,
    @id_idioma = 3, -- Italiano
    @id_genero = 8, -- Western
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- El bueno, el malo y el feo (Italia)
EXEC sp_Peliculas
    @id_pelicula = 7,
    @nom_pelicula = 'El bueno, el malo y el feo',
    @sinopsis = 'Tres cazadores de recompensas buscan un tesoro enterrado en el cementerio de Sad Hill mientras se enfrentan en un mundo de violencia y traición.',
    @anio = 1966,
    @id_pais = 3, -- Italia
    @duracion = 161,
    @id_idioma = 3, -- Italiano
    @id_genero = 8, -- Western
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- Érase una vez en el Oeste (Italia)
EXEC sp_Peliculas
    @id_pelicula = 8,
    @nom_pelicula = 'Érase una vez en el Oeste',
    @sinopsis = 'Una viuda contrata a un pistolero para proteger su tierra de un empresario ferroviario sin escrúpulos en esta épica historia de venganza en el Salvaje Oeste.',
    @anio = 1968,
    @id_pais = 3, -- Italia
    @duracion = 165,
    @id_idioma = 3, -- Italiano
    @id_genero = 8, -- Western
    @id_Clasificacion = 3; -- Clasificación "R"
-- Por unos dólares más (Italia)
EXEC sp_Peliculas
    @id_pelicula = 9,
    @nom_pelicula = 'Por unos dólares más',
    @sinopsis = 'Dos cazadores de recompensas unen fuerzas para cazar a un peligroso bandido, pero sus motivaciones ocultas los conducen a un enfrentamiento mortal.',
    @anio = 1965,
    @id_pais = 3, -- Italia
    @duracion = 132,
    @id_idioma = 3, -- Italiano
    @id_genero = 9, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"
-- 120 días de Sodoma (Italia)
EXEC sp_Peliculas
    @id_pelicula = 10,
    @nom_pelicula = '120 días de Sodoma',
    @sinopsis = 'En un castillo aislado, cuatro señores poderosos organizan una orgía de violencia, depravación y sadismo en una crítica social y política provocadora.',
    @anio = 1975,
    @id_pais = 3, -- Italia
    @duracion = 116,
    @id_idioma = 3, -- Italiano
    @id_genero = 9, -- Drama
    @id_Clasificacion = 4; -- Clasificación "NC-17"

-- El Decamerón (Italia)
EXEC sp_Peliculas
    @id_pelicula = 11,
    @nom_pelicula = 'El Decamerón',
    @sinopsis = 'Una adaptación de cuentos medievales eróticos y cómicos de Boccaccio, que sigue a un grupo de jóvenes que huyen de la peste negra en el campo italiano.',
    @anio = 1971,
    @id_pais = 3, -- Italia
    @duracion = 111,
    @id_idioma = 3, -- Italiano
    @id_genero = 9, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- Teorema (Italia)
EXEC sp_Peliculas
    @id_pelicula = 12,
    @nom_pelicula = 'Teorema',
    @sinopsis = 'Un extraño visitante causa una serie de transformaciones en una familia burguesa italiana, provocando deseo y conflicto en cada miembro de la familia.',
    @anio = 1968,
    @id_pais = 3, -- Italia
    @duracion = 98,
    @id_idioma = 3, -- Italiano
    @id_genero = 9, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"

-- Relatos Salvajes (Argentina)
EXEC sp_Peliculas
    @id_pelicula = 13,
    @nom_pelicula = 'Relatos Salvajes',
    @sinopsis = 'Una colección de historias independientes que exploran la violencia cotidiana, la ira y la venganza en la sociedad argentina.',
    @anio = 2014,
    @id_pais = 32, -- Argentina
    @duracion = 122,
    @id_idioma = 2, -- Español
    @id_genero = 9, -- Drama
    @id_Clasificacion = 3; -- Clasificación "R"

-- Tiempo de Valientes (Argentina)
EXEC sp_Peliculas
    @id_pelicula = 14,
    @nom_pelicula = 'Tiempo de Valientes',
    @sinopsis = 'Un psiquiatra es secuestrado por un policía corrupto para evaluar a un grupo de oficiales en esta comedia argentina sobre la corrupción y la locura.',
    @anio = 2005,
    @id_pais = 32, -- Argentina
    @duracion = 107,
    @id_idioma = 2, -- Español
    @id_genero = 9, -- Drama
    @id_Clasificacion = 2; -- Clasificación "PG-13"

	-- BUTACAS
	-- Grupo 1
EXEC sp_BUTACAS 'A', 1, 1, 1;
EXEC sp_BUTACAS 'A', 1, 2, 1;
EXEC sp_BUTACAS 'A', 1, 3, 1;
EXEC sp_BUTACAS 'A', 1, 4, 1;
EXEC sp_BUTACAS 'A', 1, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 1, 6, 1;
EXEC sp_BUTACAS 'B', 1, 7, 1;
EXEC sp_BUTACAS 'B', 1, 8, 1;
EXEC sp_BUTACAS 'B', 1, 9, 1;
EXEC sp_BUTACAS 'B', 1, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 1, 11, 1;
EXEC sp_BUTACAS 'C', 1, 12, 1;
EXEC sp_BUTACAS 'C', 1, 13, 1;
EXEC sp_BUTACAS 'C', 1, 14, 1;
EXEC sp_BUTACAS 'C', 1, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 1, 16, 1;
EXEC sp_BUTACAS 'D', 1, 17, 1;
EXEC sp_BUTACAS 'D', 1, 18, 1;
EXEC sp_BUTACAS 'D', 1, 19, 1;
EXEC sp_BUTACAS 'D', 1, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 1, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 1, 22, 1;
EXEC sp_BUTACAS 'E', 1, 23, 1;
EXEC sp_BUTACAS 'E', 1, 24, 1;
EXEC sp_BUTACAS 'E', 1, 25, 2; -- Fila E, Butaca para discapacitados

-- Grupo 1
EXEC sp_BUTACAS 'A', 2, 1, 1;
EXEC sp_BUTACAS 'A', 2, 2, 1;
EXEC sp_BUTACAS 'A', 2, 3, 1;
EXEC sp_BUTACAS 'A', 2, 4, 1;
EXEC sp_BUTACAS 'A', 2, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 2, 6, 1;
EXEC sp_BUTACAS 'B', 2, 7, 1;
EXEC sp_BUTACAS 'B', 2, 8, 1;
EXEC sp_BUTACAS 'B', 2, 9, 1;
EXEC sp_BUTACAS 'B', 2, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 2, 11, 1;
EXEC sp_BUTACAS 'C', 2, 12, 1;
EXEC sp_BUTACAS 'C', 2, 13, 1;
EXEC sp_BUTACAS 'C', 2, 14, 1;
EXEC sp_BUTACAS 'C', 2, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 2, 16, 1;
EXEC sp_BUTACAS 'D', 2, 17, 1;
EXEC sp_BUTACAS 'D', 2, 18, 1;
EXEC sp_BUTACAS 'D', 2, 19, 1;
EXEC sp_BUTACAS 'D', 2, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 2, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 2, 22, 1;
EXEC sp_BUTACAS 'E', 2, 23, 1;
EXEC sp_BUTACAS 'E', 2, 24, 1;
EXEC sp_BUTACAS 'E', 2, 25, 2; -- Fila E, Butaca para discapacitados

-- Grupo 1
EXEC sp_BUTACAS 'A', 3, 1, 1;
EXEC sp_BUTACAS 'A', 3, 2, 1;
EXEC sp_BUTACAS 'A', 3, 3, 1;
EXEC sp_BUTACAS 'A', 3, 4, 1;
EXEC sp_BUTACAS 'A', 3, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 3, 6, 1;
EXEC sp_BUTACAS 'B', 3, 7, 1;
EXEC sp_BUTACAS 'B', 3, 8, 1;
EXEC sp_BUTACAS 'B', 3, 9, 1;
EXEC sp_BUTACAS 'B', 3, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 3, 11, 1;
EXEC sp_BUTACAS 'C', 3, 12, 1;
EXEC sp_BUTACAS 'C', 3, 13, 1;
EXEC sp_BUTACAS 'C', 3, 14, 1;
EXEC sp_BUTACAS 'C', 3, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 3, 16, 1;
EXEC sp_BUTACAS 'D', 3, 17, 1;
EXEC sp_BUTACAS 'D', 3, 18, 1;
EXEC sp_BUTACAS 'D', 3, 19, 1;
EXEC sp_BUTACAS 'D', 3, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 3, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 3, 22, 1;
EXEC sp_BUTACAS 'E', 3, 23, 1;
EXEC sp_BUTACAS 'E', 3, 24, 1;
EXEC sp_BUTACAS 'E', 3, 25, 2; -- Fila E, Butaca para discapacitados

-- Grupo 1
EXEC sp_BUTACAS 'A', 4, 1, 1;
EXEC sp_BUTACAS 'A', 4, 2, 1;
EXEC sp_BUTACAS 'A', 4, 3, 1;
EXEC sp_BUTACAS 'A', 4, 4, 1;
EXEC sp_BUTACAS 'A', 4, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 4, 6, 1;
EXEC sp_BUTACAS 'B', 4, 7, 1;
EXEC sp_BUTACAS 'B', 4, 8, 1;
EXEC sp_BUTACAS 'B', 4, 9, 1;
EXEC sp_BUTACAS 'B', 4, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 4, 11, 1;
EXEC sp_BUTACAS 'C', 4, 12, 1;
EXEC sp_BUTACAS 'C', 4, 13, 1;
EXEC sp_BUTACAS 'C', 4, 14, 1;
EXEC sp_BUTACAS 'C', 4, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 4, 16, 1;
EXEC sp_BUTACAS 'D', 4, 17, 1;
EXEC sp_BUTACAS 'D', 4, 18, 1;
EXEC sp_BUTACAS 'D', 4, 19, 1;
EXEC sp_BUTACAS 'D', 4, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 4, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 4, 22, 1;
EXEC sp_BUTACAS 'E', 4, 23, 1;
EXEC sp_BUTACAS 'E', 4, 24, 1;
EXEC sp_BUTACAS 'E', 4, 25, 2; -- Fila E, Butaca para discapacitados

-- Grupo 1
EXEC sp_BUTACAS 'A', 5, 1, 1;
EXEC sp_BUTACAS 'A', 5, 2, 1;
EXEC sp_BUTACAS 'A', 5, 3, 1;
EXEC sp_BUTACAS 'A', 5, 4, 1;
EXEC sp_BUTACAS 'A', 5, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 5, 6, 1;
EXEC sp_BUTACAS 'B', 5, 7, 1;
EXEC sp_BUTACAS 'B', 5, 8, 1;
EXEC sp_BUTACAS 'B', 5, 9, 1;
EXEC sp_BUTACAS 'B', 5, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 5, 11, 1;
EXEC sp_BUTACAS 'C', 5, 12, 1;
EXEC sp_BUTACAS 'C', 5, 13, 1;
EXEC sp_BUTACAS 'C', 5, 14, 1;
EXEC sp_BUTACAS 'C', 5, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 5, 16, 1;
EXEC sp_BUTACAS 'D', 5, 17, 1;
EXEC sp_BUTACAS 'D', 5, 18, 1;
EXEC sp_BUTACAS 'D', 5, 19, 1;
EXEC sp_BUTACAS 'D', 5, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 5, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 5, 22, 1;
EXEC sp_BUTACAS 'E', 5, 23, 1;
EXEC sp_BUTACAS 'E', 5, 24, 1;
EXEC sp_BUTACAS 'E', 5, 25, 2; -- Fila E, Butaca para discapacitados

-- Grupo 1
EXEC sp_BUTACAS 'A', 6, 1, 1;
EXEC sp_BUTACAS 'A', 6, 2, 1;
EXEC sp_BUTACAS 'A', 6, 3, 1;
EXEC sp_BUTACAS 'A', 6, 4, 1;
EXEC sp_BUTACAS 'A', 6, 5, 1;

-- Grupo 2
EXEC sp_BUTACAS 'B', 6, 6, 1;
EXEC sp_BUTACAS 'B', 6, 7, 1;
EXEC sp_BUTACAS 'B', 6, 8, 1;
EXEC sp_BUTACAS 'B', 6, 9, 1;
EXEC sp_BUTACAS 'B', 6, 10, 1;

-- Grupo 3
EXEC sp_BUTACAS 'C', 6, 11, 1;
EXEC sp_BUTACAS 'C', 6, 12, 1;
EXEC sp_BUTACAS 'C', 6, 13, 1;
EXEC sp_BUTACAS 'C', 6, 14, 1;
EXEC sp_BUTACAS 'C', 6, 15, 1;

-- Grupo 4
EXEC sp_BUTACAS 'D', 6, 16, 1;
EXEC sp_BUTACAS 'D', 6, 17, 1;
EXEC sp_BUTACAS 'D', 6, 18, 1;
EXEC sp_BUTACAS 'D', 6, 19, 1;
EXEC sp_BUTACAS 'D', 6, 20, 1;

-- Grupo 5 (Butacas para discapacitados)
EXEC sp_BUTACAS 'E', 6, 21, 2; -- Fila E, Butaca para discapacitados
EXEC sp_BUTACAS 'E', 6, 22, 1;
EXEC sp_BUTACAS 'E', 6, 23, 1;
EXEC sp_BUTACAS 'E', 6, 24, 1;
EXEC sp_BUTACAS 'E', 6, 25, 2; -- Fila E, Butaca para discapacitados

-- FUNCIONES
-- Función 1
EXEC sp_Funciones '2023-10-10 16:45:00', 0, 4, 2, 2000, 0;

-- Función 2 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-10 19:00:00', 0, 4, 2, 2500, 0;

-- Función 3 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-10 21:15:00', 0, 4, 2, 3000, 0;

-- Función 4 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-10 23:30:00', 0, 4, 2, 2000, 0;


-- Función 1
EXEC sp_Funciones '2023-10-11 16:45:00', 0, 1, 5, 2000, 0;

-- Función 2 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-11 19:00:00', 0, 1, 5, 2500, 0;

-- Función 3 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-11 21:15:00', 0, 1, 5, 3000, 0;

-- Función 4 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-11 23:30:00', 0, 1, 5, 2000, 0;

-- Función 1
EXEC sp_Funciones '2023-10-12 16:45:00', 0, 2, 12, 2500, 0;

-- Función 2 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-12 19:00:00', 0, 2, 12, 3000, 0;

-- Función 3 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-12 21:15:00', 0, 2, 12, 2000, 0;

-- Función 4 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-12 23:30:00', 0, 2, 12, 2500, 0;

-- Función 1
EXEC sp_Funciones '2023-10-13 16:45:00', 0, 3, 8, 3000, 0;

-- Función 2 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-13 19:00:00', 0, 3, 8, 2000, 0;

-- Función 3 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-13 21:15:00', 0, 3, 8, 2500, 0;

-- Función 4 (2 horas y 15 minutos después)
EXEC sp_Funciones '2023-10-13 23:30:00', 0, 3, 8, 3000, 0;



-- Elencos
EXEC sp_Elencos 1, 1; --(Asociar Tom Cruise con Ojos bien cerrados)
EXEC sp_Elencos 1, 2; --(Asociar Nicole Kidman con Ojos bien cerrados)
EXEC sp_Elencos 1, 3; --(Asociar Sydney Pollack con Ojos bien cerrados)
EXEC sp_Elencos 2, 4;-- (Asociar Keir Dullea con 2001: Una odisea del espacio)
EXEC sp_Elencos 2, 5; --(Asociar Gary Lockwood con 2001: Una odisea del espacio)
EXEC sp_Elencos 2, 6; --(Asociar Douglas Rain con 2001: Una odisea del espacio)
EXEC sp_Elencos 3, 7; --(Asociar Malcolm McDowell con La chaqueta mecánica)
EXEC sp_Elencos 3, 8; --(Asociar Patrick Magee con La chaqueta mecánica)
EXEC sp_Elencos 3, 9; --(Asociar Warren Clarke con La chaqueta mecánica)
EXEC sp_Elencos 4, 7; --(Asociar Malcolm McDowell con La naranja mecánica)
EXEC sp_Elencos 4, 8; --(Asociar Patrick Magee con La naranja mecánica)
EXEC sp_Elencos 4, 10; --(Asociar Michael Bates con La naranja mecánica)
EXEC sp_Elencos 5, 11;-- (Asociar Jack Nicholson con El resplandor)
EXEC sp_Elencos 5, 12; --(Asociar Shelley Duvall con El resplandor)
EXEC sp_Elencos 5, 13; --(Asociar Danny Lloyd con El resplandor)
EXEC sp_Elencos 6, 14; --(Asociar Clint Eastwood con Por un puñado de dólares)
EXEC sp_Elencos 6, 16; --(Asociar Gian Maria Volontè con Por un puñado de dólares)
EXEC sp_Elencos 6, 15; --(Asociar Marianne Koch con Por un puñado de dólares)
EXEC sp_Elencos 7, 14; --(Asociar Clint Eastwood con El bueno, el malo y el feo)
EXEC sp_Elencos 7, 17; --(Asociar Lee Van Cleef con El bueno, el malo y el feo)
EXEC sp_Elencos 7, 18; --(Asociar Eli Wallach con El bueno, el malo y el feo)
EXEC sp_Elencos 8, 19; --(Asociar Henry Fonda con Érase una vez en el Oeste)
EXEC sp_Elencos 8, 20; --(Asociar Charles Bronson con Érase una vez en el Oeste)
EXEC sp_Elencos 8, 21; --(Asociar Claudia Cardinale con Érase una vez en el Oeste)
EXEC sp_Elencos 9, 14; --(Asociar Clint Eastwood con Por unos dólares más)
EXEC sp_Elencos 9, 17; --(Asociar Lee Van Cleef con Por unos dólares más)
EXEC sp_Elencos 9, 16; --(Asociar Gian Maria Volontè con Por unos dólares más)
EXEC sp_Elencos 10, 22; --(Asociar Paolo Bonacelli con 120 días de Sodoma)
EXEC sp_Elencos 10, 23; --(Asociar Giorgio Cataldi con 120 días de Sodoma)
EXEC sp_Elencos 10, 24; --(Asociar Umberto Paolo Quintavalle con 120 días de Sodoma)
EXEC sp_Elencos 11, 25; --(Asociar Franco Citti con El Decamerón)
EXEC sp_Elencos 11, 26; --(Asociar Ninetto Davoli con El Decamerón)
EXEC sp_Elencos 11, 27; --(Asociar Jovan Jovanovic con El Decamerón)
EXEC sp_Elencos 12, 28; --(Asociar Terence Stamp con Teorema)
EXEC sp_Elencos 12, 29; --(Asociar Silvana Mangano con Teorema)
EXEC sp_Elencos 12, 30; --(Asociar Massimo Girotti con Teorema)
EXEC sp_Elencos 13, 31; --(Asociar Ricardo Darín con Relatos Salvajes)
EXEC sp_Elencos 13, 32; --(Asociar Darío Grandinetti con Relatos Salvajes)
EXEC sp_Elencos 13, 33; --(Asociar Leonardo Sbaraglia con Relatos Salvajes)
EXEC sp_Elencos 14, 34; --(Asociar Diego Peretti con Tiempo de Valientes)
EXEC sp_Elencos 14, 35; --(Asociar Luis Luque con Tiempo de Valientes)
EXEC sp_Elencos 14, 36;






-- RESERVAS
EXEC sp_RESERVAS 62, '2023-10-10 14:45:00','2023-10-10 12:45:00', '2023-10-10 14:45:00' ;
EXEC sp_RESERVAS 19, '2023-10-10 19:45:00', '2023-10-10 17:45:00', '2023-10-10 19:45:00';
EXEC sp_RESERVAS 91, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';
EXEC sp_RESERVAS 55, '2023-10-10 19:45:00', '2023-10-10 17:45:00', '2023-10-10 19:45:00';
EXEC sp_RESERVAS 33, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';
EXEC sp_RESERVAS 7, '2023-10-10 14:45:00', '2023-10-10 12:45:00', '2023-10-10 14:45:00';
EXEC sp_RESERVAS 74, '2023-10-10 19:45:00', '2023-10-10 17:45:00', '2023-10-10 19:45:00';
EXEC sp_RESERVAS 84, '2023-10-10 14:45:00', '2023-10-10 12:45:00', '2023-10-10 14:45:00';
EXEC sp_RESERVAS 49, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';
EXEC sp_RESERVAS 2, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';

-- FUNCIONXBUTACA (ENTRADAS)
EXEC sp_FUNCIONXBUTACA 9, 67, 2;
EXEC sp_FUNCIONXBUTACA 3, 115, 3;
EXEC sp_FUNCIONXBUTACA 10, 48, 1;
EXEC sp_FUNCIONXBUTACA 5, 29, 2;
EXEC sp_FUNCIONXBUTACA 11, 92, 1;
EXEC sp_FUNCIONXBUTACA 1, 4, 3;
EXEC sp_FUNCIONXBUTACA 8, 82, 2;
EXEC sp_FUNCIONXBUTACA 12, 68, 3;
EXEC sp_FUNCIONXBUTACA 6, 39, 1;
EXEC sp_FUNCIONXBUTACA 4, 126, 2;
EXEC sp_FUNCIONXBUTACA 2, 8, 3;
EXEC sp_FUNCIONXBUTACA 7, 55, 1;
EXEC sp_FUNCIONXBUTACA 5, 134, 2;
EXEC sp_FUNCIONXBUTACA 3, 101, 3;
EXEC sp_FUNCIONXBUTACA 1, 17, 1;
EXEC sp_FUNCIONXBUTACA 10, 51, 2;
EXEC sp_FUNCIONXBUTACA 12, 72, 3;
EXEC sp_FUNCIONXBUTACA 8, 33, 1;
EXEC sp_FUNCIONXBUTACA 7, 76, 2;
EXEC sp_FUNCIONXBUTACA 11, 105, 3

-- COMPROBANTES
EXEC sp_COMPROBANTES '2023-10-09', 4, 2, 1, 8, 11;
EXEC sp_COMPROBANTES '2023-10-10', 2, 3, 2, 3, 4;
EXEC sp_COMPROBANTES '2023-10-08', 6, 1, 2, 7, 2;
EXEC sp_COMPROBANTES '2023-10-07', 3, 3, 1, 6, 5;
EXEC sp_COMPROBANTES '2023-10-10', 1, 2, 2, 2, 9;
EXEC sp_COMPROBANTES '2023-10-09', 5, 3, 1, 10, 6;
EXEC sp_COMPROBANTES '2023-10-08', 1, 1, 2, 1, 10;
EXEC sp_COMPROBANTES '2023-10-07', 6, 2, 1, 5, 7;
EXEC sp_COMPROBANTES '2023-10-09', 4, 1, 2, 9, 3;
EXEC sp_COMPROBANTES '2023-10-08', 2, 2, 1, 4, 12;

--DETALLE RESERVAS
EXEC sp_DETALLES_RESERVAS 1, 1;
EXEC sp_DETALLES_RESERVAS 2, 3;
EXEC sp_DETALLES_RESERVAS 3, 7;
EXEC sp_DETALLES_RESERVAS 4, 1;
EXEC sp_DETALLES_RESERVAS 5, 11;
EXEC sp_DETALLES_RESERVAS 6, 17;
EXEC sp_DETALLES_RESERVAS 7, 2;
EXEC sp_DETALLES_RESERVAS 8, 4;
EXEC sp_DETALLES_RESERVAS 9, 7;
EXEC sp_DETALLES_RESERVAS 10, 10;

-- DETALLE COMPROBANTES
EXEC sp_DETALLE_COMPROBANTES 1, 1900, 1;
EXEC sp_DETALLE_COMPROBANTES 2, 2000, 3;
EXEC sp_DETALLE_COMPROBANTES 3, 2100, 7;
EXEC sp_DETALLE_COMPROBANTES 4, 1900, 1;
EXEC sp_DETALLE_COMPROBANTES 5, 2000, 11;
EXEC sp_DETALLE_COMPROBANTES 6, 2100, 17;
EXEC sp_DETALLE_COMPROBANTES 7, 1900, 2;
EXEC sp_DETALLE_COMPROBANTES 8, 2000, 4;
EXEC sp_DETALLE_COMPROBANTES 9, 2100, 7;
EXEC sp_DETALLE_COMPROBANTES 10, 1900, 10;

-- Ejecuciones para las películas de Stanley Kubrick
EXEC sp_PeliculasxDirectores 1, 1;  -- Ojos bien cerrados
EXEC sp_PeliculasxDirectores 2, 1;  -- 2001: Una odisea del espacio
EXEC sp_PeliculasxDirectores 3, 1;  -- La chaqueta mecánica
EXEC sp_PeliculasxDirectores 4, 1;  -- La naranja mecánica
EXEC sp_PeliculasxDirectores 5, 1;  -- El resplandor

-- Ejecuciones para las películas de Sergio Leone
EXEC sp_PeliculasxDirectores 6, 4;  -- Por un puñado de dólares
EXEC sp_PeliculasxDirectores 7, 4;  -- El bueno, el malo y el feo
EXEC sp_PeliculasxDirectores 8, 4;  -- Érase una vez en el Oeste
EXEC sp_PeliculasxDirectores 9, 4;  -- Por unos dólares más

-- Ejecuciones para las películas de Pier Paolo Pasolini
EXEC sp_PeliculasxDirectores 10, 5;  -- 120 días de Sodoma
EXEC sp_PeliculasxDirectores 11, 5;  -- El Decamerón
EXEC sp_PeliculasxDirectores 12, 5;  -- Teorema

-- Ejecuciones para las películas de Damián Szifron
EXEC sp_PeliculasxDirectores 13, 6;  -- Relatos Salvajes
EXEC sp_PeliculasxDirectores 14, 6;  -- Tiempo de Valientes



--agregados para Consulta 5 (en comprobantes)
EXEC sp_COMPROBANTES '2023-01-08', 2, 2, 1, 4, 12;
EXEC sp_COMPROBANTES '2023-07-08', 2, 2, 1, 4, 12;
EXEC sp_COMPROBANTES '2022-12-08', 2, 2, 1, 4, 12;
EXEC sp_COMPROBANTES '2023-01-07', 3, 1, 1, 4, 12;
EXEC sp_COMPROBANTES '2023-07-05', 2, 2, 1, 3, 12;
EXEC sp_COMPROBANTES '2022-12-03', 1, 2, 1, 1, 12;
EXEC sp_COMPROBANTES '2022-12-03', 1, 1, 1, 2, 10;
--agregados para consulta 8
EXEC sp_COMPROBANTES '2023-06-10', 2, 3, 2, null, 4;
EXEC sp_COMPROBANTES '2023-09-08', 6, 1, 2, null, 2;
EXEC sp_COMPROBANTES '2023-03-07', 3, 3, 1, null, 5;
--agregados para consulta 8
EXEC sp_RESERVAS 10, '2023-10-10 14:45:00', '2023-10-10 12:45:00', '2023-10-10 14:45:00';
EXEC sp_RESERVAS 41, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';
EXEC sp_RESERVAS 3, '2023-10-10 17:15:00', '2023-10-10 15:15:00', '2023-10-10 17:15:00';
 
Update Clientes
set activo = 'N'
where id_cliente not in (1, 2, 101, 102, 103)





exec pa_Acomodar_butacas 1,1

exec pa_Acomodar_butacas 14,1
exec pa_Acomodar_butacas 2,4
exec pa_Acomodar_butacas 22,9
exec pa_Acomodar_butacas 34,25

exec pa_Acomodar_butacas 30,20

exec pa_Acomodar_butacas 10,11
exec pa_Acomodar_butacas 13,9

exec pa_Acomodar_butacas 33,25
exec pa_Acomodar_butacas 12,33
exec pa_Acomodar_butacas 32,21
exec pa_Acomodar_butacas 19,12
exec pa_Acomodar_butacas 39,2
exec pa_Acomodar_butacas 27,25
exec pa_Acomodar_butacas 18,11
exec pa_Acomodar_butacas 7,23
exec pa_Acomodar_butacas 21,9
exec pa_Acomodar_butacas 36,5
exec pa_Acomodar_butacas 16,50
exec pa_Acomodar_butacas 5,6
exec pa_Acomodar_butacas 20,25
exec pa_Acomodar_butacas 25,26
exec pa_Acomodar_butacas 40,27
exec pa_Acomodar_butacas 28,14
exec pa_Acomodar_butacas 37,20
exec pa_Acomodar_butacas 8,17
exec pa_Acomodar_butacas 17,16

update FUNCIONXBUTACA
set id_estado = 2

exec sp_insertar_usuario 'admin', '1234'
exec sp_insertar_usuario 'agus', 'agus'

