package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeAutoNumService {
	@Autowired
	NoticeRepository noticeRepository;
	public void autoNum(Model model) {
		String autoNum = noticeRepository.autoNum();
		List<NoticeDTO> list = noticeRepository.noticeList();
		model.addAttribute("autoNum", autoNum);
		model.addAttribute("list", list);
	}
}
