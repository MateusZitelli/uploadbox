require ['_manager'], (Manager) ->
	$(document).ready ->
    	$('[data-component]').each (i, el) -> Manager.init($(el))


# require jquery.ui.widget
# require _uuid
# require load-image.min
# require canvas-to-blob.min
# require jquery.iframe-transport
# require cors/jquery.postmessage-transport
# require cors/jquery.xdr-transport
# require jquery.fileupload
# require _image_uploader
# require _uploader_preview
# require _gallery_uploader
# require _show_image
# require _manager
