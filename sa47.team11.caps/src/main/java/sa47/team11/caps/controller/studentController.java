package sa47.team11.caps.controller;


import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sa47.team11.caps.exception.UserNotFound;
import sa47.team11.caps.model.Course;
import sa47.team11.caps.model.User;
import sa47.team11.caps.service.StudentService;
import sa47.team11.caps.validator.StudentValidator;



@Controller
@RequestMapping(value = "/studentprofile")
public class studentController {
	
	@Autowired
	StudentService sService;
	@Autowired
	private StudentValidator sValidator;
	
/*	@InitBinder("studentprofile")
	private void initDepartmentBinder(WebDataBinder binder) {
		binder.addValidators(sValidator);
	}
	*/
/*	@RequestMapping(value="/list/{userId}", method = RequestMethod.GET)
	public ModelAndView viewStudentById(@PathVariable int userId, Model model) {
		ModelAndView mav = new ModelAndView("StudentCRUD");
		ArrayList<User> students = sService.findUser(userId);
		model.addAttribute("students",students);
		return mav;
	}*/	
	
	@RequestMapping(value = "/list/{userId}", method = RequestMethod.GET)
	public ModelAndView list(@PathVariable int userId) {

		User students =sService.findUser(userId);
		ModelAndView mav = new ModelAndView("StudentCRUD");
		mav.addObject("student", students);
		return mav;
	}
	
	@RequestMapping(value = "/edit/{userId}", method = RequestMethod.GET)
	public ModelAndView editStudentPage(@PathVariable int userId) {
		ModelAndView mav = new ModelAndView("StudentProfileEdit");
		User student = new User();
		student = sService.findUser(userId);
		mav.addObject("student", student);
		return mav;
	}

	@RequestMapping(value = "/edit/{userId}", method = RequestMethod.POST)
	public ModelAndView editCoursePage(@ModelAttribute("user") @Valid User user, BindingResult result, @PathVariable int userId,
			final RedirectAttributes redirectAttributes,@RequestParam("newpassword") String newpassword)  {//throws RoleNotFound 
		ModelAndView mav = new ModelAndView("redirect:/studentprofile/list/{userId}");

			String message = "Profile was successfully updated.";
			sService.editStudent(userId,newpassword);
	
		return mav;
	}
	
	
	
	
	
	
/*	@RequestMapping(value="/edit/{userId}", method=RequestMethod.POST)
    public String foo(@Valid @ModelAttribute User student , Errors errors){

        if(!errors.hasErrors()){
            System.out.println("The password validated.");
        }else{
            System.out.println("the password did not validate");
        }

        return "somewhere";
    }*/
}
/*	public ModelAndView editStudent(@ModelAttribute @Valid User student, @PathVariable int userId,
			BindingResult result, final RedirectAttributes redirectAttributes) throws UserNotFound{System.out.println("Please email to the administration department.");
		if (result.hasErrors())
			return new ModelAndView("StudentProfileEdit");
		sService.editStudent(student.getPassword(), student.getUserid());

		ModelAndView mav = new ModelAndView("redirect:/studentprofile/list/{userId}");
		String message = "Student" + student.getUserid() + " was successfully updated.";
		redirectAttributes.addFlashAttribute("message", message);
			return mav;
	}
}*/




