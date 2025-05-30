SELECT ARDESART,ARCODART,ARUNMIS1,ARTIPART,ARCATOMO,ARCATCON , (select COCOEIMP
																from ADHOC.adhoc.CEPIDIS_COMP
																where COCODCOM = 'M.O.INT.' and corifdis = <TAG> )
FROM articoli WHERE (ARCODART like '<TAG>')
and ARTIPART IN ('PF','SE','MP','PFE')
and ARCATCON NOT IN ('RAS','COM')