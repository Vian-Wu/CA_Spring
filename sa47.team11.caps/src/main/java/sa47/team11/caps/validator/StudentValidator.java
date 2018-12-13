package sa47.team11.caps.validator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;import sa47.team11.caps.model.*;

@Component
public class StudentValidator implements org.springframework.validation.Validator {
	public StudentValidator() {
  // TODO Auto-generated constructor stub
 } 

@Override
 public boolean supports(Class clazz) {
  // TODO Auto-generated method stub
  return User.class.isAssignableFrom(clazz);
 } 

@Override
 public void validate(Object target, Errors errors) {
  // TODO Auto-generated method stub
  User s = (User) target;
  ValidationUtils.rejectIfEmpty(errors, "name", "Name cant be empty");
     System.out.println(s.toString()); }}