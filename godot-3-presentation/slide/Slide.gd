extends Container

signal content_updated(data)

func _on_Presentation_new_slide_requested(slide_data):
	var content = {
		'title': '',
		'subtitle': '',
		'body': '',
		'picture': '',
		'video': '',
		'demo': '',
		'footer': '',
		'background': '',
		'config': {}
	}
	for key in data.keys():
		content[key] = data[key]
	emit_signal("content_updated", content)
