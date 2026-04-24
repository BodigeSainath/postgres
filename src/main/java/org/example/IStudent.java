package org.example;

public class IStudent implements College, Teacher{
    @Override
    public void getDepartment() {
        System.out.println(" Department print");
    }

    @Override
    public void getYear() {
        System.out.println("Year print");
    }

    @Override
    public void getTeacher() {
        System.out.println("Teacher method ");
    }

    @Override
    public void teacherDept() {
        System.out.println("Teacher department");
    }
}
