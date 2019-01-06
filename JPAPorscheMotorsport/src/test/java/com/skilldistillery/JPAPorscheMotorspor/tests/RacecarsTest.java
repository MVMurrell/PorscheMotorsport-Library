package com.skilldistillery.JPAPorscheMotorspor.tests;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.JPAPorscheMotorsport.entities.RaceInfo;
import com.skilldistillery.JPAPorscheMotorsport.entities.Racecars;

class RacecarsTest {
	private static EntityManagerFactory emf; 
	private EntityManager em;
	private Racecars rc;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PorscheRacecars");
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		rc = em.find(Racecars.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		
	}

	@Test
	void test() {
		assertEquals("64", rc.getModel());
		assertEquals(1.1, rc.getEngineSize(),.001);
	}
	
	@Test
	void test_raceInfo_mapped() {
		RaceInfo ri = rc.getRi();
		assertEquals(10, ri.getWins());
	}

}
