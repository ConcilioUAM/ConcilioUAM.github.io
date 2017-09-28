---
# Para que sea procesado
---

$ () ->
	safe_hosts = [
		window.location.host
		"boardgamegeek.com"
		"github.com"
	]
	$('a:not([data-no-sigil])')
		.filter () -> @.host not in safe_hosts
		.attr('target', '_blank')
