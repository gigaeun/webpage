package service.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.NoticeCommand;
import model.AuthInfo;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeJoinService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeJoin(NoticeCommand noticeCommand, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String empNo = authInfo.getGrade();
		
		NoticeDTO dto = new NoticeDTO();
		dto.setEmpNo(empNo);
		dto.setNoticeNo(noticeCommand.getNoticeNo());
		dto.setNoticeTitle(noticeCommand.getNoticeTitle());
		dto.setNoticeContent(noticeCommand.getNoticeContent());
		dto.setNoticeKind(noticeCommand.getNoticeKind());
		noticeRepository.noticeInsert(dto);
	}
}
