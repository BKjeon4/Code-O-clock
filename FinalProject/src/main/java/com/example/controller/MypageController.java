package com.example.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.CalendarVO;
import com.example.domain.EducationVO;
import com.example.domain.ReviewVO;
import com.example.domain.TeacherVO;
import com.example.domain.VchatFileVO;
import com.example.domain.VchatRecordVO;
import com.example.persistence.CalendarRepository;
import com.example.persistence.JjimRepository;
import com.example.persistence.ReviewRepository;
import com.example.persistence.VchatFileRepository;
import com.example.persistence.VchatRecordRepository;
import com.example.persistence.WishListRepository;
import com.example.service.EducationService;
import com.example.service.MyPageService;
import com.example.service.TeacherService;
import com.example.service.WishListService;


@Controller
@RequestMapping("/mypage")
public class MypageController {



	@Autowired
	private TeacherService teacherService;

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Autowired
	private EducationService educationService;

	@Autowired
	private WishListRepository wishRepo;

	@Autowired
	private WishListService wishService;
	
	@Autowired
	private JjimRepository jjimRepo;
	
	@Autowired
	private CalendarRepository calRepo;
	
	@Autowired
	private VchatRecordRepository vchatRecordRepo;
	
	@Autowired
	private VchatFileRepository vchatFileRepo;




	//????????? ????????? ?????? ?????????
	@GetMapping("/tutorInsert")
	public String tutorPageView() {

		return  "/mypage/tutorInsert";

	}

	//??????/?????? ????????? ?????? ?????????
	@GetMapping("/educationInsert")
	public String educationView() {

		return  "/mypage/educationInsert";

	}




	//??????????????? / ??????/?????? ?????? ?????????
	@PostMapping("/tutorInsert")
	public String insertTeacher(TeacherVO tvo) {
		System.out.println("tutorInsert ??????" + tvo); 

		teacherService.insertTeacher(tvo);


		return "redirect:/mypage/tutorInsert";   
	}


	
	

	//??????/?????? ?????????
	@PostMapping("/educationInsert")
	public String insertEducation(EducationVO evo) {
		System.out.println("insertEducation ??????" + evo); 

		
		educationService.insertEducation(evo);


		return "redirect:/mypage/educationInsert";   
	}






	/*
		  //?????????
		  @GetMapping("/myreview")
		  public String myreviewPageView() {

			  return  "/mypage/myreview";

		  }
	 */


	//??????????????? ??????/?????? ??????????????? ?????????!
	@GetMapping("/myreview")
	public String getEdReview(ReviewVO rvo, Model model,HttpSession session,
			@RequestParam(required = false, defaultValue = "") String memIdInt,
			@PageableDefault(size = 2, direction = Sort.Direction.DESC) Pageable paging) {


		//????????? ????????? ????????? ??????????????? 
		rvo.setMemIdInt((Integer) session.getAttribute("memIdInt"));
		String temp_m_idint = String.valueOf(rvo.getMemIdInt());
		System.out.println(temp_m_idint);
		Page<ReviewVO> mypageReviewList1 = reviewRepository.getMyReview1(paging, temp_m_idint);

		//???????????????
		int pageNumber=((Slice<ReviewVO>) mypageReviewList1).getPageable().getPageNumber();
		//???????????????
		int totalPages=((Page<ReviewVO>) mypageReviewList1).getTotalPages(); //??????????????? 10?????? 10???..
		int pageBlock = 5; //????????? ??? 1, 2, 3, 4, 5   
		//???????????? ??????
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //?????? ???????????? 7????????? 1*5+1=6
		//????????? ??????
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10?????? 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		System.out.println("reviewList : " + mypageReviewList1.getContent());

		//??? ????????? jsp ????????? ?????????
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("mypageReviewList1", mypageReviewList1.getContent()); 


		return "mypage/myreview";
	}


	
	//??????????????? ??????????????????
	@GetMapping("/myreview2")
	public String getEdReview2(ReviewVO rvo, Model model,HttpSession session,
			@RequestParam(required = false, defaultValue = "") String memIdInt,
			@PageableDefault(size = 2, direction = Sort.Direction.DESC) Pageable paging) {


		//????????? ????????? ????????? ??????????????? 
		rvo.setMemIdInt((Integer) session.getAttribute("memIdInt"));
		String temp_m_idint = String.valueOf(rvo.getMemIdInt());
		System.out.println(temp_m_idint);
		Page<ReviewVO> mypageReviewList2 = reviewRepository.getMyReview2(paging, temp_m_idint);

		//???????????????
		int pageNumber=((Slice<ReviewVO>) mypageReviewList2).getPageable().getPageNumber();
		//???????????????
		int totalPages=((Page<ReviewVO>) mypageReviewList2).getTotalPages(); //??????????????? 10?????? 10???..
		int pageBlock = 5; //????????? ??? 1, 2, 3, 4, 5   
		//???????????? ??????
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //?????? ???????????? 7????????? 1*5+1=6
		//????????? ??????
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10?????? 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		System.out.println("reviewList : " + mypageReviewList2.getContent());

		//??? ????????? jsp ????????? ?????????
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("mypageReviewList1", mypageReviewList2.getContent()); 


		return "mypage/myreview2";
	}
	
	
	
	// ????????? ?????????
	
	//??????????????? ???????????????
	@RequestMapping("/wishlist")
	public void wishList(Model m, Integer memIdInt) {
		List<Object[]> list = wishRepo.findByMemIdInt(memIdInt);
		System.out.println(list);
		m.addAttribute("wishList", list);
	}

	//??????????????? ?????????
	@RequestMapping("/jjimlist")
	public void jjimList(Model m, Integer memIdInt) {
		List<Object[]> list = jjimRepo.findByMemIdIntlec(memIdInt);
		System.out.println(list);
		m.addAttribute("jjimList", list);
	}

	//??????????????? ??????
	@RequestMapping("/deleteWish")
	public String deletewish(Integer memIdInt, Integer wId) {
		wishService.deleteWish(memIdInt, wId);
		return "redirect:/mypage/wishlist?memIdInt="+ memIdInt;
	}

	//??????????????? ??????
	@RequestMapping("/wishInsert")
	public String wishInsert(Integer memIdInt, Integer edId ) {
		wishService.insertWish(memIdInt, edId);
		return "redirect:/academy/course-details?edId="+ edId;
	}

	//???????????? ??????
	@RequestMapping("/jjimInsert")
	public String jjimInsert(Integer memIdInt, Integer vcId ) {
		wishService.insertJjim(memIdInt, vcId);
		return "redirect:/lecture/lecture-details?vcId="+ vcId;
	}

	//???????????? ??????
	@RequestMapping("/deleteJjim")
	public String jjimDelete(Integer memIdInt, Integer jjId ) {
		wishService.deleteJjim(memIdInt, jjId);
		return "redirect:/mypage/jjimlist?memIdInt="+ memIdInt;
	}

//--------------------------------------------------------------------------------------------------------------------------------------
	
	// ?????????: ?????????

	// mypage??? ?????? ????????? ?????? ????????? ????????? ??? ??????
	@RequestMapping(value = "/lessonreserve", method = RequestMethod.GET)
	//ModelAndView??? ???????????? ??????
	public ModelAndView getMemberCalendarList(HttpServletRequest request, HttpSession session) {
		
		Integer memIdInt = (Integer) session.getAttribute("memIdInt");
		
		String viewpage = "/mypage/lessonreserve";
		List<Map<String, Object>> calendarTemp = null;
		try {
			calendarTemp = calRepo.MemberCalendarSearch(memIdInt);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// ????????? ???????????? ??????
		List<HashMap<String, Object>> calendar = new ArrayList<HashMap<String, Object>>();
		
		// ????????? HashMap??? ???????????? ???????????? ?????? ????????????
		for(Map<String, Object> m : calendarTemp) {
			System.out.println("calid : " + m.get("calid"));
			
			HashMap<String, Object> HashTemp = new HashMap<String, Object> ();
			HashTemp.put("calid", m.get("calid"));
			HashTemp.put("caltitle", m.get("caltitle"));
			HashTemp.put("calstart", m.get("calstart"));
			HashTemp.put("calreserve", m.get("calreserve"));
			HashTemp.put("calend", m.get("calend"));
			HashTemp.put("memidint", m.get("memidint"));
			HashTemp.put("roomid", m.get("roomid"));
			HashTemp.put("tid", m.get("tid"));
			HashTemp.put("vctitle", m.get("vctitle"));
			HashTemp.put("tcpic", m.get("tcpic"));
			HashTemp.put("tcname", m.get("tcname"));
			
			//????????? ????????? ?????? ??????
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy??? MM??? dd??? a h:mm"); 
			String dateTemp = simpleDateFormat.format(m.get("calstart"));
			System.out.println("date format : " + dateTemp);
			// ????????? ????????? ????????? HashMap??? ??????
			HashTemp.put("calstartSTR", dateTemp);
			
			calendar.add(HashTemp);
		}
		
		request.setAttribute("calendarList", calendar);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(viewpage);
		return mv;
	}
	
	
	// ???????????? ?????????
	@GetMapping("/tutorBox")
	public String getTutorBox(Model model, HttpSession session,
			@PageableDefault(size = 7) Pageable paging) {

		//????????? ????????? ????????? ???????????????
		Integer tempTeacherId = (Integer) session.getAttribute("teacherId");
		System.out.println("teacherId : "+tempTeacherId);
		Page<Map<String, Object>> tutorBoxTemp = calRepo.getTutorBox(paging, tempTeacherId);
		
		List<VchatRecordVO> tutorBoxRecord = vchatRecordRepo.findByTeacherId(tempTeacherId);
		List<VchatFileVO> tutorBoxFile = vchatFileRepo.findByTeacherId(tempTeacherId);
		
		for (VchatRecordVO vo : tutorBoxRecord) {
			System.out.println("OrigRecName : " + vo.getOrigRecName());
			System.out.println("CalId : " + vo.getCalId());
		}
		
		for (VchatFileVO vo : tutorBoxFile) {
			System.out.println("OrigFileName : " + vo.getOrigFileName());
			System.out.println("CalId : " + vo.getCalId());
		}
		
		/*
		List<HashMap<String, Object>> hashTempList = new ArrayList<HashMap<String, Object>>();
		
		for(Map<String, Object> temp : tutorBoxTemp.getContent()) {
			
			HashMap<String, Object> hashTemp = new HashMap<String, Object>();
			
			System.out.println("cal_id : " + temp.get("cal_id"));
			System.out.println("cal_start : " + temp.get("cal_start"));
			System.out.println("tcname : " + temp.get("tcname"));
			System.out.println("vctitle : " + temp.get("vctitle"));
			
			hashTemp.put("cal_start", temp.get("cal_start"));
			hashTemp.put("tcname", temp.get("tcname"));
			hashTemp.put("vctitle", temp.get("vctitle"));
			
			Integer calId = (Integer)temp.get("cal_id");
			
			List<VchatRecordVO> recTemp = vchatRecordRepo.findByCalId(calId);
			for (VchatRecordVO vo : recTemp) {
				System.out.println("OrigRecName : " + vo.getOrigRecName());
			}
			
			List<VchatFileVO> fileTemp = vchatFileRepo.findByCalId(calId);
			for (VchatFileVO vo : fileTemp) {
				System.out.println("OrigFileName : " + vo.getOrigFileName());
			}
			
			hashTemp.put("tutorRecord", recTemp);
			hashTemp.put("tutorFile", fileTemp);
			
			hashTempList.add(hashTemp);
			
		}
		*/


		//???????????????
		int pageNumber=((Slice<Map<String, Object>>) tutorBoxTemp).getPageable().getPageNumber();
		//???????????????
		int totalPages=((Page<Map<String, Object>>) tutorBoxTemp).getTotalPages(); //??????????????? 10?????? 10???..
		int pageBlock = 5; //????????? ??? 1, 2, 3, 4, 5   
		//???????????? ??????
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //?????? ???????????? 7????????? 1*5+1=6
		//????????? ??????
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10?????? 10.
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage;

		// System.out.println("TutorBoxList : " + mypageTutorBoxList.getContent());

		//??? ????????? jsp ????????? ?????????
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("mypageTutorBoxList", tutorBoxTemp.getContent()); 
		model.addAttribute("tutorRecord", tutorBoxRecord); 
		model.addAttribute("tutorFile", tutorBoxFile); 

		return "mypage/tutorBox";
	}
	
	

}
