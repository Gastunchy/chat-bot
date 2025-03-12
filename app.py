from flask import Flask, render_template, request
import os
from datetime import datetime

app = Flask(__name__)

# Crear la carpeta /data si no existe
if not os.path.exists('data'):
    os.makedirs('data')

@app.route('/', methods=['GET', 'POST'])
def index():
    text = ""  # Variable para almacenar el texto ingresado
    message = ""  # Variable para almacenar el mensaje de confirmación
    if request.method == 'POST':
        # Obtener el texto del formulario
        text = request.form['text']
        
        # Crear un nombre único para el archivo basado en la fecha y hora
        filename = datetime.now().strftime("%Y%m%d%H%M%S") + '.txt'
        file_path = os.path.join('data', filename)

        # Guardar el texto en un archivo nuevo
        with open(file_path, 'w') as file:
            file.write(text)
        
        # Establecer el mensaje de confirmación
        message = f'Texto guardado como {filename}'

    return render_template('index.html', text=text, message=message)

if __name__ == '__main__':
    app.run(debug=True)
