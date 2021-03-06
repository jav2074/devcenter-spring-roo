// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.domain;

import com.springsource.petclinic.domain.Vet;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Vet_Roo_Jpa_ActiveRecord {
    
    @Transactional
    public Vet Vet.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Vet merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static long Vet.countVets() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Vet o", Long.class).getSingleResult();
    }
    
    public static List<Vet> Vet.findAllVets() {
        return entityManager().createQuery("SELECT o FROM Vet o", Vet.class).getResultList();
    }
    
    public static Vet Vet.findVet(java.lang.Long id) {
        if (id == null) return null;
        return entityManager().find(Vet.class, id);
    }
    
    public static List<Vet> Vet.findVetEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Vet o", Vet.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
