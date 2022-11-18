install: 
	# install necessary pacakges 
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	# format python code
	black app/*.py 
lint:
	# lint python code
	pylint --disable=R,C app/*.py 
test:
	# run tests
	#python -m pytest -vv --cov=lib --cov=main test_*.py