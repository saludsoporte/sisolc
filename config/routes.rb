Rails.application.routes.draw do
  	
	get 'contabilidads/index'
	get 'contabilidads/show'
  	root "welcome#index"
	get 'propuestas/index'
  	get 'reportes/index'
	get 'clues/index'
	get 'fianzas/index'
	get 'pedidos/index'
	get 'poas/index'
	get 'partidas/index'
	get 'reqnota/index'
	get 'reqnotas/index'

	get 'procesos/vistaimp', to: "procesos#vistaimp"
	get '/session', to: "session#new"  
	get '/logout', to: "session#destroy"
	get 'requisicions/vistaimp', to: "requisicions#vistaimp"  
	get '/partidas/excel', to: "partidas#excel"
	
	get "reordens/carga", to: "reordens#carga"
	get "reordens/:id/carga", to: "reordens#carga"

	resources :session,
		:solicituds,
		:requisicions,	
		:renglons,
		:pedidos,
		:poas,
		:reqnotas,
		:solnotas,
		:peds,
		:articulos,
		:provs,
		:partidas,
		:procesos,
		:lotes,
		:almacens,
		:detpeds,
		:movimientos,
		:reportes, #falta
		:reordens,	#falta
		:contabilidads, #falta
		:fianzas,#falta
		:ajustes,
		:catalogos,
		:users,
		:pacientes,
		:domicilios,
		:afiliacions,
		:atencions,
		:evolucions,
		:nacidos,
    :propuestas

end
