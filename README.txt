Username / Password
-----
tripmedi@173.246.103.245
startupbusnyc



MAKE A REMOTE BACKUP
-----
ssh tripmedi@173.246.103.245 mysqldump –u tripmedi –opt tripmedi | mysql –u tripmedi tripmedi



RESTORE A BACKUP
-----
mysql -u tripmedi -p tripmedi < tripmedi.sql


Tripit Developer API Codes
-----
API Key 
72d0265cfa203cae57b639500185e3c6e51aeadc

API Secret 
faa89ae984ae58dc9ba0877a8efb8cfd6e752709



EXPORT DATA
-----
echo "SELECT * FROM country"  mysql -u tripmedi -p -Dtripmedi > /tmp/outfile.txt; 
 


IMPORT DATA
-----
(local)
sudo cp country_import.data /opt/local/var/db/mysql5/tripmedi/
sudo cp procedure_import.data /opt/local/var/db/mysql5/tripmedi/
sudo cp provider_import.data /opt/local/var/db/mysql5/tripmedi/
sudo cp provider_procedure_import.data /opt/local/var/db/mysql5/tripmedi/


(on TripMedi server)
su root

mv country_import.data /var/lib/mysql/tripmedi/
mv procedure_import.data /var/lib/mysql/tripmedi/
mv provider_import.data /var/lib/mysql/tripmedi/
mv provider_procedure_import.data /var/lib/mysql/tripmedi/

exit


LOAD DATA INFILE 'country_import.data' INTO TABLE app_country FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA INFILE 'procedure_import.data' INTO TABLE app_procedure FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA INFILE 'provider_import.data' INTO TABLE app_provider FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA INFILE 'provider_procedure_import.data' INTO TABLE app_providerprocedure FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';



SETTING UP FOR UNICODE
-----
SET character_set_client = utf8, character_set_connection = utf8, character_set_database = utf8 ,character_set_results = utf8, character_set_server = utf8;

SET collation_connection = utf8_unicode_ci, collation_database = utf8_unicode_ci, collation_server = utf8_unicode_ci;  

SET table_type = InnoDB, storage_engine = InnoDB;


ALTER TABLE app_country ENGINE = InnoDB;
ALTER TABLE app_countryexchangerate ENGINE = InnoDB;    
ALTER TABLE app_procedure ENGINE = InnoDB;              
ALTER TABLE app_procedurerisk ENGINE = InnoDB;          
ALTER TABLE app_provider ENGINE = InnoDB;               
ALTER TABLE app_providerprocedure ENGINE = InnoDB;      
ALTER TABLE app_providerreputation ENGINE = InnoDB;     
ALTER TABLE app_userprofile ENGINE = InnoDB;            
ALTER TABLE auth_group ENGINE = InnoDB;                 
ALTER TABLE auth_group_permissions ENGINE = InnoDB;     
ALTER TABLE auth_message ENGINE = InnoDB;               
ALTER TABLE auth_permission ENGINE = InnoDB;            
ALTER TABLE auth_user ENGINE = InnoDB;
ALTER TABLE auth_user_groups ENGINE = InnoDB;
ALTER TABLE auth_user_user_permissions ENGINE = InnoDB;
ALTER TABLE django_admin_log ENGINE = InnoDB;
ALTER TABLE django_content_type ENGINE = InnoDB;
ALTER TABLE django_session ENGINE = InnoDB;
ALTER TABLE django_site ENGINE = InnoDB;
