CREATE DEFINER=`root`@`localhost` PROCEDURE `pedja_procedura`(IN naziv_kompanije varchar(60), naziv_proizvoda varchar(60))
BEGIN
	SELECT DISTINCT ps.PS_ID, ps.PS_NAZIV, prs.PROJ_NAZIV, e.PS_ID, e.SPR_KATBR, kp.SPR_NAZIV

	FROM poslovni_subjekat ps

	INNER JOIN projekat_realizacije_softvera prs ON prs.PS_ID = ps.PS_ID
	INNER JOIN sta_je_predmet_projekta e ON e.PROJ_ID = prs.PROJ_ID
	INNER JOIN softverski_proizvod kp ON e.SPR_KATBR = kp.SPR_KATBR

	WHERE ps.PS_NAZIV = naziv_kompanije AND kp.SPR_NAZIV = naziv_proizvoda;


END