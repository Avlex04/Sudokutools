from bottle import route, run, template

# watch https://www.youtube.com/watch?v=Mb06RZBaL9w&list=PLXmMXHVSvS-AyIwEYkGNa4WE1AR1_45mv&index=2 first
@route('/class/<class_name>')
def hallo(class_name):
    return template("03_template", class_name=class_name)

if __name__ == '__main__':
    run(debug=True, reloader=True)