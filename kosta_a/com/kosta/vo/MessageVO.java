package com.kosta.vo;

public class MessageVO {
	private String msg;

	public MessageVO() {
		super();
	}

	public MessageVO(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "MessageVO [msg=" + msg + "]";
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
