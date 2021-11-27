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
select count(*) from emrid where url = 'Cange/';
select count(*) from emrid where url = 'cange/fp_images_with_emr_id/';
select count(*) from emrid where url = 'cange/fp_images_with_emr_id/' OR url = 'Cange/';

/* Belladeres */

select count(*) from emrid where url = 'Belladeres/';

/* Boucan Carre */
select count(*) from emrid where url = 'Boucan Carre/';
select count(*) from emrid where url = 'boucan/fp_images_with_emr_id/';
select count*) from emrid where url = 'Boucan-carre/';
select count(*) from emrid where url = 'Boucan-carre/' OR url = 'Boucan Carre/' OR url = 'boucan/fp_images_with_emr_id/' ;

/* Cerca la Source */
select * from emrid where url = 'Cerca la Source/';

/* Hinche */
select * from emrid where url = 'Hinche/';


/* HUM */
select * from emrid where url = 'HUM/';

/* Lacollines */
select * from emrid where url = 'Lacollines/';

/* PRA */

select * from emrid where url = 'PRA/';
select * from emrid where url = 'pra/fp_images_with_emr_id/';
select * from emrid where url = 'PRA/' OR url = 'pra/fp_images_with_emr_id/ '; 

/* SSPE */

select * from emrid where url = 'SSPE/';
select * from emrid where url = 'sspe/fp_images_with_emr_id/ ';
select * from emrid where url = 'SSPE/' OR url = 'sspe/fp_images_with_emr_id/'; 

/* Thomonde */

select * from emrid where url = 'Thomonde/';

/* Verretes */ 

select * from emrid where url = 'Verrettes/';
select * from emrid where url = 'verrettes/fp_images_with_emr_id/';
select * from emrid where url = 'Verrettes/' OR url = 'verrettes/fp_images_with_emr_id/'; 


