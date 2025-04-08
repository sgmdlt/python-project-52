build:
	./build.sh

render-start:
	PATH=/opt/render/.local/bin:$$PATH gunicorn task_manager.wsgi:application

install:
	PATH=/opt/render/.local/bin:$$PATH uv sync

collectstatic:
	python3 manage.py collectstatic --noinput

migrate:
	python3 manage.py migrate

run:
	python3 manage.py runserver