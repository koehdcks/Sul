package com.alcohol.sul.board.qna;

import com.alcohol.sul.board.BoardDTO;

public class QnaDTO extends BoardDTO{
	private String reply;
	private Integer ref;
	private Integer step;
	private Integer depth;
	
	
	
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Integer getRef() {
		return ref;
	}
	public void setRef(Integer ref) {
		this.ref = ref;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
}
