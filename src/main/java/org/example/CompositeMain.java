package org.example;

import PackageDemo.StudentCom;

public class CompositeMain {
    public static void main(String[] args) {
        DepartmentComposite departmentComposite =new DepartmentComposite();
        DepartmentComposite departmentComposite2 =new DepartmentComposite();

        StudentCom[] students=new StudentCom[2];
        StudentCom student1=new StudentCom();
        student1.sID=101;
        student1.sName="John";
        student1.passout=true;
        students[0]=student1;

        departmentComposite.deptId=1;
        departmentComposite.deptName="CSE";
        departmentComposite.deptLocation= "Hyderabad";
        departmentComposite.studentComs= students;
        StudentCom student2=new StudentCom();
        student2.sID=102;
        student2.sName="James";
        student2.passout=false;
        students[1]=student2;
        departmentComposite2.deptId=1;
        departmentComposite2.deptName="CSE";
        departmentComposite2.deptLocation= "Hyderabad";
        departmentComposite2.studentComs=students;
        departmentComposite.getDetails();
        departmentComposite2.getDetails();


    }
}
