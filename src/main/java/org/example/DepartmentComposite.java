package org.example;

import PackageDemo.StudentCom;

public class DepartmentComposite {
    public  int deptId;
    public String deptName;
    public String deptLocation;
    StudentCom[] studentComs;
    public void getDetails(){
        System.out.println("Dept id "+deptId);
        System.out.println("Dept name "+ deptName);
        System.out.println(" Dept location "+deptLocation);
        System.out.println("Student details");
        for(int i=0;i<studentComs.length;i++){
            System.out.println("Student ID "+ studentComs[i].sID);
            System.out.println("Student name "+studentComs[i].sName);
            System.out.println("Student passout "+studentComs[i].passout);
        }
    }
}
