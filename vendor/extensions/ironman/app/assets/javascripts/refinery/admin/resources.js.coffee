#= require jquery-fileupload/basic
#= require jquery-fileupload/vendor/tmpl

$(document).on 'page:load ready', ->
  $('#fileupload').fileupload
    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png|pdf|doc?x)$/i
      file = data.files[0]

      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#fileupload').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a png, doc, docx, gif, jpeg, or png image file")

    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')

    done: (e, data) ->
      file = data.files[0]
      domain = $('#fileupload').attr('action')
      path = $('#fileupload input[name=key]').val().replace('${filename}', file.name)
      to = $('#fileupload').data('post')
      content = {}
      content[$('#fileupload').data('as')] = path
      content['resource[file_size]'] = file.size
      content['resource[file_name]'] = file.name

      content['app_dialog'] = $('#fileupload').data('app-dialog')
      content['field'] = $('#fileupload').data('field')
      content['update_resource'] = $('#fileupload').data('update-resource')
      content['update_text'] = $('#fileupload').data('update-text')
      content['thumbnail'] = $('#fileupload').data('thumbnail')
      content['callback'] = $('#fileupload').data('callback')
      content['conditions'] = $('#fileupload').data('conditions')
      content['current_link'] = $('#fileupload').data('current-link')
      content['_method'] = if $('#fileupload').data('patch') then 'patch' else 'post'

      $.post(to, content, ->
        if not $('#fileupload').data('callback')?
          parent.refinery_dialog_success()
        else
          document.location.href = document.location.href
      )
      data.context.remove() if data.context # remove progress bar

    fail: (e, data) ->
      alert("#{data.files[0].name} failed to upload.")
      console.log("Upload failed:")
      console.log(data)

