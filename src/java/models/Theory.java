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
@Table(name = "THEORY")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Theory.findAll", query = "SELECT t FROM Theory t")
    , @NamedQuery(name = "Theory.findById", query = "SELECT t FROM Theory t WHERE t.id = :id")
    , @NamedQuery(name = "Theory.findByTheoryTitle", query = "SELECT t FROM Theory t WHERE t.theoryTitle = :theoryTitle")
    , @NamedQuery(name = "Theory.findByTheoryDefiniton", query = "SELECT t FROM Theory t WHERE t.theoryDefiniton = :theoryDefiniton")
    , @NamedQuery(name = "Theory.findByFileMatery", query = "SELECT t FROM Theory t WHERE t.fileMatery = :fileMatery")})
public class Theory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "THEORY_TITLE")
    private String theoryTitle;
    @Basic(optional = false)
    @Column(name = "THEORY_DEFINITON")
    private String theoryDefiniton;
    @Basic(optional = false)
    @Column(name = "FILE_MATERY")
    private String fileMatery;
    @JoinColumn(name = "CREATOR", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Employee creator;
    @JoinColumn(name = "STUDY_CLASS", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private StudyClass studyClass;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "theory", fetch = FetchType.LAZY)
    private List<Question> questionList;

    public Theory() {
    }

    public Theory(Integer id) {
        this.id = id;
    }

    public Theory(Integer id, String theoryTitle, String theoryDefiniton, String fileMatery) {
        this.id = id;
        this.theoryTitle = theoryTitle;
        this.theoryDefiniton = theoryDefiniton;
        this.fileMatery = fileMatery;
    }

    public Theory(Integer id, String theoryTitle, String theoryDefiniton, String fileMatery, Employee creator, StudyClass studyClass) {
        this.id = id;
        this.theoryTitle = theoryTitle;
        this.theoryDefiniton = theoryDefiniton;
        this.fileMatery = fileMatery;
        this.creator = creator;
        this.studyClass = studyClass;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTheoryTitle() {
        return theoryTitle;
    }

    public void setTheoryTitle(String theoryTitle) {
        this.theoryTitle = theoryTitle;
    }

    public String getTheoryDefiniton() {
        return theoryDefiniton;
    }

    public void setTheoryDefiniton(String theoryDefiniton) {
        this.theoryDefiniton = theoryDefiniton;
    }

    public String getFileMatery() {
        return fileMatery;
    }

    public void setFileMatery(String fileMatery) {
        this.fileMatery = fileMatery;
    }

    public Employee getCreator() {
        return creator;
    }

    public void setCreator(Employee creator) {
        this.creator = creator;
    }

    public StudyClass getStudyClass() {
        return studyClass;
    }

    public void setStudyClass(StudyClass studyClass) {
        this.studyClass = studyClass;
    }

    @XmlTransient
    public List<Question> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<Question> questionList) {
        this.questionList = questionList;
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
        if (!(object instanceof Theory)) {
            return false;
        }
        Theory other = (Theory) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Theory[ id=" + id + " ]";
    }
    
}
