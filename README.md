# Apple-Health-CSV
Utilities for extracting and manipulating data from Apple Health exports

This is a dumping-ground of useful files and utilities for extracting and/or manipuating data from Apple Health.

To use it, export all your data to export.zip, unzip it and run

xsltproc health-to-csv.xslt.xsl apple_health_export/export.xml> apple-data-all.csv
