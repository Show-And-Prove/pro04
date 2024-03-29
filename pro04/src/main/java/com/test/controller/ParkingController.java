package com.test.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.dto.ParkingDTO;
import com.test.service.ParkingService;


@Controller
@RequestMapping("/parking/*")
public class ParkingController {
	
	@Autowired
	ParkingService parkingService;

	@GetMapping("list.do")	//board.list.do
	public String parkingList(Model model) throws Exception{
		List<ParkingDTO> parkingList = new ArrayList<ParkingDTO>();
		parkingList = parkingService.parkingList();
		model.addAttribute("parkingList", parkingList);
		
		return "parking/parkingList";
		
	}
	
	@GetMapping("detail.do")	
	public String parkingDetail(@RequestParam("parkno") int parkno, Model model) throws Exception {
		ParkingDTO dto = parkingService.parkingDetail(parkno);
		model.addAttribute("dto", dto);
		return "parking/parkingDetail";
	}
	
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "parking/carIn";
	}
	
	@PostMapping("insert.do")
	public String carIn(HttpServletRequest request, Model model) throws Exception {
		
		ParkingDTO dto = new ParkingDTO();
		dto.setId(request.getParameter("id"));
		dto.setCar_num(request.getParameter("car_num"));
		parkingService.carIn(dto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("delete.do")
	public String carOut(HttpServletRequest request, Model model) throws Exception {
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		parkingService.carOut(parkno);
		
		return "redirect:list.do";
	}
	
	// 기록남는출차
	@PostMapping("delete2.do")
	public String carOut2(HttpServletRequest request, Model model) throws Exception{
		
		//출차시간 기록
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		ParkingDTO dto = new ParkingDTO();
		
		//1
		dto.setParkno(parkno);
		dto.setOut_time(request.getParameter("out_time"));
		parkingService.carOut2(dto);
		model.addAttribute("dto", dto);
		
		
		//2
		//이용시간 기록
		//dto.setParkno(parkno);
		//dto.setIn_time(request.getParameter("in_time"));
		//dto.setOut_time(request.getParameter("out_time"));
		//dto.setUsing_time(Integer.parseInt(request.getParameter("using_time")));
		//parkingService.calUsingTime(dto);
		//model.addAttribute("dto", dto);
		
		
		//3
		//요금 계산
		//dto.setParkno(parkno);
		//dto.setUsing_time(Integer.parseInt("using_time"));
		//dto.setMoney(Integer.parseInt(request.getParameter("money")));
		//parkingService.pay(dto);
		//model.addAttribute("dto", dto);
		
		
		//4
		//결제여부
		//dto.setParkno(parkno);
		//dto.setPaid(request.getParameter("paid"));
		//parkingService.paid(dto);
		
		//1+2+3+4
		return "redirect:list.do";
	}
	
	@RequestMapping(value="delete3.do", method = RequestMethod.POST )
	public ModelAndView carOut3(HttpServletRequest request, ModelAndView mav) throws Exception{
		
		//출차시간 기록
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		int using_time = Integer.parseInt(request.getParameter("using_time"));
		ParkingDTO dto = new ParkingDTO();
		
		dto.setParkno(parkno);
		dto.setOut_time(request.getParameter("out_time"));
		dto.setUsing_time(using_time);
		parkingService.carOut3(dto);
		mav.addObject("dto", dto);
		mav.setViewName("/parking/parkingDetail2");
		mav.addObject("parkno", parkno);
		return mav;

	}
	
	@RequestMapping(value="delete4.do", method = RequestMethod.POST)
	public ModelAndView carOut4(HttpServletRequest request, ModelAndView mav) throws Exception{

		int parkno = Integer.parseInt(request.getParameter("parkno"));
		int using_time = Integer.parseInt(request.getParameter("using_time"));
		int money = Integer.parseInt(request.getParameter("money"));
		ParkingDTO dto = new ParkingDTO();
		
		dto.setParkno(parkno);
		dto.setUsing_time(using_time);
		dto.setMoney(money);
		parkingService.carOut4(dto);
		mav.addObject("dto", dto);
		mav.setViewName("/parking/parkingDetail3");
		mav.addObject("parkno", parkno);
		return mav;

	}
	
	@RequestMapping(value="delete5.do", method = RequestMethod.POST)
	public ModelAndView carOut5(HttpServletRequest request, ModelAndView mav) throws Exception{

		int parkno = Integer.parseInt(request.getParameter("parkno"));
		ParkingDTO dto = new ParkingDTO();
		
		dto.setParkno(parkno);
		dto.setPaid("paid");
		parkingService.carOut4(dto);
		mav.addObject("dto", dto);
		mav.setViewName("/parking/parkingList");
		return mav;
	}
	
	
	
	
	
	
	
	/*
	 * @GetMapping("ckInfo.do") //출차시간 받음 public String
	 * checkInfoForm(HttpServletRequest request, Model model) throws Exception { int
	 * parkno = Integer.parseInt(request.getParameter("parkno")); ParkingDTO dto =
	 * parkingService.parkingDetail(parkno); model.addAttribute("dto", dto); return
	 * "parking/checkInfo"; }
	 * 
	 * @PostMapping("info.do") //이용시간 보냄 public String checkInfo(HttpServletRequest
	 * request, Model model) throws Exception{ int parkno =
	 * Integer.parseInt(request.getParameter("parkno")); int using_time =
	 * Integer.parseInt(request.getParameter("using_time"));
	 * 
	 * ParkingDTO dto = new ParkingDTO(); dto.setParkno(parkno);
	 * dto.setIn_time(request.getParameter("in_time"));
	 * dto.setOut_time(request.getParameter("out_time"));
	 * dto.setUsing_time(using_time); parkingService.calUsingTime(dto);
	 * model.addAttribute("dto", dto);
	 * 
	 * return "redirect:pay.do";
	 * 
	 * }
	 * 
	 * 
	 * @GetMapping("pay.do") //이용시간 받음 public String payForm(@RequestParam("parkno")
	 * int parkno, Model model) throws Exception { ParkingDTO dto =
	 * parkingService.parkingDetail(parkno); model.addAttribute("dto", dto); return
	 * "parking/pay"; }
	 * 
	 * 
	 * @PostMapping("pay.do") //요금 보냄 public String pay(HttpServletRequest request,
	 * Model model) throws Exception{ int parkno =
	 * Integer.parseInt(request.getParameter("parkno")); int using_time =
	 * Integer.parseInt(request.getParameter("using_time")); int money =
	 * Integer.parseInt(request.getParameter("money"));
	 * 
	 * ParkingDTO dto = new ParkingDTO(); dto.setParkno(parkno);
	 * dto.setCar_num(request.getParameter("car_num"));
	 * dto.setId(request.getParameter("id"));
	 * dto.setIn_time(request.getParameter("in_time"));
	 * dto.setOut_time(request.getParameter("out_time"));
	 * dto.setUsing_time(using_time); dto.setMoney(money);
	 * 
	 * parkingService.calUsingTime(dto); model.addAttribute("dto", dto);
	 * 
	 * return "redirect:paid.do";
	 * 
	 * }
	 * 
	 * @GetMapping("paid.do") //요금 받음 public String paidForm(@RequestParam("parkno")
	 * int parkno, Model model) throws Exception { ParkingDTO dto =
	 * parkingService.parkingDetail(parkno); model.addAttribute("dto", dto); return
	 * "parking/paid"; }
	 * 
	 * 
	 * @PostMapping("paid.do") //결제여부 보냄 public String paid(HttpServletRequest
	 * request, Model model) throws Exception{ int parkno =
	 * Integer.parseInt(request.getParameter("parkno")); int using_time =
	 * Integer.parseInt(request.getParameter("using_time")); int money =
	 * Integer.parseInt(request.getParameter("money"));
	 * 
	 * ParkingDTO dto = new ParkingDTO(); dto.setParkno(parkno);
	 * dto.setUsing_time(using_time); dto.setMoney(money);
	 * 
	 * 
	 * parkingService.paid(dto);
	 * 
	 * return "redirect:list.do";
	 * 
	 * }
	 */
	
	
}
