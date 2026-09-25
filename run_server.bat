@echo off
python -m venv .venv
call .venv\Scripts\activate
python -m pip install -r requirements.txt
python manage.py makemigrations accounts inventory receipts orders notifications
python manage.py migrate
python manage.py runserver
pause
