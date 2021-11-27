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

/* Belladeres */

select * from emrid where url = 'Belladeres/';

/* Boucan Carre */
select * from emrid where url = "Boucan Carre/";
select * from emrid where url = 'boucan/fp_images_with_emr_id/';
select * from emrid where url = 'Boucan-carre/';
select * from emrid where url = 'Boucan-carre/' OR url = "Boucan Carre/" OR url = "boucan/fp_images_with_emr_id/" ;

/* Cerca la Source */
select * from emrid where url = "Cerca la Source/";

/* Hinche */
select * from emrid where url = "Hinche/";


/* HUM */
select * from emrid where url = "HUM/";

/* Lacollines */
select * from emrid where url = "Lacollines/";

/* PRA */