set -e

docker pull 22it227/simple-python-flask-app

docker run -d -p 5000:5000 22it227/simple-python-flask-app