select url from emrid group by url;

/*
+----------------------------------+
| url                              |
+----------------------------------+
| Belladeres/                      |
| Boucan Carre/                    |
| Boucan-carre/                    |
| boucan/fp_images_with_emr_id/    |
| Cange/                           |
| cange/fp_images_with_emr_id/     |
| Cerca la Source/                 |
| Hinche/                          |
| HUM/                             |
| Lacollines/                      |
| PRA/                             |
| pra/fp_images_with_emr_id/       |
| SSPE/                            |
| sspe/fp_images_with_emr_id/      |
| Thomonde/                        |
| Verrettes/                       |
| verrettes/fp_images_with_emr_id/ |
+----------------------------------+
*/


/* Cange */
select * from emrid where url = "Cange/";
select * from emrid where url = 'cange/fp_images_with_emr_id/';
select * from emrid where url = 'cange/fp_images_with_emr_id/' OR url = 'Cange/';

