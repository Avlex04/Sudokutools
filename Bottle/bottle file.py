from bottle import route, run, template, request


@route('/login/<name>')
def login():
    return '''
        <form action="/login" method="post">
            username: <input name="username" type="text" />
            password: <input name="password" type="password" />
            <input value="Login" type="submit" />
        </form>
           '''

@route('/login', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')
    if username==username and password==password:
        return "<p>You have logged in successfuly</p>"
    else:
        return "<p>Your log in attempt has failed</p>"
if __name__ == "__main__":
    run(debug=True, reloader=True)