package sa47.team11.caps.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	
    
	@Query("SELECT u FROM User u WHERE u.email=:un AND u.password=:pwd")
	User findUserByNamePwd(@Param("un") String uname, @Param("pwd") String pwd);

	
	@Query ("SELECT u FROM User u WHERE u.userid=:uid")
	User findUserById (@Param("uid") Integer uid);

	@Modifying
	@Query(value="update user set PASSWORD = :password where userid = :userid", nativeQuery=true)
	void editStudent(@Param("userid") Integer userid,@Param("password") String password);
}