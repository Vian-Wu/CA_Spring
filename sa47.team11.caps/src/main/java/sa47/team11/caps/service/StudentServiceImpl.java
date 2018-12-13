package sa47.team11.caps.service;

import javax.annotation.Resource;
import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sa47.team11.caps.model.User;
import sa47.team11.caps.repository.UserRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Resource
	UserRepository urepo;
	
	@Override
	@Transactional
	public User updateStudent(User u) {
		// TODO Auto-generated method stub
		return urepo.saveAndFlush(u);
	}

	@Override
	@Transactional
	public User findUser(Integer UserId) {
		// TODO Auto-generated method stub
		System.out.println("UserId"+UserId);
		
		User student = urepo.findById(UserId).get();
		System.out.println(student.toString());
		return student;
	}

	@Override
	@Transactional
	public ArrayList<User> findUserByCriteria(User student) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void editStudent(Integer uid,String passTochange) { ///*String password, Integer userid*/
		// TODO Auto-generated method stub
		
		
		urepo.editStudent(uid,passTochange);
		//return res;
		/*urepo.editStudent(password, userid);*/
	}

}
