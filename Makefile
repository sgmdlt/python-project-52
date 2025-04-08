build:
	./build.sh

render-start:
	PATH=$$HOME/.cargo/bin:$$PATH gunicorn task_manager.wsgi:application

install:
	uv sync

collectstatic:
	python3 manage.py collectstatic --noinput

migrate:
	python3 manage.py migrate

run:
	python3 manage.py runserver