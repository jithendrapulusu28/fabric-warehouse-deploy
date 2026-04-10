# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "e644539e-7f7e-4dba-a490-b3adadd06a44",
# META       "default_lakehouse_name": "LK_temp",
# META       "default_lakehouse_workspace_id": "edd7e5ab-f03b-41af-8cce-a905d6bb0821",
# META       "known_lakehouses": [
# META         {
# META           "id": "e644539e-7f7e-4dba-a490-b3adadd06a44"
# META         }
# META       ]
# META     }
# META   }
# META }

# PARAMETERS CELL ********************

# Cell 1: Parameters
# This value will be overridden by the Deployment Pipeline Rule in ws-2
connection_id = "00000000-0000-0000-0000-000000000000" 

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

print(connection_id)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# Cell 2: Using the Connection
from notebookutils import mssparkutils

def connect_to_source(conn_id):
    print(f"Attempting to connect using ID: {conn_id}")
    
    try:
        # Example: Using the ID to get a token or path
        # In a real scenario, you might use this with a Web API or Linked Service
        token = mssparkutils.credentials.getToken("pbi")
        
        # If you are using an external API that requires this specific ID:
        base_url = f"https://api.fabric.microsoft.com/v1/connections/{conn_id}"
        print(f"Targeting environment endpoint: {base_url}")
        
        return True
    except Exception as e:
        print(f"Connection failed: {e}")
        return False

# Execute
is_connected = connect_to_source(connection_id)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
