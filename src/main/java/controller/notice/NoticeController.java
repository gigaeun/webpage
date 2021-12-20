package controller.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.notice.NoticeAutoNumService;
import service.notice.NoticeInfoService;
import service.notice.NoticeJoinService;
import service.notice.NoticeListService;
import service.notice.NoticeModifyService;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	NoticeListService noticeListService;
	@Autowired
	NoticeJoinService noticeJoinService;
	@Autowired
	NoticeAutoNumService noticeAutoNumService;
	@Autowired
	NoticeModifyService noticeModifyService;
	@Autowired
	NoticeInfoService noticeinfoService;
	
	@RequestMapping("noticeUpdate")
	public String noticeUpdate(@RequestParam(value="noticeNo") String noticeNo, Model model) {
		noticeinfoService.noticeInfo(noticeNo, model);
		return "notice/noticeModify";
	}
	@RequestMapping("noticeInfo")
	public String noticeInfo(@RequestParam(value="noticeNo") String noticeNo, Model model) {
		noticeinfoService.noticeInfo(noticeNo, model);
		return "notice/noticeInfo";
	}
	@RequestMapping(value="noticeModifyOk", method=RequestMethod.POST)
	public String noticeModifyOk(NoticeCommand noticeCommand) {
		noticeModifyService.noticeUpdate(noticeCommand);
		return "redirect:noticeList";
	}
	@RequestMapping("noticeJoin")
	public String noticeJoin(Model model) {
		noticeAutoNumService.autoNum(model);
		return "notice/noticeForm";
	}
	@RequestMapping("noticeList")
	public String noticeList(Model model) {
		noticeListService.noticeList(model);
		return "notice/noticeList";
	}
	@RequestMapping("noticeJoinOk")
	public String noticeJoinOk(NoticeCommand noticeCommand, HttpSession session) {
		noticeJoinService.noticeJoin(noticeCommand, session);
		return "redirect:noticeList";
	}
}
