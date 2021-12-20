package service.notice;

import org.springframework.beans.factory.annotation.Autowired;

import command.NoticeCommand;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeModifyService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeUpdate(NoticeCommand noticeCommand) {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeNo(noticeCommand.getNoticeNo());
		dto.setNoticeKind(noticeCommand.getNoticeKind());
		dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		dto.setNoticeContent(noticeCommand.getNoticeContent());
		noticeRepository.noticeUpdate(dto);
	}
}
