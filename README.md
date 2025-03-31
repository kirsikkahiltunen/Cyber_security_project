# Cyber_security_project

## Installation Instructions:
1.	Clone the repository to your local machine.
2.	Navigate to the root directory of the cloned repository.
3.	Create a local .env file in the same directory with the following content:
SECRET_KEY=your_secret_key
DATABASE_URI=postgresql:///database_name
4.	Set up and activate a virtual environment, then install dependencies:
$ python3 -m venv venv

$ source venv/bin/activate

(venv) $ pip install -r requirements.txt

(venv) $ psql < schema.sql

5.	Run the application using: (venv) $ flask run
