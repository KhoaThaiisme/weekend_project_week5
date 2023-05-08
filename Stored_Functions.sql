DROP FUNCTION add_saleman_id
CREATE OR REPLACE FUNCTION add_saleman_id(
	_sale_person_id INTEGER,
	_car_id INTEGER
)
RETURNS INTEGER AS 
$$
	BEGIN
	UPDATE public."Cars"
	SET sale_person_id = _sale_person_id
	WHERE car_id = _car_id;
	RETURN _sale_person_id;
	END;
$$
LANGUAGE plpgsql;

SELECT add_saleman_id(2, 1)