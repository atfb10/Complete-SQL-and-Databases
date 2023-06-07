/*
Adam Forestier
June 7, 2023
*/

CREATE TABLE Student (
    student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);