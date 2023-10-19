public with sharing class StudentController {
    public string student{get;set;}
    
    public StudentController(){
        student='abc';
    }
    public void fetchStudent(){
        student='pqr';
    }
}