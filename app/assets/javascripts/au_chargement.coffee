# document.addEventListener 'turbolinks:load', ->
# 	$("a:contains('Show')").text('Voir').addClass("btn btn-default")
# 	$("a[href*='edit']").addClass("btn btn-warning").text('Modifier')
# 	$("a[data-method='delete']").addClass("btn btn-danger").text('Supprimer')
# 	n = $("a[href*='new']").addClass("btn btn-success")
# 	t = n.text().split(' ')
# 	n.text('Nouveau '+t[1])
# 	return
	
# document.addEventListener 'turbolinks:load', ->
	# $.each $("a"), (index, valeur) ->
	# 	if valeur.href.match(/(edit)/g)
	# 		valeur.className += "btn btn-warning"
	# 		valeur.innerHTML = 'Modifier'
	# 	if valeur.href.match(/(new)/g)
	# 		valeur.className += "btn btn-success"
	# 		val = valeur.innerHTML.split(' ')
	# 		valeur.innerHTML = 'Nouveau ' + val[1]
	# 	if valeur.innerHTML == 'Show'
	# 		valeur.innerHTML = 'Voir'
	# 		valeur.className += "btn btn-default"
	# 	if r = valeur.getAttribute("data-method") 
	# 		if r.match(/(delete)/g)
	# 			valeur.className += "btn btn-danger"
	# 			valeur.innerHTML = 'Supprimer'
	# 	return
