build:
	./build.sh

render-start:
	python3 -m gunicorn task_manager.wsgi:application

install:
	uv sync

collectstatic:
	python3 manage.py collectstatic --noinput

migrate:
	python3 manage.py migrate

run:
	python3 manage.py runserver