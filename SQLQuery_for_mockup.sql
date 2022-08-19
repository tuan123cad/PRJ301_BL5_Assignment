SELECT CONCAT('NV',RIGHT(CONCAT('000',Teacher.id),4)) as 'ID' ,Teacher.name, Position.name as 'Pos' FROM Teacher, Position WHERE Teacher.posId = Position.id

SELECT tsd.[start], tsd.[end] FROM [Time Slot] ts,[Time Slot Detail] tsd WHERE ts.id = tsd.timeSlotId AND ts.isActive = 1 AND tsd.isActive = 1