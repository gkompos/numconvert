package net.codeproject;

public class Data {
	private String uname;
	private String convertor;
	private String result;
	
	public Data() {
		super();
	}
	public Data(String uname, String convertor, String result) {
		super();
		this.uname=uname;
		this.convertor=convertor;
		this.result=result;
	}
	
	public String getuname() {
		return uname;
	}
	public void setuname(String uname) {
		this.uname = uname;
	}
	public String getConvertor() {
		return convertor;
	}
	public void setConvertor(String convertor) {
		this.convertor = convertor;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}

	
}
