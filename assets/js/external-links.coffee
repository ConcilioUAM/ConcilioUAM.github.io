---
# Para que sea procesado
---

$ () ->
	$('a:not([data-no-sigil])')
		.filter () -> @.host != window.location.host
		.attr('target', '_blank')
