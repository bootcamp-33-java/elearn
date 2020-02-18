/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author TUF FX504
 */
@Entity
@Table(name = "ANSWER_QUESTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AnswerQuestion.findAll", query = "SELECT a FROM AnswerQuestion a")
    , @NamedQuery(name = "AnswerQuestion.findById", query = "SELECT a FROM AnswerQuestion a WHERE a.id = :id")
    , @NamedQuery(name = "AnswerQuestion.findByAnswer", query = "SELECT a FROM AnswerQuestion a WHERE a.answer = :answer")
    , @NamedQuery(name = "AnswerQuestion.findByIsTrue", query = "SELECT a FROM AnswerQuestion a WHERE a.isTrue = :isTrue")})
public class AnswerQuestion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "ANSWER")
    private String answer;
    @Basic(optional = false)
    @Column(name = "IS_TRUE")
    private short isTrue;
    @JoinColumn(name = "EMP_BUNDLE_ANSWER", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private EmpBundleAnswer empBundleAnswer;
    @JoinColumn(name = "QUESTION", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Question question;

    public AnswerQuestion() {
    }

    public AnswerQuestion(Integer id) {
        this.id = id;
    }

    public AnswerQuestion(Integer id, String answer, short isTrue) {
        this.id = id;
        this.answer = answer;
        this.isTrue = isTrue;
    }

    public AnswerQuestion(Integer id, String answer, short isTrue, EmpBundleAnswer empBundleAnswer, Question question) {
        this.id = id;
        this.answer = answer;
        this.isTrue = isTrue;
        this.empBundleAnswer = empBundleAnswer;
        this.question = question;
    }
    
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public short getIsTrue() {
        return isTrue;
    }

    public void setIsTrue(short isTrue) {
        this.isTrue = isTrue;
    }

    public EmpBundleAnswer getEmpBundleAnswer() {
        return empBundleAnswer;
    }

    public void setEmpBundleAnswer(EmpBundleAnswer empBundleAnswer) {
        this.empBundleAnswer = empBundleAnswer;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
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
        if (!(object instanceof AnswerQuestion)) {
            return false;
        }
        AnswerQuestion other = (AnswerQuestion) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.AnswerQuestion[ id=" + id + " ]";
    }
    
}
