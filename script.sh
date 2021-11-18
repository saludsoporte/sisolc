#!bin/bash 
rails generate scaffold Afiliacion paciente:references institu:references institucion:string afiliacion:string user:references --no-migration

rails generate scaffold Ajuste almacen:references partida:references fuente:references ajuste:decimal lote:references lote:string caducidad:date existen:decimal precio:decimal estado:references tipo:references fecharep:date catalogo:references descrip:string --no-migration

rails generate scaffold Almacen clue:references user:references nombre:text tipo:integer cuenta1:string cuenta2:string tipo:references conta1:references conta2:references almac1:references almac2:references almac3:references depende:references almac4:references almac5:references almac6:references almac7:references domicilio:string municipio:string cp:integer cpostal:string jefeu:integer admoru:integer cierre1:date cierre2:date --no-migration

rails generate scaffold Area area:string estructura:references area_abrev:string --no-migration

rails generate scaffold Articulo solicitud:references clues:references partida:references clave:references descripcion:text presentacion:string marca_mod:string cantidad:decimal precio:decimal caducidad:integer almacen:references entregas:integer requisicion:references renglon:references capacitacion:string muestra:string notas:string anexos:boolean user:references proceso:references ped:references catalogo:references comprar:decimal adquirido:decimal cancelado:decimal --no-migration

rails generate scaffold Atencion clue:references unidad:string paciente:references fecha:datetime diagnosticos:text tipoat:text semanas:integer gesta:integer para:integer aborto:integer cesareas:integer terminacion:string termino:date altapor:string fechaeg:datetime user:references tipo:references --no-migration

rails generate scaffold CatBasico clave:string descripcion:string presentacion:string precio:decimal es_causes:boolean --no-migration

rails generate scaffold CatCabm nivel:integer partida:integer descripcion:string --no-migration

rails generate scaffold Catalogo partida:references partida:integer clave:string descripcion:text presentacion:string precio:decimal proceso:string fecha:date precio2:decimal fecha2:date iva:decimal unidades:integer existencia:decimal estado:references tipo:references grupo:references programa:references prog0:references prog1:references prog2:references prog3:references prog4:references prog5:references prog6:references prog7:references prog8:references prog9:references casuses_basico:references --no-migration

rails generate scaffold Clue clues:integer nomunidad:string tipounidad:string cvemuni:integer municipio:string cveloc:integer localidad:string domicilio:string cp:string estructura:references nomabrev:string juris:references --no-migration

rails generate scaffold Contabilidad cuenta:string sistema:references fuente:references partida:references almacen:references prov:references tipo:references user:references programa:references proyecto:references --no-migration

rails generate scaffold Detped ped:references clave:references descripcion:text presentacion:string marca_mod:string cantidad:decimal precio:decimal iva:decimal caducidad:integer importe:decimal total:decimal recibido:decimal cancelado:decimal estado:references requisicion:references renglon:references --no-migration

rails generate scaffold Domicilio paciente:references entidad:references municipio:string calle:string numero:string colonia:string cp:string telefono:string observa:string user:references muni:references --no-migration

rails generate scaffold Entidad entidad:string --no-migration

rails generate scaffold Estado estado:string --no-migration

rails generate scaffold Evolucion paciente:references atencion:references fecha:date diagnosticos:text ta:decimal fr:decimal fc:decimal temp:decimal condiciones:text pendientes:text pronostico:string user:references tipo:references fechaeg:datetime --no-migration

rails generate scaffold Fianza user:references fecha:date vence:date observa:text proceso:references prov:references monto:decimal estado:references tipo:references contratos:string contrato:references imp_peds:decimal clave:string situacion:integer --no-migration

rails generate scaffold Fuente periodo:integer clave:string fuente:string cuenta:string --no-migration

rails generate scaffold Lote catalogo:references ped:references cantidadp:decimal cantidadu:integer existencia:decimal caducidad:date almacen:references fecha:date lote:string fuente:references precio:decimal observacion:string estado:references movimiento:references barras:string requisicion:references programa:references proyecto:references partida:references etiqueta:references detped:references lote:references renglon:references salida:references cargo:string abono:string observsal:string prov:references iva:decimal cartacom:references --no-migration

rails generate scaffold MailDato id_usu:integer nombre:string id_sol:integer id_nota:integer comentario:string creada:string actualizada:string email:string estado:string dias:float fase:integer fecha:datetime --no-migration

rails generate scaffold MailNota nombre:string correo:string fecha:string id_nota:integer fase:integer --no-migration

rails generate scaffold Movimiento almacen:references movimiento:references ped:references oridest:integer user:references descripcion:string tipo:references consec:integer estado:references fecha:date partida:references sancion:decimal importe:decimal factura:string fechafac:date impfac:decimal pedido:integer facrepc:date nfacrep:integer tipo2:integer notacre:string montonota:decimal cve_factura_sacp:bigint facrep:datetime --no-migration

rails generate scaffold Municipio municipio:string estado:string juris:integer --no-migration

rails generate scaffold Nacido paciente:references atencion:references evolucion:string atencion:string egreso:date defuncion:string user:references --no-migration

rails generate scaffold PacienteId institu:references afiliacion:string --no-migration

rails generate scaffold Paciente paterno:string materno:string nombre:string nacimiento:date curp:string observa:string cambio:date user:references --no-migration

rails generate scaffold Pacnota paciente:references user:references fecha:date comenta:text --no-migration

rails generate scaffold Partida partida:integer descripcion:string indice:float cog2011:integer descripcion2:string --no-migration

rails generate scaffold Pedido pedido:integer claveuni:integer nombreuni:string articulo:string partida:integer preciouni:decimal cantidad:decimal marca:string clavepro:integer proveedor:string entrega:date descripcion:text presentacion:string requisicion:integer proceso:string fuente:string pedidounico:integer almacen:string archivo:string cantfac:decimal cantcanc:decimal elaboracion:date etiqueta:integer proyecto:integer programa:string subprograma:string comenta:text estado:references iva:integer --no-migration

rails generate scaffold Ped clues:references proceso:references fecha:date proveedor:references condiciones:references almacen:references entrega:date requisicion:references programa:references observaciones:text user:references jda:references so:references cp:references da:references dg:references adq:references subtotal:decimal iva:decimal total:decimal estado:references renglon:references tipo:references partida:references pena:decimal contrato:integer fuente:references fianza:references facfianza:decimal reqexterna:integer requi2:references requi3:references requi4:references montoreq:decimal montoreq2:decimal montoreq3:decimal montoreq4:decimal requi5:references --no-migration

rails generate scaffold Poa nombreuni:string programa:string subprograma:string accion:string intcauses:string afaspe:string partida:integer articulo:string sino:string descripcion:text presentacion:string precioiva:decimal cantidad:decimal presupuesto:decimal fuente:string marca:string observacion:string preciolin:string sacp_requisi:integer sacp_interno:integer sacp_anio:integer fuente:references accion:references clave:references sacp_esq:integer clues:references --no-migration

rails generate scaffold PoasAsigna poas:references proceso:references clues:references almacen:references proveedor:references proveedor:string precio:decimal iva:decimal empate:boolean clave:references articulo:string sino:string descripcion:text presentacion:string marca:string cantidad:decimal entrega_1:decimal entrega_fecha_1:date detpeds_id_1:integer entrega_2:decimal entrega_fecha_2:date detpeds_id_2:integer entrega_3:decimal entrega_fecha_3:date detpeds_id_3:integer entrega_4:decimal entrega_fecha_4:date detpeds_id_4:integer entrega_5:decimal entrega_fecha_5:date detpeds_id_5:integer sacp_anio_pago:integer sacp_requisi_pago:integer sacp_interno_pago:integer cve_presup:integer cve_centro_resp:integer sacp_requisi:integer sacp_interno:integer sacp_anio:integer sacp_esq:integer fuente:references --no-migration

rails generate scaffold ProcesoPedReq proceso:references poas:references req_sacp:integer req_sacp_interno:integer empate:boolean clave:references detpeds:references entrega:integer fecha:date cantidad:decimal --no-migration

rails generate scaffold Proceso proceso:string fecha:date tipopro:references partida:references observacion:text estado:references pena:decimal sancionmax:decimal tipo:references --no-migration

rails generate scaffold Programa clave:string programa:string numpro:integer --no-migration

rails generate scaffold Propuesta proceso:references anexo:string reng:references partida:references catalogo:references provee:references cantidad:decimal precio:decimal iva:decimal --no-migration

rails generate scaffold Prov nombre:string fiscal:string domicilio:string colonia:string ciudad:string telefonos:string fax:string rfc:string cp:string situacion:references cvealma:references --no-migration

rails generate scaffold Proyecto periodo:integer clave:integer proyecto:string --no-migration

rails generate scaffold Renglon requisicion:references renglon:string proyecto:references programa:references clues:references partida:references ejercicio:date descripcion:string importe:decimal etiqueta:references cant_detpeds:decimal --no-migration

rails generate scaffold Reorden nombre:string partida:references catalogo:references punto:decimal tipo:references almacen:references user:references notifica:references vigenciai:date vigenciaf:date estado:references existencia:decimal --no-migration

rails generate scaffold Reporte reporte:string desde:date hasta:date unidad:integer cpini:integer cpfin:integer usuario:integer texto:string rango1:integer rango2:integer sistema:references --no-migration

rails generate scaffold Reqnotum requisicion:references user:references fecha:date comenta:text --no-migration

rails generate scaffold Reqnota requisicion:references user:references fecha:date comenta:text --no-migration

rails generate scaffold Requisicion fecha:date clues:references fuente:references user:references autoriza:references estado:references anexos:boolean etiqueta:integer importe:decimal vobo:references --no-migration

rails generate scaffold Rol rol:string --no-migration

rails generate scaffold Smpnota user:references fecha:date comenta:text fecharesp:date respuesta:text destinatario:references --no-migration

rails generate scaffold Solicitud area:references user:references vobotecnico:references tipo:references partida:references requisicion:references renglon:references notas:string anexos:boolean recepcion:date estado:references fuente:references programa:references proyecto:references importe:decimal adqui:references techo:decimal tipotecho:integer --no-migration

rails generate scaffold Solnota solicitud:references user:references fecha:date comenta:text --no-migration

rails generate scaffold Subpro programa:references clave:string programa:string --no-migration

rails generate scaffold Temp pedido:integer claveuni:integer nombreuni:string articulo:string partida:integer preciouni:decimal cantidad:decimal marca:string clavepro:integer proveedor:string entrega:date descripcion:text presentacion:string requisicion:integer proceso:string fuente:string pedidounico:integer almacen:string archivo:string cantfac:decimal cantcanc:decimal elaboracion:date etiqueta:integer proyecto:integer programa:string subprograma:string comenta:text iva:integer --no-migration

rails generate scaffold Temp1 idpedido:integer partida:integer idarticulo:string descripcio:text presentaci:string marca:string cantidad:decimal nombreunid:string preciounit:decimal nombrefuen:string requisicio:integer fiscal:string ejercicio:float --no-migration

rails generate scaffold Temp10 idpedido:integer partida:integer idarticulo:string descripcio:text presentaci:string marca:string cantidad:decimal nombreunid:string preciounit:decimal nombrefuen:string requisicio:integer fiscal:string ejercicio:integer --no-migration

rails generate scaffold Temp11 ped:references detped:references anexo:string renglon:integer partida:references partida:integer catalogo:references clave:string descripcion:text presentacion:string precio:decimal prov:references fiscal:string marca:string proceso:references proceso:string empates:string fuente:references fuente:string clue:references almacen:references unidad:string programa:references cveprog:string programa:string subprog2011:string accion2011:string cantidad:decimal importe:decimal requisicion:references renglon:references sinonimo:integer actividad:string entrega:date cp:references etiqueta:integer --no-migration

rails generate scaffold Temp12 almacen:references catalogo:references total:decimal --no-migration

rails generate scaffold Temp13 ped:references detped:references anexo:string renglon:integer partida:references partida:integer catalogo:references clave:string descripcion:text presentacion:string precio:decimal prov:references fiscal:string marca:string proceso:references proceso:string empates:string fuente:references fuente:string clue:references almacen:references unidad:string programa:references cveprog:string programa:string subprog2011:string accion2011:string cantidad:decimal importe:decimal requisicion:references renglon:references sinonimo:integer actividad:string entrega:date cp:references --no-migration

rails generate scaffold Temp14 ped:references detped:references anexo:string renglon:integer partida:references partida:integer catalogo:references clave:string descripcion:text presentacion:string precio:decimal prov:references fiscal:string marca:string proceso:references proceso:string empates:string fuente:references fuente:string clue:references almacen:references unidad:string programa:references cveprog:string programa:string subprog2011:string accion2011:string cantidad:decimal importe:decimal requisicion:references renglon:references sinonimo:integer actividad:string entrega:date cp:references --no-migration

rails generate scaffold Temp15 ped:references detped:references anexo:string renglon:integer partida:references partida:integer catalogo:references clave:string descripcion:text presentacion:string precio:decimal prov:references fiscal:string marca:string proceso:references proceso:string empates:string fuente:references fuente:string clue:references almacen:references unidad:string programa:references cveprog:string programa:string subprog2011:string accion2011:string cantidad:decimal importe:decimal requisicion:references renglon:references sinonimo:integer actividad:string entrega:date cp:references etiqueta:integer --no-migration

rails generate scaffold Temp16 clues:references user:references autoriza:references estado:references vobo:references fecha:date fuente:references --no-migration

rails generate scaffold Temp17 ped:references catalogo:references nuevoped:integer --no-migration

rails generate scaffold Temp18 id:integer clues:references proceso:references fecha:date proveedor:references condiciones:references almacen:references entrega:date requisicion:references programa:references observaciones:text user:references jda:references so:references cp:references da:references dg:references adq:references subtotal:decimal iva:decimal total:decimal estado:references renglon:references tipo:references partida:references pena:decimal contrato:integer fuente:references fianza:references --no-migration

rails generate scaffold Temp19 clue:references fuente:references programa:references importe:decimal proyecto:references requisicion:references ejercicio:date partida:references --no-migration

rails generate scaffold Temp2 uniresp:integer programa:integer subprograma:integer descripcion:string ff:integer obra:integer partest:integer cvejur:integer cveunidad:integer unidad:string cveprog:integer progabrev:string nom_prog:string cvesubprog:integer nomsubprog:string cveaccion:integer nomaccion:string rubro:string partida:integer cveart:string sinonimo:integer articulo:text presentacion:text fuente:string cantidad:decimal costo:decimal observaciones:string nup:string --no-migration

rails generate scaffold Temp20 id:integer fecha:date clues:references fuente:references user:references autoriza:references estado:references anexos:boolean etiqueta:integer importe:decimal vobo:references --no-migration

rails generate scaffold Temp21 almacen:string almacen:references fuentecve:string fuente:string fuente:references partida:integer partida:references clave:string sinonimo:string catalogo:references descripcion:text presentacion:string cantidadp:decimal precio:decimal lote:string caducidad:date existencia:decimal monto:decimal movimiento:references estado:references --no-migration

rails generate scaffold Temp3 id:integer clues:references proceso:references fecha:date proveedor:references condiciones:references almacen:references entrega:date requisicion:references programa:references observaciones:text user:references jda:references so:references cp:references da:references dg:references adq:references subtotal:decimal iva:decimal total:decimal estado:references renglon:references tipo:references partida:references pena:decimal contrato:integer fuente:references fianza:references facfianza:decimal reqexterna:integer requi2:references requi3:references requi4:references montoreq:decimal montoreq2:decimal montoreq3:decimal montoreq4:decimal --no-migration

rails generate scaffold Temp4 ped:references clave:references descripcion:text presentacion:string marca_mod:string cantidad:decimal precio:decimal iva:decimal caducidad:integer importe:decimal total:decimal recibido:decimal cancelado:decimal estado:references requisicion:references renglon:references --no-migration

rails generate scaffold Temp5 id:integer fecha:date clues:references fuente:references user:references autoriza:references estado:references anexos:boolean etiqueta:integer importe:decimal vobo:references --no-migration

rails generate scaffold Temp6 cvealma:references nombre:string fiscal:string domicilio:string colonia:string ciudad:string telefonos:string fax:string rfc:string cp:string --no-migration

rails generate scaffold Temp7 partida:references partida:integer clave:string descripcion:text presentacion:string estado:references --no-migration

rails generate scaffold Temp8 solicitud:references clues:references partida:references clave:references descripcion:text presentacion:string marca_mod:string cantidad:decimal precio:decimal caducidad:integer almacen:references entregas:integer requisicion:references renglon:references capacitacion:string muestra:string notas:string anexos:boolean user:references proceso:references ped:references --no-migration

rails generate scaffold Temp9 almacen:string almacen:references fuentecve:string fuente:string fuente:references partida:integer partida:references clave:string sinonimo:string catalogo:references descripcion:text presentacion:string cantidadp:decimal precio:decimal lote:string caducidad:date existencia:decimal monto:decimal movimiento:references estado:references --no-migration

rails generate scaffold Temporal c1:text c2:text c3:text c4:text c5:text c6:text c7:text c8:text c9:text c10:text c11:text c12:text c13:text c14:text c15:text c16:text c17:text c18:text c19:text c20:text c21:text c22:text c23:text c24:text c25:text c26:text c27:text c28:text c29:text c30:text c31:text c32:text c33:text c34:text c35:text c36:text c37:text c38:text c39:text c40:text --no-migration

rails generate scaffold Tipo tipo:string --no-migration

rails generate scaffold User titulo:string nombre:string puesto:string area:references rol:references estructura:references login:string email:string crypted_password:string salt:string remember_token:string remember_token_expires_at:datetime dato1:integer dato2:integer --no-migration

rails generate scaffold VDblinkConexion conexion_presup:text ejercicio:integer --no-migration
