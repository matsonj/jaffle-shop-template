build:
	python -m pip install -r requirements.txt && dbt deps
	npm --prefix ./reports install
	meltano install

load: 
	meltano run el

up:
	build load