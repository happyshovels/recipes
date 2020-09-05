
PYTHON=python3.7

# create virtual environement "env"
$PYTHON -m venv env

# update pip
./env/bin/$PYTHON -m pip install --upgrade pip

# install all packages from dependency list
./env/bin/pip install -r requirements.txt

