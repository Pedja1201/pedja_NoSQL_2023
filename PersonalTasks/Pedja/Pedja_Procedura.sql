CREATE DEFINER=`root`@`localhost` PROCEDURE `pedja_procedura`(IN naziv_kompanije varchar(60), naziv_proizvoda varchar(60))
BEGIN
	/*CREATE TEMPORARY TABLE IF NOT EXISTS temp_results (
        PS_ID INT,
        PS_NAZIV VARCHAR(255),
        PROJ_NAZIV VARCHAR(255),
        SPR_KATBR VARCHAR(10),
        SPR_NAZIV  VARCHAR(255)
    );

    INSERT INTO temp_results (PS_ID, PS_NAZIV, PROJ_NAZIV,
        SPR_KATBR, SPR_NAZIV)*/
        
	SELECT DISTINCT ps.PS_ID, ps.PS_NAZIV, prs.PROJ_NAZIV, e.PS_ID, e.SPR_KATBR, kp.SPR_NAZIV

	FROM poslovni_subjekat ps

	INNER JOIN projekat_realizacije_softvera prs ON prs.PS_ID = ps.PS_ID
	INNER JOIN sta_je_predmet_projekta e ON e.PROJ_ID = prs.PROJ_ID
	INNER JOIN softverski_proizvod kp ON e.SPR_KATBR = kp.SPR_KATBR

	WHERE ps.PS_NAZIV = naziv_kompanije AND kp.SPR_NAZIV = naziv_proizvoda;

	/*SELECT * FROM temp_results;

    DROP TEMPORARY TABLE IF EXISTS temp_results;*/
END