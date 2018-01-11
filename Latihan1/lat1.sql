Buatlah query untuk menampilkan seluruh data karyawan dari table employees yang diurutkan berdasarkan email paling terakhir.
select * from employees ORDER BY email DESC

Buatlah query untuk menampilkan data karyawan yang gajinya lebih besar 3200.00 sampai dengan 12000.00.
select * from employees where salary > 3200 and salary < 12000

Buatlah query untuk menampilkan data karyawan yang memiliki huruf A diawal nama depannya.
select * from employees where first_name like 'A%'

Buatlah query untuk menampilkan data karyawan yang memiliki kode karyawan diantaranya 
103, 115, 196, 187, 102 dan 100 
select * from employees where employee_id IN (103, 115, 196, 187, 102, 100)

Buatlah query untuk menampilkan data karyawan yang nama belakangnya memiliki huruf kedua u.
select * from employees where last_name like '_u%'

Buatlah query untuk menampilkan kode department apa saja yang ada di tabel employees secara unique
SELECT DISTINCT (department_id)FROM employees ORDER BY department_id

Buatlah query untuk menampilkan nama lengkap karyawan, kode jabatan, gaji setahun dari table employees yang kode manager sama dengan 100.
select first_name || ' ' || last_name as nama_lengkap , employee_id , (salary * 365) as gaji_setahun from employees where manager_id = 100

Buatlah query untuk menampilkan nama belakang, gaji perbulan, kode jabatan dari table employees yang tidak memiliki komisi
select last_name, (salary * 30) as gaji_bulanan, job_id, from employees where commission_pct is NULL

Buatlah query untuk menampilkan data karyawan yang bukan dari jabatan IT_PROG dan SH_CLERK.
select * from employees where job_id NOT IN ('IT_PROG', 'SH_CLERK')