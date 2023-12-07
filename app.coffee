# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Seongki Sohn"
	twitter: ""
	description: ""


isTapped = false

bgLayer = new BackgroundLayer

Framer.Defaults.Animation =
	time: 1
	curve: 'spring(450, 30, 0)'

baseLayer = new Layer
	width: 300
	height: 300
	borderRadius: '50%'
	backgroundColor: '#0064ff'
	clip: true

baseLayer.center()



overLayer = new Layer
	parent: baseLayer
	x: 300
	y: 300	
	width: 300
	height: 300
	borderRadius: '50%'
	backgroundColor: '#202632'

maskLayer = new Layer
	parent: baseLayer
	x: 300
	width: 400
	height: 400
	backgroundColor: 'white'

overLayer.states.default =
	x: 300
	y: 300

overLayer.states.moved = 
	x: 10
	y: 10


maskLayer.states.default = 
	x: 300
	y: 300
	rotation: 0

maskLayer.states.moved = 
	x: 90
	y: 90
	rotation: 45

# baseLayer.onMouseOver ->
# 	overLayer.animate('moved')
# 	maskLayer.animate('moved')

# baseLayer.onMouseOut ->
# 	overLayer.animate('default')
# 	maskLayer.animate('default')

baseLayer.onTap ->
	if isTapped
		overLayer.animate('default')
		maskLayer.animate('default')
		isTapped = false
	else
		overLayer.animate('moved')
		maskLayer.animate('moved')
		isTapped = true
