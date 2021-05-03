containername := chalmerssecurity
workdirname := /opt/somecode/
username := INSERT USERNAME HERE
untar := /bin/bash -c "tar -xf contents.tar && /bin/bash -c 'rm -f contents.tar'"
convertimage := /bin/bash -c "convert -size 1200x120 xc:transparent -pointsize 82 -fill white -draw \"text 40,85 'Chalmers Security Lab'\" assets/img/logo.png"
buildsite := /bin/bash -c "bundle exec jekyll build --config _config.yml"
retar := /bin/bash -c "tar -cf site.tar _site"
deleteall := /bin/bash -c "rm -rf *"

build:
	@docker build -t $(containername) .

run:
	@echo "Will build webpage -- just sit back and relax..."
	@rm -rf _site
######## Pack the latest version on local machine
	@tar -cf contents.tar Gemfile Gemfile.lock assets _includes pdf _config.yml stylefix.css _bibliography _layouts _posts style.scss _data news publications images pages _sass
	@docker run --name $(containername) -t $(containername) &
	@sleep 1
	@docker cp contents.tar $(containername):$(workdirname)
	@rm -f contents.tar
######## Build web page
	@docker exec -it $(containername) $(untar)
	@docker exec -it $(containername) $(convertimage)
	@docker exec -it $(containername) ls
	@docker exec -it $(containername) $(buildsite)
	@docker exec -it $(containername) $(retar)
######## Copy the built page back to local machine
	@docker cp $(containername):$(workdirname)site.tar $$PWD
######## Clear the docker image, for next run
	@docker exec -it $(containername) $(deleteall)
######## Fix permissions etc. on local machine
	@tar -xf site.tar
	@chown -R $(username) _site
	@find _site -type f -exec chmod 660 \{\} \;
	@find _site -type d -exec chmod 770 \{\} \;
######## Cleanup
	@docker stop $(containername)
	@docker rm $(containername) || true
	@rm -f *~
	@rm -f site.tar
	@echo "All done!"
