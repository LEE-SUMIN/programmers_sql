SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
FROM ANIMAL_OUTS OUTS
LEFT JOIN ANIMAL_INS INS ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE LIKE 'Intact%' AND (OUTS.SEX_UPON_OUTCOME LIKE 'Spayed%' OR OUTS.SEX_UPON_OUTCOME LIKE 'Neutered%')
ORDER BY OUTS.ANIMAL_ID ASC;