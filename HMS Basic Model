#include <iostream>
#include <vector>
#include <string>
#include <iomanip>
#include <fstream>
#include <sstream>
using namespace std;

const string JOBS_FILE = "jobs.txt";
const string APPLICATIONS_FILE = "applications.txt";
const string RECRUITERS_FILE = "recruiters.txt";
const string CANDIDATES_FILE = "candidates.txt";

void separator() { cout << endl << string(55, '=') << endl; }

string encode(const string& s) {
    string r = s;
    for (char& c : r) if (c == '|') c = '\x01';
    return r;
}

string decode(const string& s) {
    string r = s;
    for (char& c : r) if (c == '\x01') c = '|';
    return r;
}

class Job {
private:
    static int idCounter;
    int jobId;
    string title;
    string description;
    string location;
    double salary;
    bool isOpen;

public:
    Job(string t, string d, string loc, double sal)
        : jobId(++idCounter), title(t), description(d),
        location(loc), salary(sal), isOpen(true) {
    }

    int getId() const { return jobId; }
    string getTitle() const { return title; }
    bool getIsOpen() const { return isOpen; }

    void display() const {
        cout << endl << "[Job ID: " << jobId << "] " << title
            << endl << "Location: " << location
            << endl << "Salary: PKR " << salary
            << endl << "Description: " << description << endl;
    }
};

int Job::idCounter = 0;

class Application {
private:
    static int idCounter;
    int appId;
    int jobId;
    string candidateName;
    string status;

public:
    Application(int jId, string cName)
        : appId(++idCounter), jobId(jId),
        candidateName(cName), status("Pending") {
    }

    void setStatus(string s) { status = s; }

    void display() const {
        cout << endl << "Application ID: " << appId
            << endl << "Candidate: " << candidateName
            << endl << "Status: " << status << endl;
    }
};

int Application::idCounter = 0;

class Person {
protected:
    string name;
    int age;

public:
    Person(string n, int a) : name(n), age(a) {}

    virtual void displayInfo() const = 0;
};

class Recruiter : public Person {
private:
    string company;
    vector<Job> postedJobs;

public:
    Recruiter(string n, int a, string comp)
        : Person(n, a), company(comp) {
    }

    void postJob(string title, string desc, string loc, double salary) {
        postedJobs.push_back(Job(title, desc, loc, salary));
    }

    void displayInfo() const override {
        cout << endl << "Recruiter: " << name
            << endl << "Company: " << company << endl;
    }

    void viewJobs() const {
        for (const auto& job : postedJobs)
            job.display();
    }
};

class Candidate : public Person {
private:
    string skills;

public:
    Candidate(string n, int a, string sk)
        : Person(n, a), skills(sk) {
    }

    void displayInfo() const override {
        cout << endl << "Candidate: " << name
            << endl << "Skills: " << skills << endl;
    }
};

int main() {
    Recruiter r("Ali", 35, "TechCorp");
    r.postJob("Flutter Developer",
        "Mobile App Development",
        "Islamabad",
        90000);

    Candidate c("Basit", 22, "C++, Flutter");

    r.displayInfo();
    r.viewJobs();

    c.displayInfo();

    return 0;
}

