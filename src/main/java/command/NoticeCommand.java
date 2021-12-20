package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class NoticeCommand {
	Long noticeNo;
	String noticeTitle;
	String noticeContent;
	Long noticeVisitCount;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date noticeDate;
	String noticeKind;
	Long empNo;
	public Long getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(Long noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Long getNoticeVisitCount() {
		return noticeVisitCount;
	}
	public void setNoticeVisitCount(Long noticeVisitCount) {
		this.noticeVisitCount = noticeVisitCount;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeKind() {
		return noticeKind;
	}
	public void setNoticeKind(String noticeKind) {
		this.noticeKind = noticeKind;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	
}
