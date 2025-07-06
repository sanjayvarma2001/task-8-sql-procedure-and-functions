DELIMITER //

CREATE FUNCTION square_num(n INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN n * n;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE get_square(IN input_num INT, OUT result INT)
BEGIN
    SET result = square_num(input_num);
END //

DELIMITER ;
CALL get_square(6, @output);
SELECT @output AS SquareResult;
