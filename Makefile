# vim :set ft=make:

virt_env:
	virtualenv virt_env
	./virt_env/bin/pip install jinja2
	./virt_env/bin/pip install markdown2
	./virt_env/bin/pip install pyyaml
	@echo '---'
	@echo '--> $ source virt_env/bin/activate'

watch:
	filewatcher "templates/*.html public/css/* public/imgs/* tasks/*"  tasks/build
