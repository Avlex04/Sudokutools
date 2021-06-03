from bottle import route, run, template, request


@route("/login")
def klasse():
    username = request.query.username
    password = request.query.password
    return template("klasse", username=username, password=password)


if __name__ == "__main__":
    run(debug=True, reloader=True)