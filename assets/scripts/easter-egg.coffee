---
# Para que sea procesado
---

secret = (password, chunk) ->
	pos = 0
	$(document).keypress (e) ->
		if password.charCodeAt(pos) is e.keyCode
			pos++
			if pos == password.length
				pos = 0
				chunk()
		else
			pos = 0

$ () ->
	secret("pascua", () ->
		$("img").attr("src", "/assets/images/girl.png")
	)

