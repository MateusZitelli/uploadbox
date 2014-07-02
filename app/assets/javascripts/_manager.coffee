define ['require', '_uuid', '_image_uploader', '_uploader_preview', '_gallery_uploader', '_show_image'], (require) ->
  class @Manager
    @getInstanceName: (className) ->
      className.charAt(0).toLowerCase() + className.slice(1)

    @init = (container) ->
      classNames = container.data('component').split(' ')
      modules = {
        uuid: require('_uuid'),
        ImageUploader: require('_image_uploader'),
        UploaderPreview: require('_uploader_preview'),
        GalleryUploader: require('_gallery_uploader'),
        ShowImage: require('_show_image')
      }
      console.log(modules)
      for className in classNames
        if window[className]
          instanceName = Manager.getInstanceName(className)
          unless container.data(instanceName)
            console.log(className)
            instance = new (modules[className])(container)
            container.data(instanceName, instance)
        else
          console.warn "#{className} component not found"

