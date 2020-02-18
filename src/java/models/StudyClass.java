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
@Table(name = "STUDY_CLASS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "StudyClass.findAll", query = "SELECT s FROM StudyClass s")
    , @NamedQuery(name = "StudyClass.findById", query = "SELECT s FROM StudyClass s WHERE s.id = :id")
    , @NamedQuery(name = "StudyClass.findByName", query = "SELECT s FROM StudyClass s WHERE s.name = :name")
    , @NamedQuery(name = "StudyClass.findByRoomName", query = "SELECT s FROM StudyClass s WHERE s.roomName = :roomName")})
public class StudyClass implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "NAME")
    private String name;
    @Basic(optional = false)
    @Column(name = "ROOM_NAME")
    private String roomName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "studyClass", fetch = FetchType.LAZY)
    private List<Theory> theoryList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "studyClass", fetch = FetchType.LAZY)
    private List<EmpJoin> empJoinList;

    public StudyClass() {
    }

    public StudyClass(Integer id) {
        this.id = id;
    }

    public StudyClass(Integer id, String name, String roomName) {
        this.id = id;
        this.name = name;
        this.roomName = roomName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    @XmlTransient
    public List<Theory> getTheoryList() {
        return theoryList;
    }

    public void setTheoryList(List<Theory> theoryList) {
        this.theoryList = theoryList;
    }

    @XmlTransient
    public List<EmpJoin> getEmpJoinList() {
        return empJoinList;
    }

    public void setEmpJoinList(List<EmpJoin> empJoinList) {
        this.empJoinList = empJoinList;
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
        if (!(object instanceof StudyClass)) {
            return false;
        }
        StudyClass other = (StudyClass) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.StudyClass[ id=" + id + " ]";
    }
    
}
