/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author TUF FX504
 */
@Entity
@Table(name = "EMP_BUNDLE_ANSWER")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EmpBundleAnswer.findAll", query = "SELECT e FROM EmpBundleAnswer e")
    , @NamedQuery(name = "EmpBundleAnswer.findById", query = "SELECT e FROM EmpBundleAnswer e WHERE e.id = :id")
    , @NamedQuery(name = "EmpBundleAnswer.findByScore", query = "SELECT e FROM EmpBundleAnswer e WHERE e.score = :score")
    , @NamedQuery(name = "EmpBundleAnswer.findByAnswerDate", query = "SELECT e FROM EmpBundleAnswer e WHERE e.answerDate = :answerDate")})
public class EmpBundleAnswer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "SCORE")
    private int score;
    @Basic(optional = false)
    @Column(name = "ANSWER_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date answerDate;
    @JoinColumn(name = "EMPLOYEE", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Employee employee;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empBundleAnswer", fetch = FetchType.LAZY)
    private List<AnswerQuestion> answerQuestionList;

    public EmpBundleAnswer() {
    }

    public EmpBundleAnswer(Integer id) {
        this.id = id;
    }

    public EmpBundleAnswer(Integer id, int score, Date answerDate) {
        this.id = id;
        this.score = score;
        this.answerDate = answerDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Date getAnswerDate() {
        return answerDate;
    }

    public void setAnswerDate(Date answerDate) {
        this.answerDate = answerDate;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    @XmlTransient
    public List<AnswerQuestion> getAnswerQuestionList() {
        return answerQuestionList;
    }

    public void setAnswerQuestionList(List<AnswerQuestion> answerQuestionList) {
        this.answerQuestionList = answerQuestionList;
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
        if (!(object instanceof EmpBundleAnswer)) {
            return false;
        }
        EmpBundleAnswer other = (EmpBundleAnswer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.EmpBundleAnswer[ id=" + id + " ]";
    }
    
}
