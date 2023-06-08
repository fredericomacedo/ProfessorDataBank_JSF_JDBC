/******************************************************
 * File:  ProfessorDaoImpl.java Course materials (23W) CST8277
 *
 * @author Teddy Yap
 * @author Shariar (Shawn) Emami
 * @author (original) Mike Norman
 */
package databank.dao;

import static java.sql.Statement.RETURN_GENERATED_KEYS;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.faces.context.ExternalContext;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import databank.model.ProfessorPojo;

@SuppressWarnings("unused")
/**
 * Description:  Implements the C-R-U-D API for the database
 */
//TODO don't forget this object is a managed bean with a application scope
public class ProfessorDaoImpl implements ProfessorDao, Serializable {
	/** Explicitly set serialVersionUID */
	private static final long serialVersionUID = 1L;

	private static final String DATABANK_DS_JNDI = "java:app/jdbc/databank";
	private static final String READ_ALL = "SELECT * FROM professor";
	private static final String READ_PROFESSOR_BY_ID = "SELECT * FROM professor where id = ?";
	private static final String INSERT_PROFESSOR = "INSERT INTO professor(last_name, first_name, email, phone, degree, major, created) values (?, ?, ?, ?, ?, ?, ?)";
	private static final String UPDATE_PROFESSOR_ALL_FIELDS = "UPDATE professor set last_name = ?, first_name = ?, email = ?, phone = ?, degree = ?, major = ? where id = ?";
	private static final String DELETE_PROFESSOR_BY_ID = "DELETE FROM professor where id = ?";

	@Inject
	protected ExternalContext externalContext;

	private void logMsg(String msg) {
		((ServletContext) externalContext.getContext()).log(msg);
	}

	@Resource(lookup = DATABANK_DS_JNDI)
	protected DataSource databankDS;

	protected Connection conn;
	protected PreparedStatement readAllPstmt;
	protected PreparedStatement readByIdPstmt;
	protected PreparedStatement createPstmt;
	protected PreparedStatement updatePstmt;
	protected PreparedStatement deleteByIdPstmt;

	@PostConstruct
	protected void buildConnectionAndStatements() {
		try {
			logMsg("building connection and stmts");
			conn = databankDS.getConnection();
			readAllPstmt = conn.prepareStatement(READ_ALL);
			createPstmt = conn.prepareStatement(INSERT_PROFESSOR, RETURN_GENERATED_KEYS);
			//TODO Initialize other PreparedStatements
			readByIdPstmt = conn.prepareStatement(READ_PROFESSOR_BY_ID);
			updatePstmt = conn.prepareStatement(UPDATE_PROFESSOR_ALL_FIELDS);
			deleteByIdPstmt = conn.prepareStatement(DELETE_PROFESSOR_BY_ID);
		} catch (Exception e) {
			logMsg("something went wrong getting connection from database:  " + e.getLocalizedMessage());
		}
	}

	@PreDestroy
	protected void closeConnectionAndStatements() {
		try {
			logMsg("closing stmts and connection");
			readAllPstmt.close();
			createPstmt.close();
			//TODO Close other PreparedStatements
			readByIdPstmt.close();
			updatePstmt.close();
			deleteByIdPstmt.close();
			conn.close();
		} catch (Exception e) {
			logMsg("something went wrong closing stmts or connection:  " + e.getLocalizedMessage());
		}
	}

	@Override
	public List<ProfessorPojo> readAllProfessors() {
		logMsg("reading all professors");
		List<ProfessorPojo> professors = new ArrayList<>();
		try (ResultSet rs = readAllPstmt.executeQuery();) {

			while (rs.next()) {
				ProfessorPojo newProfessor = new ProfessorPojo();
				newProfessor.setId(rs.getInt("id"));
				newProfessor.setLastName(rs.getString("last_name"));
				newProfessor.setFirstName(rs.getString("first_name"));
				//TODO Complete the professor initialization
				newProfessor.setEmail(rs.getString("email"));
				newProfessor.setPhoneNumber(rs.getString("phone"));
				newProfessor.setDegree(rs.getString("degree"));
				newProfessor.setMajor(rs.getString("major"));
				newProfessor.setCreated(rs.getTimestamp("created").toLocalDateTime());
				professors.add(newProfessor);
			}
			
		} catch (SQLException e) {
			logMsg("something went wrong accessing database:  " + e.getLocalizedMessage());
		}
		
		return professors;

	}

	@Override
	public ProfessorPojo createProfessor(ProfessorPojo professor) {
		logMsg("creating a professor");
		//TODO Complete the insertion of a new professor
		//TODO Be sure to use try-and-catch statement
		try {
			createPstmt.setString(1, professor.getLastName());
			createPstmt.setString(2, professor.getFirstName());
			createPstmt.setString(3, professor.getEmail());
			createPstmt.setString(4, professor.getPhoneNumber());
			createPstmt.setString(5, professor.getDegree());
			createPstmt.setString(6, professor.getMajor());
			createPstmt.setTimestamp(7, Timestamp.valueOf(professor.getCreated()));
			createPstmt.execute();
		} catch (SQLException e) {
			logMsg("something went wrong accessing database:  " + e.getLocalizedMessage());
		}
		return null;
	}

	@Override
	public ProfessorPojo readProfessorById(int professorId) {
		logMsg("read a specific professor");
		//TODO Complete the retrieval of a specific professor by its id
		//TODO Be sure to use try-and-catch statement
		ProfessorPojo prof = null;
		try {
			readByIdPstmt.setLong(1, professorId);
			ResultSet rs = readByIdPstmt.executeQuery();
			if (rs.next()) {
				prof = new ProfessorPojo();
				prof.setId(rs.getInt("id"));
				prof.setLastName(rs.getString("last_name"));
				prof.setFirstName(rs.getString("first_name"));
				prof.setEmail(rs.getString("email"));
				prof.setPhoneNumber(rs.getString("phone"));
				prof.setDegree(rs.getString("degree"));
				prof.setMajor(rs.getString("major"));
				Timestamp createdTimestamp = rs.getTimestamp("datetime");
	            LocalDateTime createdDateTime = createdTimestamp.toLocalDateTime();
	            prof.setCreated(createdDateTime);
			}
			
		} catch (SQLException e) {
			logMsg("something went wrong accessing database:  " + e.getLocalizedMessage());
		}
		return prof;
	}

	@Override
	public void updateProfessor(ProfessorPojo professor) {
		logMsg("updating a specific professor");
		//TODO Complete the update of a specific professor
		//TODO Be sure to use try-and-catch statement
		//last_name = ?, first_name = ?, email = ?, phone = ?, degree = ?, major = ? where id = ?";
		try {
			updatePstmt.setString(1, professor.getLastName());
			updatePstmt.setString(2, professor.getFirstName());
			updatePstmt.setString(3, professor.getEmail());
			updatePstmt.setString(4, professor.getPhoneNumber());
			updatePstmt.setString(5, professor.getDegree());
			updatePstmt.setString(6, professor.getMajor());
			updatePstmt.setLong(7, professor.getId());
			updatePstmt.executeUpdate();
			
		} catch (SQLException e) {
			logMsg("something went wrong accessing database:  " + e.getLocalizedMessage());
		}
	}

	@Override
	public void deleteProfessorById(int professorId) {
		logMsg("deleting a specific professor");
		//TODO Complete the deletion of a specific professor
		//TODO Be sure to use try-and-catch statement
		try {
			deleteByIdPstmt.setLong(1, professorId);
			deleteByIdPstmt.execute();
		} catch (SQLException e) {
			logMsg("something went wrong accessing database:  " + e.getLocalizedMessage());
		}
		
		
	}

}