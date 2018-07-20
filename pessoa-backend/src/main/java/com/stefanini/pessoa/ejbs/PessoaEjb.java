package com.stefanini.pessoa.ejbs;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.stefanini.pessoa.ejbs.interfaces.PessoaEjbLocal;

@Stateless
public class PessoaEjb implements PessoaEjbLocal {

	@PersistenceContext(unitName = "cadastroDS")
    protected EntityManager entityManager;
	
}