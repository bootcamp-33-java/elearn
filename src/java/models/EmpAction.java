/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author TUF FX504
 */
@Entity
@Table(name = "EMP_ACTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EmpAction.findAll", query = "SELECT e FROM EmpAction e")
    , @NamedQuery(name = "EmpAction.findById", query = "SELECT e FROM EmpAction e WHERE e.id = :id")
    , @NamedQuery(name = "EmpAction.findByAction", query = "SELECT e FROM EmpAction e WHERE e.action = :action")
    , @NamedQuery(name = "EmpAction.findByActionDate", query = "SELECT e FROM EmpAction e WHERE e.actionDate = :actionDate")
    , @NamedQuery(name = "EmpAction.findByActionComment", query = "SELECT e FROM EmpAction e WHERE e.actionComment = :actionComment")
    , @NamedQuery(name = "EmpAction.findByRate", query = "SELECT e FROM EmpAction e WHERE e.rate = :rate")})
public class EmpAction implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "ACTION")
    private String action;
    @Basic(optional = false)
    @Column(name = "ACTION_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date actionDate;
    @Column(name = "ACTION_COMMENT")
    private String actionComment;
    @Column(name = "RATE")
    private Integer rate;
    @JoinColumn(name = "EMPLOYEE", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Employee employee;
    @JoinColumn(name = "FORUM", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Forum forum;

    public EmpAction() {
    }

    public EmpAction(Integer id) {
        this.id = id;
    }

    public EmpAction(Integer id, String action, Date actionDate) {
        this.id = id;
        this.action = action;
        this.actionDate = actionDate;
    }

    public EmpAction(Integer id, String action, Date actionDate, String actionComment, Integer rate, Employee employee, Forum forum) {
        this.id = id;
        this.action = action;
        this.actionDate = actionDate;
        this.actionComment = actionComment;
        this.rate = rate;
        this.employee = employee;
        this.forum = forum;
    }

    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public Date getActionDate() {
        return actionDate;
    }

    public void setActionDate(Date actionDate) {
        this.actionDate = actionDate;
    }

    public String getActionComment() {
        return actionComment;
    }

    public void setActionComment(String actionComment) {
        this.actionComment = actionComment;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Forum getForum() {
        return forum;
    }

    public void setForum(Forum forum) {
        this.forum = forum;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EmpAction)) {
            return false;
        }
        EmpAction other = (EmpAction) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.EmpAction[ id=" + id + " ]";
    }
    
}
