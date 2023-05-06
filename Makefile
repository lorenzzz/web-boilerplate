dev: 
	make -j 4 watch-js watch-pug watch-sass dev-server

watch-js:
	esbuild src/assets/js/app.js --outdir="dist/assets/js" --watch="forever"
	
watch-pug:	
	pug src/index.pug -w -o dist &
	
watch-sass:
	sass src/assets/css/style.scss dist/assets/css/style.css -w &

dev-server:	
	python3 -m http.server --directory dist 
