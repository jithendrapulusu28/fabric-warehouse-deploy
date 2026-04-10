# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "877a7b47-9000-4332-854d-67d733b6d845",
# META       "default_lakehouse_name": "LK_temp",
# META       "default_lakehouse_workspace_id": "dd0739d2-33d9-4931-8c93-ec385a3902b9",
# META       "known_lakehouses": [
# META         {
# META           "id": "877a7b47-9000-4332-854d-67d733b6d845"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

vl = notebookutils.variableLibrary.getLibrary("vl_testing")
lk_id = vl.getVariable("lk_id")
print(lk_id)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
