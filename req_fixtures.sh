python3 -m venv venv
source venv/bin/activate

pip3 install -r requirements.txt

python3 manage.py migrate
python3 manage.py makemigrations
python3 manage.py migrate

python3 manage.py loaddata fixtures/auth.json
python3 manage.py loaddata fixtures/child_products.json
python3 manage.py oscar_import_catalogue fixtures/*.csv
python3 manage.py oscar_import_catalogue_images fixtures/images.tar.gz
python3 manage.py oscar_populate_countries --initial-only
python3 manage.py loaddata fixtures/pages.json fixtures/ranges.json fixtures/offers.json
python3 manage.py loaddata fixtures/orders.json
python3 manage.py clear_index --noinput
python3 manage.py update_index catalogue
# python3 manage.py thumbnail cleanup
python3 manage.py collectstatic --noinput
python3 manage.py runserver 0.0.0.0:8000