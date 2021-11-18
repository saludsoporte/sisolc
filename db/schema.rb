# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_04_155546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "dblink"
  enable_extension "plpgsql"

  create_table "afiliacions", id: :serial, force: :cascade do |t|
    t.integer "paciente_id"
    t.integer "institu_id"
    t.string "institucion", limit: 255
    t.string "afiliacion", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ajustes", id: :serial, force: :cascade do |t|
    t.integer "almacen_id"
    t.integer "partida_id"
    t.integer "fuente_id"
    t.decimal "ajuste"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "lote_id"
    t.string "lote", limit: 255
    t.date "caducidad"
    t.decimal "existen"
    t.decimal "precio"
    t.integer "estado_id"
    t.integer "tipo_id"
    t.date "fecharep"
    t.integer "catalogo_id"
    t.string "descrip", limit: 255
  end

  create_table "almacens", id: :serial, force: :cascade do |t|
    t.integer "clue_id"
    t.integer "user_id"
    t.text "nombre"
    t.integer "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "cuenta1", limit: 255
    t.string "cuenta2", limit: 255
    t.integer "tipo_id"
    t.integer "conta1_id"
    t.integer "conta2_id"
    t.integer "almac1_id"
    t.integer "almac2_id"
    t.integer "almac3_id"
    t.integer "depende_id"
    t.integer "almac4_id"
    t.integer "almac5_id"
    t.integer "almac6_id"
    t.integer "almac7_id"
    t.string "domicilio", limit: 255
    t.string "municipio", limit: 255
    t.integer "cp"
    t.string "cpostal", limit: 255
    t.integer "jefeu"
    t.integer "admoru"
    t.date "cierre1"
    t.date "cierre2"
    t.index ["id"], name: "id_almacen", order: "NULLS FIRST"
  end

  create_table "areas", id: :serial, force: :cascade do |t|
    t.string "area", limit: 255
    t.integer "estructura_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "area_abrev", limit: 255
  end

  create_table "articulos", id: :serial, force: :cascade do |t|
    t.integer "solicitud_id"
    t.integer "clues_id"
    t.integer "partida_id"
    t.integer "clave_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.string "marca_mod", limit: 255
    t.decimal "cantidad"
    t.decimal "precio"
    t.integer "caducidad"
    t.integer "almacen_id"
    t.integer "entregas"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.string "capacitacion", limit: 255
    t.string "muestra", limit: 255
    t.string "notas", limit: 255
    t.boolean "anexos"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "proceso_id"
    t.integer "ped_id"
    t.integer "catalogo_id"
    t.decimal "comprar"
    t.decimal "adquirido"
    t.decimal "cancelado"
    t.index ["solicitud_id"], name: "artics_solicitud", order: "NULLS FIRST"
  end

  create_table "atencions", id: :serial, force: :cascade do |t|
    t.integer "clue_id"
    t.string "unidad", limit: 255
    t.integer "paciente_id"
    t.datetime "fecha"
    t.text "diagnosticos"
    t.text "tipoat"
    t.integer "semanas"
    t.integer "gesta"
    t.integer "para"
    t.integer "aborto"
    t.integer "cesareas"
    t.string "terminacion", limit: 255
    t.date "termino"
    t.string "altapor", limit: 255
    t.datetime "fechaeg"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tipo_id"
  end

  create_table "cat_basico", id: :serial, force: :cascade do |t|
    t.string "clave", limit: 16
    t.string "descripcion"
    t.string "presentacion"
    t.decimal "precio"
    t.boolean "es_causes", default: true, null: false
  end

  create_table "cat_cabms", primary_key: "cabms", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.integer "nivel"
    t.integer "partida"
    t.string "descripcion", limit: 200
  end

  create_table "catalogos", id: :serial, force: :cascade do |t|
    t.integer "partida_id"
    t.integer "partida"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precio"
    t.string "proceso", limit: 255
    t.date "fecha"
    t.decimal "precio2"
    t.date "fecha2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "iva"
    t.integer "unidades"
    t.decimal "existencia"
    t.integer "estado_id"
    t.integer "tipo_id"
    t.integer "grupo_id"
    t.integer "programa_id"
    t.integer "prog0_id"
    t.integer "prog1_id"
    t.integer "prog2_id"
    t.integer "prog3_id"
    t.integer "prog4_id"
    t.integer "prog5_id"
    t.integer "prog6_id"
    t.integer "prog7_id"
    t.integer "prog8_id"
    t.integer "prog9_id"
    t.integer "casuses_basico_id"
    t.index ["id"], name: "id_catalogs", order: "NULLS FIRST"
  end

  create_table "clues", id: :serial, force: :cascade do |t|
    t.integer "clues"
    t.string "nomunidad", limit: 255
    t.string "tipounidad", limit: 255
    t.integer "cvemuni"
    t.string "municipio", limit: 255
    t.integer "cveloc"
    t.string "localidad", limit: 255
    t.string "domicilio", limit: 255
    t.string "cp", limit: 255
    t.integer "estructura_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "nomabrev", limit: 255
    t.integer "juris_id"
  end

  create_table "contabilidads", id: :serial, force: :cascade do |t|
    t.string "cuenta", limit: 255
    t.integer "sistema_id"
    t.integer "fuente_id"
    t.integer "partida_id"
    t.integer "almacen_id"
    t.integer "prov_id"
    t.integer "tipo_id"
    t.integer "user_id"
    t.integer "programa_id"
    t.integer "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detpeds", id: :serial, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "clave_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.string "marca_mod", limit: 255
    t.decimal "cantidad"
    t.decimal "precio"
    t.decimal "iva"
    t.integer "caducidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "importe"
    t.decimal "total"
    t.decimal "recibido"
    t.decimal "cancelado"
    t.integer "estado_id"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.index ["clave_id"], name: "dets_clave", order: "NULLS FIRST"
    t.index ["ped_id"], name: "dets_pedid", order: "NULLS FIRST"
  end

  create_table "domicilios", id: :serial, force: :cascade do |t|
    t.integer "paciente_id"
    t.integer "entidad_id"
    t.string "municipio", limit: 255
    t.string "calle", limit: 255
    t.string "numero", limit: 255
    t.string "colonia", limit: 255
    t.string "cp", limit: 255
    t.string "telefono", limit: 255
    t.string "observa", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "muni_id"
  end

  create_table "entidads", id: :serial, force: :cascade do |t|
    t.string "entidad", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", id: :serial, force: :cascade do |t|
    t.string "estado", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evolucions", id: :serial, force: :cascade do |t|
    t.integer "paciente_id"
    t.integer "atencion_id"
    t.date "fecha"
    t.text "diagnosticos"
    t.decimal "ta"
    t.decimal "fr"
    t.decimal "fc"
    t.decimal "temp"
    t.text "condiciones"
    t.text "pendientes"
    t.string "pronostico", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tipo_id"
    t.datetime "fechaeg"
  end

  create_table "fianzas", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.date "fecha"
    t.date "vence"
    t.text "observa"
    t.integer "proceso_id"
    t.integer "prov_id"
    t.decimal "monto"
    t.integer "estado_id"
    t.integer "tipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "contratos", limit: 255
    t.integer "contrato_id"
    t.decimal "imp_peds"
    t.string "clave", limit: 255
    t.integer "situacion"
  end

  create_table "fuentes", id: :serial, force: :cascade do |t|
    t.integer "periodo"
    t.string "clave", limit: 255
    t.string "fuente", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "cuenta", limit: 255
  end

  create_table "lotes", id: :serial, force: :cascade do |t|
    t.integer "catalogo_id"
    t.integer "ped_id"
    t.decimal "cantidadp"
    t.integer "cantidadu"
    t.decimal "existencia"
    t.date "caducidad"
    t.integer "almacen_id"
    t.date "fecha"
    t.string "lote", limit: 255
    t.integer "fuente_id"
    t.decimal "precio"
    t.string "observacion", limit: 255
    t.integer "estado_id"
    t.integer "movimiento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "barras", limit: 255
    t.integer "requisicion_id"
    t.integer "programa_id"
    t.integer "proyecto_id"
    t.integer "partida_id"
    t.integer "etiqueta_id"
    t.integer "detped_id"
    t.integer "lote_id"
    t.integer "renglon_id"
    t.integer "salida_id"
    t.string "cargo", limit: 255
    t.string "abono", limit: 255
    t.string "observsal", limit: 255
    t.integer "prov_id"
    t.decimal "iva"
    t.integer "cartacom_id"
    t.index ["catalogo_id"], name: "lote_catid", order: "NULLS FIRST"
    t.index ["id"], name: "lotes_id", order: "NULLS FIRST"
    t.index ["partida_id"], name: "lotes_partida", order: "NULLS FIRST"
  end

  create_table "mail_datos", id: :serial, force: :cascade do |t|
    t.integer "id_usu"
    t.string "nombre"
    t.integer "id_sol"
    t.integer "id_nota"
    t.string "comentario"
    t.string "creada"
    t.string "actualizada"
    t.string "email"
    t.string "estado"
    t.float "dias"
    t.integer "fase", default: 0, null: false
    t.datetime "fecha", default: -> { "now()" }, null: false
    t.index ["id_nota"], name: "nota_unica", unique: true
  end

  create_table "mail_notas", primary_key: "folio", id: :serial, force: :cascade do |t|
    t.string "nombre"
    t.string "correo"
    t.string "fecha"
    t.integer "id_nota"
    t.integer "fase", default: 1
  end

  create_table "movimientos", id: :serial, force: :cascade do |t|
    t.integer "almacen_id"
    t.integer "movimiento_id"
    t.integer "ped_id"
    t.integer "oridest"
    t.integer "user_id"
    t.string "descripcion", limit: 255
    t.integer "tipo_id"
    t.integer "consec"
    t.integer "estado_id"
    t.date "fecha"
    t.integer "partida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "sancion"
    t.decimal "importe"
    t.string "factura", limit: 255
    t.date "fechafac"
    t.decimal "impfac"
    t.integer "pedido"
    t.date "facrepc"
    t.integer "nfacrep"
    t.integer "tipo2"
    t.string "notacre", limit: 255
    t.decimal "montonota"
    t.bigint "cve_factura_sacp"
    t.datetime "facrep"
    t.index ["almacen_id"], name: "movs_almacenid", order: "NULLS FIRST"
    t.index ["id"], name: "movs_x_id", order: "NULLS FIRST"
  end

  create_table "municipios", id: :serial, force: :cascade do |t|
    t.string "municipio", limit: 255
    t.string "estado", limit: 255
    t.integer "juris"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacidos", id: :serial, force: :cascade do |t|
    t.integer "paciente_id"
    t.integer "atencion_id"
    t.string "evolucion", limit: 255
    t.string "atencion", limit: 255
    t.date "egreso"
    t.string "defuncion", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paciente_ids", id: :serial, force: :cascade do |t|
    t.integer "institu_id"
    t.string "afiliacion", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", id: :serial, force: :cascade do |t|
    t.string "paterno", limit: 255
    t.string "materno", limit: 255
    t.string "nombre", limit: 255
    t.date "nacimiento"
    t.string "curp", limit: 255
    t.string "observa", limit: 255
    t.date "cambio"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["id"], name: "pacs_id", order: "NULLS FIRST"
  end

  create_table "pacnotas", id: :serial, force: :cascade do |t|
    t.integer "paciente_id"
    t.integer "user_id"
    t.date "fecha"
    t.text "comenta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidas", id: :serial, force: :cascade do |t|
    t.integer "partida"
    t.string "descripcion", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float "indice"
    t.integer "cog2011"
    t.string "descripcion2", limit: 255
  end

  create_table "pedidos", id: :serial, force: :cascade do |t|
    t.integer "pedido"
    t.integer "claveuni"
    t.string "nombreuni", limit: 255
    t.string "articulo", limit: 255
    t.integer "partida"
    t.decimal "preciouni"
    t.decimal "cantidad"
    t.string "marca", limit: 255
    t.integer "clavepro"
    t.string "proveedor", limit: 255
    t.date "entrega"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.integer "requisicion"
    t.string "proceso", limit: 255
    t.string "fuente", limit: 255
    t.integer "pedidounico"
    t.string "almacen", limit: 255
    t.string "archivo", limit: 255
    t.decimal "cantfac"
    t.decimal "cantcanc"
    t.date "elaboracion"
    t.integer "etiqueta"
    t.integer "proyecto"
    t.string "programa", limit: 255
    t.string "subprograma", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "comenta"
    t.integer "estado_id"
    t.integer "iva"
    t.index ["elaboracion"], name: "pedidos_idx_elaboracion"
    t.index ["entrega"], name: "pedidos_idx_entrega"
    t.index ["partida"], name: "pedidos_idx_partida"
    t.index ["pedido"], name: "pedidos_pedido", order: "NULLS FIRST"
  end

  create_table "peds", id: :serial, force: :cascade do |t|
    t.integer "clues_id"
    t.integer "proceso_id"
    t.date "fecha"
    t.integer "proveedor_id"
    t.integer "condiciones_id"
    t.integer "almacen_id"
    t.date "entrega"
    t.integer "requisicion_id"
    t.integer "programa_id"
    t.text "observaciones"
    t.integer "user_id"
    t.integer "jda_id"
    t.integer "so_id"
    t.integer "cp_id"
    t.integer "da_id"
    t.integer "dg_id"
    t.integer "adq_id"
    t.decimal "subtotal"
    t.decimal "iva"
    t.decimal "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "estado_id"
    t.integer "renglon_id"
    t.integer "tipo_id"
    t.integer "partida_id"
    t.decimal "pena"
    t.integer "contrato"
    t.integer "fuente_id"
    t.integer "fianza_id"
    t.decimal "facfianza"
    t.integer "reqexterna"
    t.integer "requi2_id"
    t.integer "requi3_id"
    t.integer "requi4_id"
    t.decimal "montoreq"
    t.decimal "montoreq2"
    t.decimal "montoreq3"
    t.decimal "montoreq4"
    t.text "requi5_id"
    t.index ["id"], name: "id_peds", order: "NULLS FIRST"
  end

  create_table "poas", id: :integer, default: nil, force: :cascade do |t|
    t.string "nombreuni", limit: 255
    t.string "programa", limit: 255
    t.string "subprograma", limit: 255
    t.string "accion", limit: 255
    t.string "intcauses", limit: 255
    t.string "afaspe", limit: 255
    t.integer "partida"
    t.string "articulo", limit: 255
    t.string "sino", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precioiva"
    t.decimal "cantidad"
    t.decimal "presupuesto"
    t.string "fuente", limit: 255
    t.string "marca", limit: 255
    t.string "observacion", limit: 255
    t.string "preciolin", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "sacp_requisi"
    t.integer "sacp_interno"
    t.integer "sacp_anio", null: false
    t.integer "fuente_id"
    t.integer "accion_id"
    t.integer "clave_id"
    t.integer "sacp_esq", default: 15, null: false
    t.integer "clues_id"
    t.index ["id"], name: "id_poas", order: "NULLS FIRST"
  end

  create_table "poas_asigna", id: :serial, comment: "\nProceso de carga del archivo del area de adquisicion del proceso de licitacion\n\"por proceso\" y se deben de anticipar las cantidades y las fechas una \nvez aplicado de generan los pedidos y proveedores \n\n", force: :cascade do |t|
    t.integer "poas_id"
    t.integer "proceso_id"
    t.integer "clues_id", null: false
    t.integer "almacen_id", null: false
    t.integer "proveedor_id"
    t.string "proveedor", limit: 255
    t.decimal "precio", null: false
    t.decimal "iva", default: "1.0", comment: "el iva sera 1 mas el porcentaje del impuesto.."
    t.boolean "empate"
    t.integer "clave_id"
    t.string "articulo", limit: 255
    t.string "sino", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.string "marca", limit: 255
    t.decimal "cantidad"
    t.decimal "entrega_1", null: false
    t.date "entrega_fecha_1", null: false
    t.integer "detpeds_id_1"
    t.decimal "entrega_2"
    t.date "entrega_fecha_2"
    t.integer "detpeds_id_2"
    t.decimal "entrega_3"
    t.date "entrega_fecha_3"
    t.integer "detpeds_id_3"
    t.decimal "entrega_4"
    t.date "entrega_fecha_4"
    t.integer "detpeds_id_4"
    t.decimal "entrega_5"
    t.date "entrega_fecha_5"
    t.integer "detpeds_id_5"
    t.datetime "created_at", default: -> { "(now())::date" }
    t.integer "sacp_anio_pago"
    t.integer "sacp_requisi_pago"
    t.integer "sacp_interno_pago"
    t.integer "cve_presup"
    t.integer "cve_centro_resp"
    t.integer "sacp_requisi"
    t.integer "sacp_interno"
    t.integer "sacp_anio"
    t.integer "sacp_esq"
    t.integer "fuente_id"
    t.index ["id"], name: "id_poasigna", order: "NULLS FIRST"
    t.index ["poas_id"], name: "poasid", order: "NULLS FIRST"
  end

  create_table "proceso_ped_req", id: false, force: :cascade do |t|
    t.integer "proceso_id", null: false
    t.integer "poas_id"
    t.integer "req_sacp"
    t.integer "req_sacp_interno"
    t.boolean "empate", default: false, null: false
    t.integer "clave_id", null: false
    t.integer "detpeds_id"
    t.integer "entrega"
    t.date "fecha"
    t.decimal "cantidad"
  end

  create_table "procesos", id: :serial, force: :cascade do |t|
    t.string "proceso", limit: 255
    t.date "fecha"
    t.integer "tipopro_id"
    t.integer "partida_id"
    t.text "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "estado_id"
    t.decimal "pena"
    t.decimal "sancionmax"
    t.integer "tipo_id"
  end

  create_table "programas", id: :serial, force: :cascade do |t|
    t.string "clave", limit: 255
    t.string "programa", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "numpro"
  end

  create_table "propuestas", id: :serial, force: :cascade do |t|
    t.integer "proceso_id"
    t.string "anexo", limit: 255
    t.integer "reng_id"
    t.integer "partida_id"
    t.integer "catalogo_id"
    t.integer "provee_id"
    t.decimal "cantidad"
    t.decimal "precio"
    t.decimal "iva"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provs", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 255
    t.string "fiscal", limit: 255
    t.string "domicilio", limit: 255
    t.string "colonia", limit: 255
    t.string "ciudad", limit: 255
    t.string "telefonos", limit: 255
    t.string "fax", limit: 255
    t.string "rfc", limit: 255
    t.string "cp", limit: 255
    t.integer "situacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "cvealma_id"
  end

  create_table "proyectos", id: :serial, force: :cascade do |t|
    t.integer "periodo"
    t.integer "clave"
    t.string "proyecto", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renglons", id: :serial, force: :cascade do |t|
    t.integer "requisicion_id"
    t.string "renglon", limit: 255
    t.integer "proyecto_id"
    t.integer "programa_id"
    t.integer "clues_id"
    t.integer "partida_id"
    t.date "ejercicio"
    t.string "descripcion", limit: 255
    t.decimal "importe"
    t.datetime "created_at", default: -> { "now()" }
    t.datetime "updated_at"
    t.integer "etiqueta_id"
    t.decimal "cant_detpeds"
    t.index ["id"], name: "idrengs", order: "NULLS FIRST"
    t.index ["renglon", "requisicion_id"], name: "index_renglons_on_requisicion_id_and_renglon"
    t.index ["requisicion_id"], name: "idrequis", order: "NULLS FIRST"
  end

  create_table "reordens", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 255
    t.integer "partida_id"
    t.integer "catalogo_id"
    t.decimal "punto"
    t.integer "tipo_id"
    t.integer "almacen_id"
    t.integer "user_id"
    t.integer "notifica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date "vigenciai"
    t.date "vigenciaf"
    t.integer "estado_id"
    t.decimal "existencia"
  end

  create_table "reportes", id: :serial, force: :cascade do |t|
    t.string "reporte", limit: 255
    t.date "desde"
    t.date "hasta"
    t.integer "unidad"
    t.integer "cpini"
    t.integer "cpfin"
    t.integer "usuario"
    t.string "texto", limit: 255
    t.integer "rango1"
    t.integer "rango2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "sistema_id"
  end

  create_table "reqnota", force: :cascade do |t|
    t.integer "requisicion_id"
    t.integer "user_id"
    t.date "fecha"
    t.text "comenta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reqnotas", id: :serial, force: :cascade do |t|
    t.integer "requisicion_id"
    t.integer "user_id"
    t.date "fecha"
    t.text "comenta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requisicions", id: :serial, force: :cascade do |t|
    t.date "fecha"
    t.integer "clues_id"
    t.integer "fuente_id"
    t.integer "user_id"
    t.integer "autoriza_id"
    t.integer "estado_id"
    t.boolean "anexos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "etiqueta"
    t.decimal "importe"
    t.integer "vobo_id"
    t.index ["id"], name: "id_requisiciones", order: "NULLS FIRST"
  end

  create_table "rols", id: :serial, force: :cascade do |t|
    t.string "rol", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "smpnotas", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.date "fecha"
    t.text "comenta"
    t.date "fecharesp"
    t.text "respuesta"
    t.integer "destinatario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicituds", id: :serial, force: :cascade do |t|
    t.integer "area_id"
    t.integer "user_id"
    t.integer "vobotecnico_id"
    t.integer "tipo_id"
    t.integer "partida_id"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.string "notas", limit: 255
    t.boolean "anexos"
    t.date "recepcion"
    t.integer "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "fuente_id"
    t.integer "programa_id"
    t.integer "proyecto_id", default: 512
    t.decimal "importe"
    t.integer "adqui_id"
    t.decimal "techo"
    t.integer "tipotecho"
    t.index ["id"], name: "id_solics", order: "NULLS FIRST"
  end

  create_table "solnotas", id: :serial, force: :cascade do |t|
    t.integer "solicitud_id"
    t.integer "user_id"
    t.date "fecha"
    t.text "comenta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["id"], name: "id_solnotas", order: "NULLS FIRST"
    t.index ["solicitud_id"], name: "solnot_index"
  end

  create_table "subpros", id: :serial, force: :cascade do |t|
    t.integer "programa_id"
    t.string "clave", limit: 255
    t.string "programa", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temp", id: false, force: :cascade do |t|
    t.integer "pedido"
    t.integer "claveuni"
    t.string "nombreuni", limit: 255
    t.string "articulo", limit: 255
    t.integer "partida"
    t.decimal "preciouni"
    t.decimal "cantidad"
    t.string "marca", limit: 255
    t.integer "clavepro"
    t.string "proveedor", limit: 255
    t.date "entrega"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.integer "requisicion"
    t.string "proceso", limit: 255
    t.string "fuente", limit: 255
    t.integer "pedidounico"
    t.string "almacen", limit: 255
    t.string "archivo", limit: 255
    t.decimal "cantfac"
    t.decimal "cantcanc"
    t.date "elaboracion"
    t.integer "etiqueta"
    t.integer "proyecto"
    t.string "programa", limit: 255
    t.string "subprograma", limit: 255
    t.text "comenta"
    t.integer "iva"
  end

  create_table "temp1", id: false, force: :cascade do |t|
    t.integer "idpedido"
    t.integer "partida"
    t.string "idarticulo", limit: 255
    t.text "descripcio"
    t.string "presentaci", limit: 255
    t.string "marca", limit: 255
    t.decimal "cantidad"
    t.string "nombreunid", limit: 255
    t.decimal "preciounit"
    t.string "nombrefuen", limit: 255
    t.integer "requisicio"
    t.string "fiscal", limit: 255
    t.float "ejercicio"
  end

  create_table "temp10", id: false, force: :cascade do |t|
    t.integer "idpedido"
    t.integer "partida"
    t.string "idarticulo", limit: 255
    t.text "descripcio"
    t.string "presentaci", limit: 255
    t.string "marca", limit: 255
    t.decimal "cantidad"
    t.string "nombreunid", limit: 255
    t.decimal "preciounit"
    t.string "nombrefuen", limit: 255
    t.integer "requisicio"
    t.string "fiscal", limit: 255
    t.integer "ejercicio"
  end

  create_table "temp11", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "detped_id"
    t.string "anexo", limit: 255
    t.integer "renglon"
    t.integer "partida_id"
    t.integer "partida"
    t.integer "catalogo_id"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precio"
    t.integer "prov_id"
    t.string "fiscal", limit: 255
    t.string "marca", limit: 255
    t.integer "proceso_id"
    t.string "proceso", limit: 255
    t.string "empates", limit: 255
    t.integer "fuente_id"
    t.string "fuente", limit: 255
    t.integer "clue_id"
    t.integer "almacen_id"
    t.string "unidad", limit: 255
    t.integer "programa_id"
    t.string "cveprog", limit: 255
    t.string "programa", limit: 255
    t.string "subprog2011", limit: 255
    t.string "accion2011", limit: 255
    t.decimal "cantidad"
    t.decimal "importe"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.integer "sinonimo"
    t.string "actividad", limit: 255
    t.date "entrega"
    t.integer "cp_id"
    t.integer "etiqueta"
  end

  create_table "temp12", id: false, force: :cascade do |t|
    t.integer "almacen_id"
    t.integer "catalogo_id"
    t.decimal "total"
  end

  create_table "temp13", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "detped_id"
    t.string "anexo", limit: 255
    t.integer "renglon"
    t.integer "partida_id"
    t.integer "partida"
    t.integer "catalogo_id"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precio"
    t.integer "prov_id"
    t.string "fiscal", limit: 255
    t.string "marca", limit: 255
    t.integer "proceso_id"
    t.string "proceso", limit: 255
    t.string "empates", limit: 255
    t.string "fuente_id", limit: 255
    t.string "fuente", limit: 255
    t.integer "clue_id"
    t.integer "almacen_id"
    t.string "unidad", limit: 255
    t.integer "programa_id"
    t.string "cveprog", limit: 255
    t.string "programa", limit: 255
    t.string "subprog2011", limit: 255
    t.string "accion2011", limit: 255
    t.decimal "cantidad"
    t.decimal "importe"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.integer "sinonimo"
    t.string "actividad", limit: 255
    t.date "entrega"
    t.integer "cp_id"
  end

  create_table "temp14", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "detped_id"
    t.string "anexo", limit: 255
    t.integer "renglon"
    t.integer "partida_id"
    t.integer "partida"
    t.integer "catalogo_id"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precio"
    t.integer "prov_id"
    t.string "fiscal", limit: 255
    t.string "marca", limit: 255
    t.integer "proceso_id"
    t.string "proceso", limit: 255
    t.string "empates", limit: 255
    t.string "fuente_id", limit: 255
    t.string "fuente", limit: 255
    t.integer "clue_id"
    t.integer "almacen_id"
    t.string "unidad", limit: 255
    t.integer "programa_id"
    t.string "cveprog", limit: 255
    t.string "programa", limit: 255
    t.string "subprog2011", limit: 255
    t.string "accion2011", limit: 255
    t.decimal "cantidad"
    t.decimal "importe"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.integer "sinonimo"
    t.string "actividad", limit: 255
    t.date "entrega"
    t.integer "cp_id"
  end

  create_table "temp15", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "detped_id"
    t.string "anexo", limit: 255
    t.integer "renglon"
    t.integer "partida_id"
    t.integer "partida"
    t.integer "catalogo_id"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "precio"
    t.integer "prov_id"
    t.string "fiscal", limit: 255
    t.string "marca", limit: 255
    t.integer "proceso_id"
    t.string "proceso", limit: 255
    t.string "empates", limit: 255
    t.integer "fuente_id"
    t.string "fuente", limit: 255
    t.integer "clue_id"
    t.integer "almacen_id"
    t.string "unidad", limit: 255
    t.integer "programa_id"
    t.string "cveprog", limit: 255
    t.string "programa", limit: 255
    t.string "subprog2011", limit: 255
    t.string "accion2011", limit: 255
    t.decimal "cantidad"
    t.decimal "importe"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.integer "sinonimo"
    t.string "actividad", limit: 255
    t.date "entrega"
    t.integer "cp_id"
    t.integer "etiqueta"
  end

  create_table "temp16", id: false, force: :cascade do |t|
    t.integer "clues_id"
    t.integer "user_id"
    t.integer "autoriza_id"
    t.integer "estado_id"
    t.integer "vobo_id"
    t.date "fecha"
    t.integer "fuente_id"
  end

  create_table "temp17", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "catalogo_id"
    t.integer "nuevoped"
  end

  create_table "temp18", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "clues_id"
    t.integer "proceso_id"
    t.date "fecha"
    t.integer "proveedor_id"
    t.integer "condiciones_id"
    t.integer "almacen_id"
    t.date "entrega"
    t.integer "requisicion_id"
    t.integer "programa_id"
    t.text "observaciones"
    t.integer "user_id"
    t.integer "jda_id"
    t.integer "so_id"
    t.integer "cp_id"
    t.integer "da_id"
    t.integer "dg_id"
    t.integer "adq_id"
    t.decimal "subtotal"
    t.decimal "iva"
    t.decimal "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "estado_id"
    t.integer "renglon_id"
    t.integer "tipo_id"
    t.integer "partida_id"
    t.decimal "pena"
    t.integer "contrato"
    t.integer "fuente_id"
    t.integer "fianza_id"
  end

  create_table "temp19", id: false, force: :cascade do |t|
    t.integer "clue_id"
    t.integer "fuente_id"
    t.integer "programa_id"
    t.decimal "importe"
    t.integer "proyecto_id"
    t.integer "requisicion_id"
    t.date "ejercicio"
    t.integer "partida_id"
  end

  create_table "temp2", id: false, force: :cascade do |t|
    t.integer "uniresp"
    t.integer "programa"
    t.integer "subprograma"
    t.string "descripcion", limit: 255
    t.integer "ff"
    t.integer "obra"
    t.integer "partest"
    t.integer "cvejur"
    t.integer "cveunidad"
    t.string "unidad", limit: 255
    t.integer "cveprog"
    t.string "progabrev", limit: 255
    t.string "nom_prog", limit: 255
    t.integer "cvesubprog"
    t.string "nomsubprog", limit: 255
    t.integer "cveaccion"
    t.string "nomaccion", limit: 255
    t.string "rubro", limit: 255
    t.integer "partida"
    t.string "cveart", limit: 255
    t.integer "sinonimo"
    t.text "articulo"
    t.text "presentacion"
    t.string "fuente", limit: 255
    t.decimal "cantidad"
    t.decimal "costo"
    t.string "observaciones", limit: 255
    t.string "nup", limit: 255
  end

  create_table "temp20", id: false, force: :cascade do |t|
    t.integer "id"
    t.date "fecha"
    t.integer "clues_id"
    t.integer "fuente_id"
    t.integer "user_id"
    t.integer "autoriza_id"
    t.integer "estado_id"
    t.boolean "anexos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "etiqueta"
    t.decimal "importe"
    t.integer "vobo_id"
  end

  create_table "temp21", id: false, force: :cascade do |t|
    t.string "almacen", limit: 255
    t.integer "almacen_id"
    t.string "fuentecve", limit: 255
    t.string "fuente", limit: 255
    t.integer "fuente_id"
    t.integer "partida"
    t.integer "partida_id"
    t.string "clave", limit: 255
    t.string "sinonimo", limit: 255
    t.integer "catalogo_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "cantidadp"
    t.decimal "precio"
    t.string "lote", limit: 255
    t.date "caducidad"
    t.decimal "existencia"
    t.decimal "monto"
    t.integer "movimiento_id"
    t.integer "estado_id"
  end

  create_table "temp3", id: false, force: :cascade do |t|
    t.integer "id"
    t.integer "clues_id"
    t.integer "proceso_id"
    t.date "fecha"
    t.integer "proveedor_id"
    t.integer "condiciones_id"
    t.integer "almacen_id"
    t.date "entrega"
    t.integer "requisicion_id"
    t.integer "programa_id"
    t.text "observaciones"
    t.integer "user_id"
    t.integer "jda_id"
    t.integer "so_id"
    t.integer "cp_id"
    t.integer "da_id"
    t.integer "dg_id"
    t.integer "adq_id"
    t.decimal "subtotal"
    t.decimal "iva"
    t.decimal "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "estado_id"
    t.integer "renglon_id"
    t.integer "tipo_id"
    t.integer "partida_id"
    t.decimal "pena"
    t.integer "contrato"
    t.integer "fuente_id"
    t.integer "fianza_id"
    t.decimal "facfianza"
    t.integer "reqexterna"
    t.integer "requi2_id"
    t.integer "requi3_id"
    t.integer "requi4_id"
    t.decimal "montoreq"
    t.decimal "montoreq2"
    t.decimal "montoreq3"
    t.decimal "montoreq4"
  end

  create_table "temp4", id: false, force: :cascade do |t|
    t.integer "ped_id"
    t.integer "clave_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.string "marca_mod", limit: 255
    t.decimal "cantidad"
    t.decimal "precio"
    t.decimal "iva"
    t.integer "caducidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "importe"
    t.decimal "total"
    t.decimal "recibido"
    t.decimal "cancelado"
    t.integer "estado_id"
    t.integer "requisicion_id"
    t.integer "renglon_id"
  end

  create_table "temp5", id: false, force: :cascade do |t|
    t.integer "id"
    t.date "fecha"
    t.integer "clues_id"
    t.integer "fuente_id"
    t.integer "user_id"
    t.integer "autoriza_id"
    t.integer "estado_id"
    t.boolean "anexos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "etiqueta"
    t.decimal "importe"
    t.integer "vobo_id"
  end

  create_table "temp6", id: false, force: :cascade do |t|
    t.integer "cvealma_id"
    t.string "nombre", limit: 255
    t.string "fiscal", limit: 255
    t.string "domicilio", limit: 255
    t.string "colonia", limit: 255
    t.string "ciudad", limit: 255
    t.string "telefonos", limit: 255
    t.string "fax", limit: 255
    t.string "rfc", limit: 255
    t.string "cp", limit: 255
  end

  create_table "temp7", id: false, force: :cascade do |t|
    t.integer "partida_id"
    t.integer "partida"
    t.string "clave", limit: 255
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.integer "estado_id"
  end

  create_table "temp8", id: false, force: :cascade do |t|
    t.integer "solicitud_id"
    t.integer "clues_id"
    t.integer "partida_id"
    t.integer "clave_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.string "marca_mod", limit: 255
    t.decimal "cantidad"
    t.decimal "precio"
    t.integer "caducidad"
    t.integer "almacen_id"
    t.integer "entregas"
    t.integer "requisicion_id"
    t.integer "renglon_id"
    t.string "capacitacion", limit: 255
    t.string "muestra", limit: 255
    t.string "notas", limit: 255
    t.boolean "anexos"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "proceso_id"
    t.integer "ped_id"
  end

  create_table "temp9", id: false, force: :cascade do |t|
    t.string "almacen", limit: 255
    t.integer "almacen_id"
    t.string "fuentecve", limit: 255
    t.string "fuente", limit: 255
    t.integer "fuente_id"
    t.integer "partida"
    t.integer "partida_id"
    t.string "clave", limit: 255
    t.string "sinonimo", limit: 255
    t.integer "catalogo_id"
    t.text "descripcion"
    t.string "presentacion", limit: 255
    t.decimal "cantidadp"
    t.decimal "precio"
    t.string "lote", limit: 255
    t.date "caducidad"
    t.decimal "existencia"
    t.decimal "monto"
    t.integer "movimiento_id"
    t.integer "estado_id"
  end

  create_table "temporal", id: :integer, default: nil, force: :cascade do |t|
    t.text "c1"
    t.text "c2"
    t.text "c3"
    t.text "c4"
    t.text "c5"
    t.text "c6"
    t.text "c7"
    t.text "c8"
    t.text "c9"
    t.text "c10"
    t.text "c11"
    t.text "c12"
    t.text "c13"
    t.text "c14"
    t.text "c15"
    t.text "c16"
    t.text "c17"
    t.text "c18"
    t.text "c19"
    t.text "c20"
    t.text "c21"
    t.text "c22"
    t.text "c23"
    t.text "c24"
    t.text "c25"
    t.text "c26"
    t.text "c27"
    t.text "c28"
    t.text "c29"
    t.text "c30"
    t.text "c31"
    t.text "c32"
    t.text "c33"
    t.text "c34"
    t.text "c35"
    t.text "c36"
    t.text "c37"
    t.text "c38"
    t.text "c39"
    t.text "c40"
  end

  create_table "tipos", id: :serial, force: :cascade do |t|
    t.string "tipo", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "titulo", limit: 255
    t.string "nombre", limit: 255
    t.string "puesto", limit: 255
    t.integer "area_id"
    t.integer "rol_id"
    t.integer "estructura_id"
    t.string "login", limit: 255
    t.string "email", limit: 255
    t.string "crypted_password", limit: 40
    t.string "salt", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "remember_token", limit: 255
    t.datetime "remember_token_expires_at"
    t.integer "dato1"
    t.integer "dato2"
    t.index ["id"], name: "users_id", order: "NULLS FIRST"
    t.index ["rol_id"], name: "users_rol", order: "NULLS FIRST"
  end

  create_table "v_dblink_conexion", id: :serial, force: :cascade do |t|
    t.text "conexion_presup"
    t.integer "ejercicio"
  end

end
