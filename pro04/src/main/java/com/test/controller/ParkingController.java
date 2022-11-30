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
import org.springframework.web.bind.annotation.RequestParam;

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
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		
		ParkingDTO dto = new ParkingDTO();
		dto.setParkno(parkno);
		dto.setOut_time(request.getParameter("out_time"));
		parkingService.carOut2(dto);
		
		return "redirect:info.do";
		
	}
	
	@GetMapping("info.do")	//출차시간 받음
	public String checkInfoForm(@RequestParam("parkno") int parkno, Model model) throws Exception {
		ParkingDTO dto = parkingService.parkingDetail(parkno);
		model.addAttribute("dto", dto);
		return "parking/checkInfo";
	}
	
	@PostMapping("info.do")	//이용시간 보냄
	public String checkInfo(HttpServletRequest request, Model model) throws Exception{
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		int using_time = Integer.parseInt(request.getParameter("using_time"));
		
		ParkingDTO dto = new ParkingDTO();
		dto.setParkno(parkno);
		dto.setIn_time(request.getParameter("in_time"));
		dto.setOut_time(request.getParameter("out_time"));
		dto.setUsing_time(using_time);
		parkingService.calUsingTime(dto);
		
		return "redirect:pay.do";
		
	}
	
	
	@GetMapping("pay.do")	//이용시간 받음
	public String payForm(@RequestParam("parkno") int parkno, Model model) throws Exception {
		ParkingDTO dto = parkingService.parkingDetail(parkno);
		model.addAttribute("dto", dto);
		return "parking/pay";
	}
	
	
	@PostMapping("pay.do")	//요금 보냄
	public String pay(HttpServletRequest request, Model model) throws Exception{
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		int using_time = Integer.parseInt(request.getParameter("using_time"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		ParkingDTO dto = new ParkingDTO();
		dto.setParkno(parkno);
		dto.setCar_num(request.getParameter("car_num"));
		dto.setId(request.getParameter("id"));
		dto.setIn_time(request.getParameter("in_time"));
		dto.setOut_time(request.getParameter("out_time"));
		dto.setUsing_time(using_time);
		dto.setMoney(money);

		parkingService.calUsingTime(dto);
		
		return "redirect:paid.do";
		
	}
	
	@GetMapping("paid.do")	//요금 받음
	public String paidForm(@RequestParam("parkno") int parkno, Model model) throws Exception {
		ParkingDTO dto = parkingService.parkingDetail(parkno);
		model.addAttribute("dto", dto);
		return "parking/paid";
	}
	
	
	@PostMapping("paid.do")	//결제여부 보냄
	public String paid(HttpServletRequest request, Model model) throws Exception{
		int parkno = Integer.parseInt(request.getParameter("parkno"));
		int using_time = Integer.parseInt(request.getParameter("using_time"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		ParkingDTO dto = new ParkingDTO();
		dto.setParkno(parkno);
		dto.setUsing_time(using_time);
		dto.setMoney(money);
		
		
		parkingService.paid(dto);
		
		return "redirect:list.do";
		
	}
	
	
}
