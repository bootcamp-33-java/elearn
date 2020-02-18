/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import daos.AccountDAO;
import daos.EmpActionDAO;
import daos.EmpRoleDAO;
import daos.EmployeeDAO;
import daos.GeneralDAO;
import idaos.IGeneralDAO;
import java.math.BigDecimal;
import java.sql.Date;
import models.Account;
import models.EmpAction;
import models.Employee;
import models.EmployeeRole;
import models.Question;
import models.Role;
import models.StudyClass;
import models.Theory;
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author aqira
 */
public class ManualTestGeneral {

    private static SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // ---------------------------------------- Deklarasi DAO ----------------------------------------//
//        GeneralDAO<Region> rdao = new GeneralDAO<>(sessionFactory, Region.class);
//        GeneralDAO<Country> cdao = new GeneralDAO<>(sessionFactory, Country.class);
//        GeneralDAO<Job> jdao = new GeneralDAO<>(sessionFactory, Job.class);
//        IGeneralDAO<Department> igdao = new GeneralDAO<>(sessionFactory, Department.class);
        GeneralDAO<Role> rodao = new GeneralDAO<>(sessionFactory, Role.class);
        EmployeeDAO<Employee> edao = new EmployeeDAO<>(sessionFactory, Employee.class);
        GeneralDAO<Account> adao = new GeneralDAO<>(sessionFactory, Account.class);
        GeneralDAO<Theory> tedao = new GeneralDAO<>(sessionFactory, Theory.class);
        GeneralDAO<Question> qudao = new GeneralDAO<>(sessionFactory, Question.class);
        EmpRoleDAO<EmployeeRole> erdao = new EmpRoleDAO<>(sessionFactory, EmployeeRole.class);
        EmpActionDAO<EmpAction> eadao = new EmpActionDAO<>(sessionFactory, EmpAction.class);

//        EmployeeRole empRole = new EmployeeRole("1", employee, role);
//        Theory te = new Theory(1, "ORM", "ORM DEF", "FILE", new Employee("123"), new StudyClass(1));
//        tedao.saveOrDelete(te, false);
//        Account account = new Account("666","0",new Short("0"),"0",new Employee("666"));
//        adao.saveOrDelete(account, true);
//        Question q = new Question(1, "2", "3", "4", "5", "6", "7", );
//        qudao.saveOrDelete(q, false);
//        AccountDAO<Account> accountDao = new AccountDAO<>(sessionFactory, Account.class);
        // ---------------------------------------- Testing  ----------------------------------------//       
//        Get By ID
        Employee e = edao.getById("14422");
        System.out.println(e.getName());
//        System.out.println(account.getPassword());
////        System.out.println(department.getManagerial() == null ? "0" : department.getManagerial().getId());
////        System.out.println(department.getLocation().getId());
//        System.out.println("-----------------------------------");
        //Get Daata
//        for (EmployeeRole a : erdao.getData(null)) {
//            System.out.println(a.getId());
//            System.out.println(a.getRole().getName());
//            System.out.println(a.getPassword());
//            System.out.println(a.getPassword());
//            System.out.println(a.getToken());
//            System.out.println("");

//            System.out.println(e.getLocation().getId() + "\n");
//        }
////        //SAVE OR DELETE
//
//        Employee employee = new Employee(0, "aaa", "aaa", "aa", "555", "12/12/12",
//                    new BigDecimal(salary), new BigDecimal(commissionPCT), new Department(new Short(department)), new Employee(Integer.parseInt(manager)), new Job(job));
//        Employee e = new Employee(107);
//        Account a = adao.getById(19);
//        System.out.println(a.getPassword());
//        a.setEmployee(e);
//        a = new Account(107, "wfwfwf", new Short("1"), "fwkjfwf",new Employee(107));
//        System.out.println(a.getEmployee().getId());
//        System.out.println(adao.saveOrDelete(employee,false));
            //DEPARTMENT END ------------------------------------------------------------------------
            //Spesial aja
            //Lain-lain
//        for (Region t : rdao.getData(null)) {
//            System.out.print(t.getId() + "  | ");
//            System.out.println(t.getName()+ " | ");
//        }
            //Save ato Update ato Delete
            //Region
//        Account account = new Account(new Employee(207),"aaaaaaa", new Short("0"), "adadadawdad");
//        System.out.println(adao.saveOrDelete(account, false));
//        System.out.println(rdao.saveOrDelete(new Region (new BigDecimal(11), "cobaa"), false));
//        System.out.println(rdao.saveOrDelete(new Region (new BigDecimal(11), "coba"), true));
            /*
        //Country
        System.out.println(cdao.saveOrDelete(new Country("ad", "asasasa", new Region(new BigDecimal(11))), false));
        System.out.println(cdao.saveOrDelete(new Country("ad", "asasasaaa", new Region(new BigDecimal(11))), false));
        System.out.println(cdao.saveOrDelete(new Country("ad", "asasasa", new Region(new BigDecimal(11))), true));
             */
        
    }
}
