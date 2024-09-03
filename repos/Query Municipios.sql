SELECT Nombre_Municipio, Nombre_Departamento, LEN(Nombre_Municipio)
from [DIVIPOLA-_C_digos_municipios_20240706]
GROUP by Nombre_Municipio, Nombre_Departamento
ORDER by LEN(Nombre_Municipio) DESC