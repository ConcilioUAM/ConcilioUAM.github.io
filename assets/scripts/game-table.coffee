---
# Para que sea procesado
---


$ () ->
	$('input[name=players]').change () ->
		value = parseInt(@.value, 10)
		$('tbody > tr').removeClass('search-result')
		invalidValue = isNaN(value)

		$('tbody').toggleClass('searching', !invalidValue)

		return if invalidValue

		$('tbody > tr')
			.each () ->
				self = $(@)
				self.toggleClass(
					'search-result',
					self.data('minplayers') <= value <= self.data('maxplayers')
				)
