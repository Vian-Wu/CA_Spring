package sa47.team11.caps.service;

import java.util.ArrayList;

import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.User;

public interface StudentService {
	
	User updateStudent(User u);

	User findUser(Integer UserId);

	ArrayList<User> findUserByCriteria(User student);
	
	void editStudent(Integer uid,String passTochange);///*String password, Integer userid*/
}

