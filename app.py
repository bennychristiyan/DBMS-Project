from flask import Flask, render_template, request, flash
import mysql.connector

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Needed for flash messages

@app.route('/', methods=['GET', 'POST'])
def index():
    marks = None
    total = None
    status = None
    message = None
    register_no = None  # Store the register number to pass it to the template

    if request.method == 'POST':
        register_no = request.form['register_no']

        # Connect to the database
        conn = mysql.connector.connect(
            host='localhost',
            user='root',
            password='benny=2004',  # Replace with your MySQL password
            database='student_results'
        )
        cursor = conn.cursor()
        cursor.execute("SELECT sub1, sub2, sub3, sub4, sub5, total, status FROM result WHERE register_no = %s", (register_no,))
        results = cursor.fetchone()

        if results:
            marks = results[:-2]  # Extract all marks
            status = results[-1]  # Get status
            total = results[-2]  # Calculate total
        else:
            message = "Result not found for the given Register Number."
            flash(message)  # Show alert message

        cursor.close()
        conn.close()

    return render_template('index.html', marks=marks, total=total, status=status, register_no=register_no)

if __name__ == '__main__':
    app.run(debug=True)
