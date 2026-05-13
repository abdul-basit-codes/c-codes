Hiring Management System (OOP Project Explanation)
This project is based on Object-Oriented Programming (OOP) concepts in C++. The system allows recruiters to post jobs and candidates to apply for them. It also uses file handling to save data permanently.
1. Classes Used in Project
The project contains multiple classes including Job, Application, Person, Recruiter, Candidate, Admin, and HiringSystem. Each class has its own data members and functions.
2. Inheritance
Recruiter and Candidate classes inherit from the Person class. This avoids code repetition and follows the concept of reusability.
3. Encapsulation
Private data members are used inside classes. Data is accessed using public getter and setter functions.
4. Polymorphism
The displayInfo() function is declared virtual in the Person class and overridden in child classes.
5. File Handling
The system stores recruiters, candidates, jobs, and applications in text files using ifstream and ofstream.
6. Encode and Decode
Encode converts special characters before saving data in files while decode restores the original data when reading from files.
7. Main Features
Recruiters can post jobs and manage applications. Candidates can browse jobs and apply online. Admin can view all users and jobs.
