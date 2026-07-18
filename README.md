# C++ OOP Codes

Collection of C++ projects demonstrating **Object-Oriented Programming** concepts.

## Projects

### Hiring Management System (`hms_basic_model.cpp`)

A console-based hiring system with file persistence demonstrating:

- **Classes** — Job, Application, Person, Recruiter, Candidate, Admin, HiringSystem
- **Inheritance** — Recruiter and Candidate extend Person
- **Encapsulation** — Private members with getter/setter access
- **Polymorphism** — Virtual `displayInfo()` overridden in child classes
- **File Handling** — Persistent storage with `ifstream`/`ofstream`
- **Encode/Decode** — Special character handling for file I/O

## How to Compile & Run

```bash
g++ hms_basic_model.cpp -o hms
./hms
```

## OOP Concepts Demonstrated

| Concept | Implementation |
|---------|---------------|
| Abstraction | Abstract Person base class |
| Inheritance | Recruiter, Candidate extend Person |
| Polymorphism | Virtual displayInfo() |
| Encapsulation | Private data + public methods |
| File I/O | Text file persistence |
| Composition | HiringSystem owns Job/Application lists |
