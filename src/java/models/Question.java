/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author TUF FX504
 */
@Entity
@Table(name = "QUESTION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Question.findAll", query = "SELECT q FROM Question q")
    , @NamedQuery(name = "Question.findById", query = "SELECT q FROM Question q WHERE q.id = :id")
    , @NamedQuery(name = "Question.findByQuestion", query = "SELECT q FROM Question q WHERE q.question = :question")
    , @NamedQuery(name = "Question.findByOption1", query = "SELECT q FROM Question q WHERE q.option1 = :option1")
    , @NamedQuery(name = "Question.findByOption2", query = "SELECT q FROM Question q WHERE q.option2 = :option2")
    , @NamedQuery(name = "Question.findByOption3", query = "SELECT q FROM Question q WHERE q.option3 = :option3")
    , @NamedQuery(name = "Question.findByOption4", query = "SELECT q FROM Question q WHERE q.option4 = :option4")
    , @NamedQuery(name = "Question.findByKey", query = "SELECT q FROM Question q WHERE q.key = :key")})
public class Question implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "QUESTION")
    private String question;
    @Column(name = "OPTION_1")
    private String option1;
    @Column(name = "OPTION_2")
    private String option2;
    @Column(name = "OPTION_3")
    private String option3;
    @Column(name = "OPTION_4")
    private String option4;
    @Basic(optional = false)
    @Column(name = "KEY")
    private String key;
    @JoinColumn(name = "THEORY", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Theory theory;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "question", fetch = FetchType.LAZY)
    private List<AnswerQuestion> answerQuestionList;

    public Question() {
    }

    public Question(Integer id) {
        this.id = id;
    }

    public Question(Integer id, String question, String key) {
        this.id = id;
        this.question = question;
        this.key = key;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getOption1() {
        return option1;
    }

    public void setOption1(String option1) {
        this.option1 = option1;
    }

    public String getOption2() {
        return option2;
    }

    public void setOption2(String option2) {
        this.option2 = option2;
    }

    public String getOption3() {
        return option3;
    }

    public void setOption3(String option3) {
        this.option3 = option3;
    }

    public String getOption4() {
        return option4;
    }

    public void setOption4(String option4) {
        this.option4 = option4;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Theory getTheory() {
        return theory;
    }

    public void setTheory(Theory theory) {
        this.theory = theory;
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
        if (!(object instanceof Question)) {
            return false;
        }
        Question other = (Question) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Question[ id=" + id + " ]";
    }
    
}
