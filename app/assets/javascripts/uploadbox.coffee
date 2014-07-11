define ['_manager'], (Manager) ->
	$(document).ready ->
    	$('[data-uploadbox-component]').each (i, el) -> Manager.init($(el))
