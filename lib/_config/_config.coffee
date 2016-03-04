# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'medcrowdsourcing'
	title: ->
			TAPi18n.__ 'medcrowdsourcing'
	subtitle: ->
			TAPi18n.__ 'a crowdsourcing website that let people to label vessels'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false

	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'http://meteorfactory.io'
	termsUrl: 'http://meteorfactory.io'

	# For email footers
	legal:
		address: 'Jessnerstrasse 18, 12047 Berlin'
		name: 'Meteor Factory'
		url: 'http://benjaminpeterjones.com'

	about: 'http://meteorfactory.io'
	blog: 'http://learn.meteorfactory.io'

	socialMedia:
		facebook:
			url: ''
			icon: 'facebook'
		twitter:
			url: ''
			icon: 'twitter'
		github:
			url: ''
			icon: 'github'


	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/dashboard'
