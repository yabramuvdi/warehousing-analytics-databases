./Desktop/BGSE/term1/data_warehousing/warehousing-operational-databases/homework/setup.sh

cat Desktop/BGSE/term1/data_warehousing/warehousing-analytics-databases/homework/db_structure.sql | docker run --net host -i postgres psql --host 0.0.0.0 --user postgres

#Create a virtual environment
python3 -m venv yabra_venv 

#Activate virtual environment
source yabra_venv/bin/activate

#Install necessary packages
pip install psycopg2-binary
pip install pandas
pip install sqlalchemy

#Run a Python file that populates the database and normalizes it
python Desktop/BGSE/term1/data_warehousing/warehousing-analytics-databases/homework/ETL.py