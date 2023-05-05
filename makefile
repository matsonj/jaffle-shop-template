build:
	echo "START"; \
	python -m pip install -r requirements.txt && dbt deps & \
	npm --prefix ./reports install & \
	meltano install & \
	wait; \
	echo "DONE"

load: 
	meltano run el

up:
	make build load