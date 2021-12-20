package service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeInfoService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeInfo(String noticeNo, Model model) {
		NoticeDTO dto = noticeRepository.noticeInfo(noticeNo);
		model.addAttribute("dto", dto);
	}

}
