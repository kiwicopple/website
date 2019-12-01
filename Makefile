

help:
	echo "TBD"


deploy:
	mv ./build/.gitrepo ./.gitrepo-build-bk
	npm run build
	mv ./.gitrepo-build-bk ./build/.gitrepo 
	git add . && git commit -m 'Bump'
	git subrepo push build