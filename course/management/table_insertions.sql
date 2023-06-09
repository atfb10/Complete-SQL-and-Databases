/*
Adam Forestier
June 8, 2023
*/

INSERT INTO teacher (
    first_name,
    last_name,
    email,
    date_of_birth
) VALUES (
    'Not Adam',
    'Forestier',
    'test2223@gmail.com',
    '1990-11-01'::DATE
);

INSERT INTO student (
    first_name,
    last_name,
    email,
    date_of_birth
) VALUES (
    'Adam',
    'Forestier',
    'test123@gmail.com',
    '1996-11-01'::DATE
);

INSERT INTO subject (
    subject,
    description
) VALUES (
    'Computer Science',
    'Theory and Application of Programming'
);

INSERT INTO course (
    "name",
    description
) VALUES (
    'COMP SCI 1200',
    'Discrete Mathmatics'
);

UPDATE course
    SET subject_id = '3f15747d-8439-4376-a653-f615da0fc019'
    where "name" = 'COMP SCI 1200'; 

ALTER TABLE course
    ALTER COLUMN subject_id SET NOT NULL;

UPDATE course
    SET teacher_id = '1fe7c2d3-ee0d-45da-919a-90389b9de6cb'
    WHERE "name" = 'COMP SCI 1200'

ALTER TABLE course
    ALTER COLUMN teacher_id SET NOT NULL;

INSERT INTO enrollment (
    student_id,
    course_id,
    enrollment_date
) VALUES (
    '3984b2eb-f1c9-4f17-93b7-685fd9f87c64',
    '2d169d71-d71e-42f6-96ff-d4f62c3762e5',
    '2023-06-08'::DATE
);

ALTER TABLE enrollment
    alter COLUMN student_id SET NOT NULL,
    ALTER COLUMN course_id  SET NOT NULL;

UPDATE course
SET feedback = array_append(
    feedback,
    ROW (
        '3984b2eb-f1c9-4f17-93b7-685fd9f87c64',
        5,
        'Loved the course!'
    )::feedback
)
WHERE course_id = '2d169d71-d71e-42f6-96ff-d4f62c3762e5';


CREATE TABLE Feedback (
    student_id UUID NOT NULL REFERENCES student(student_id),
    course_id UUID NOT NULL REFERENCES course(course_id),
    rating SMALLINT NOT NULL,
    feedback TEXT,
    CONSTRAINT pk_feedback PRIMARY KEY (student_id, course_id)
);