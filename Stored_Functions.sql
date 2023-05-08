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

DROP PROCEDURE IF EXISTS update_service_id
CREATE OR REPLACE PROCEDURE update_service_id(
	_car_id INTEGER,
	_invoice_id INTEGER,
	_service_id INTEGER
)
AS $$
	BEGIN
		UPDATE public."Invoices"
		SET service_id = _service_id
		WHERE car_id = _car_id AND invoice_id = _invoice_id;
		COMMIT;
	END;	
$$
LANGUAGE plpgsql;

CALL update_service_id(2,5,1)

SELECT *
FROM public."Invoices"