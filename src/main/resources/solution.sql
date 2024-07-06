---doctor Tablosu Oluşturma:

CREATE TABLE doctor (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    proficiency VARCHAR
);


---nurse Tablosu Oluşturma:
CREATE TABLE nurse (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    proficiency VARCHAR
);

---patient Tablosu Oluşturma:
CREATE TABLE patient (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    email VARCHAR,
    complaint TEXT
);


--surgery Tablosu Oluşturma:
CREATE TABLE surgery (
    id BIGSERIAL PRIMARY KEY,
    nurse_id BIGINT,
    patient_id BIGINT,
    doctor_id BIGINT,
    FOREIGN KEY (nurse_id) REFERENCES nurse(id),
    FOREIGN KEY (patient_id) REFERENCES patient(id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);


---operation Tablosu Oluşturma:
CREATE TABLE operation (
    id BIGSERIAL PRIMARY KEY,
    patient_id BIGINT,
    doctor_id BIGINT,
    FOREIGN KEY (patient_id) REFERENCES patient(id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);