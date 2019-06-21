package controllers;

import java.io.File;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hibernate.Comments;
import hibernate.Ques;
import hibernate.User;
import util.HibernateUtil;

@Controller
public class MainController {
	@Autowired
	HibernateManager HM;
	public Boolean admin=false;
	@RequestMapping("register")
	public String boo(Model model,@RequestParam("name")String name ,@RequestParam("surname")String surname,
			@RequestParam("username")String username ,@RequestParam("email")String email,
			@RequestParam("password") String password)
	{
		
		User ME=new User(name,surname,username,email,password);//this is the first problem 
	    HM.save(ME);
	    
		return "logined.jsp";
	}

	@RequestMapping("log")
	public String boo1(Model model,@RequestParam("username")String username ,@RequestParam("password") String password)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<User> user = session.createQuery(String.format("from User"), User.class).list();
	    for (User m:user) {
		    if (password.equals(m.getPassword()) && username.equals(m.getUsername())) {	
		    	admin=false;
		    	return "logined.jsp";	
		    }
		    
		}
	    if (password.equals("admin") && username.equals("admin")){
	    	model.addAttribute("admin","admin");
	    	model.addAttribute("msg","welcome");
	    	admin=true;
	    	return "logined.jsp";
	    }
	    
	  
	    admin=false;
	    model.addAttribute("msg","your username or password are wrong");
	    return "login.jsp";
	
	}
	@RequestMapping("logged")
	public String boo2(Model model)
	{	
		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Comments> comment = session.createQuery(String.format("from Comments"), Comments.class).list();
		model.addAttribute("comment",comment);
		model.addAttribute("loggedin","loggedin");
		if(admin==true) {System.out.println("yesss");model.addAttribute("admin","admin");}
		return "single-blog.jsp";

	}
	
	/*@RequestMapping("reply")
	public String boo12(Model model,@RequestParam("id") int id)
	{	
		System.out.println(id);
		model.addAttribute("loggedin","loggedin");
		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Ques> Ques = session.createQuery(String.format("from Ques"), Ques.class).list();
		 if(admin==true) {System.out.println("yesssw");model.addAttribute("admin","admin");}
			model.addAttribute("Ques",Ques);
			 Month h=LocalDateTime.now().getMonth();
			 int m=LocalDateTime.now().getYear();
			 int f=LocalDateTime.now().getDayOfMonth();
			 model.addAttribute("time",h+" "+f+","+m);
		return "questions.jsp";


	}*/
	
	@RequestMapping(value = "single-blog")//for offline pages to see the db comments
	public String boo4(Model model)
	{	

		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Comments> comment = session.createQuery(String.format("from Comments"), Comments.class).list();
		model.addAttribute("comment",comment);
		return "single-blog.jsp";

	}
	@RequestMapping(value = "question")
	public String boo5(Model model,@RequestParam("name")String user , @RequestParam("title")String title ,@RequestParam("comment")String question
			,@RequestParam("open") File pic)
	{	
		Ques ME=new Ques(title,question,user,pic.getName());
	    HM.saveQues(ME);
		model.addAttribute("loggedin","loggedin");
		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Ques> Ques = session.createQuery(String.format("from Ques"), Ques.class).list();
			model.addAttribute("Ques",Ques);
			 Month h=LocalDateTime.now().getMonth();
			 int m=LocalDateTime.now().getYear();
			 int f=LocalDateTime.now().getDayOfMonth();
			 model.addAttribute("time",h+" "+f+","+m);
				if(admin==true) {model.addAttribute("admin","admin");}
			 
		return "questions.jsp";

	}
	@RequestMapping(value = "ques")
	public String boo6(Model model)
	{	
		model.addAttribute("loggedin","loggedin");
		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Ques> Ques = session.createQuery(String.format("from Ques"), Ques.class).list();
		 if(admin==true)
		 {model.addAttribute("admin","admin");}
		 
			model.addAttribute("Ques",Ques);
			 Month h=LocalDateTime.now().getMonth();
			 int m=LocalDateTime.now().getYear();
			 int f=LocalDateTime.now().getDayOfMonth();
			 model.addAttribute("time",h+" "+f+","+m);
			 
		return "questions.jsp";

	}
	
	@RequestMapping("delete")
	public String boo4(Model model,@RequestParam("id") int id)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Comments Pr=new Comments();
        Pr.setId(id);
        Pr=(Comments) session.get(Comments.class,id);
        session.delete(Pr);
        session.getTransaction().commit();
	    List<Comments> prod = session.createQuery(String.format("from Comments")).list();
	    session.close();
	    model.addAttribute("loggedin","loggedin");
	    model.addAttribute("comment",prod);
	    if(admin==true) {model.addAttribute("admin","admin");}
		return "single-blog.jsp";
	}
	@RequestMapping("delete1")
	public String boo7(Model model,@RequestParam("id") int id)
	{
		System.out.println(id);
		Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Ques Pr=new Ques();
        Pr.setId(id);
        Pr=(Ques) session.get(Ques.class,id);
        session.delete(Pr);
        session.getTransaction().commit();
	    List<Ques> prod = session.createQuery(String.format("from Ques")).list();
	    session.close();
	    model.addAttribute("loggedin","loggedin");
	    model.addAttribute("Ques",prod);
		if(admin==true) {model.addAttribute("admin","admin");}
		 Month h=LocalDateTime.now().getMonth();
		 int m=LocalDateTime.now().getYear();
		 int f=LocalDateTime.now().getDayOfMonth();
		 model.addAttribute("time",h+" "+f+","+m);
		return "questions.jsp";
	}
	
	@RequestMapping("comment")
	public String boo3(Model model ,@RequestParam("name")String name,@RequestParam("email")String email ,@RequestParam("message")String msg)
	{	
		Comments ME=new Comments(name,email,msg);
	    HM.saveComment(ME);
		Session session = HibernateUtil.getSessionFactory().openSession();
		 List<Comments> comment = session.createQuery(String.format("from Comments"), Comments.class).list();
		 Month h=LocalDateTime.now().getMonth();
		 int m=LocalDateTime.now().getYear();
		 int f=LocalDateTime.now().getDayOfMonth();
		 if(admin==true) {model.addAttribute("admin","admin");}
		 model.addAttribute("time",h+" "+f+","+m);
		model.addAttribute("comment",comment);
		return "logged";

	}
	@RequestMapping("tes")
	public String boo21(Model model )
	{	
		model.addAttribute("msg","your username or password are wrong");
	    return "login.jsp";
	}
	
	
}
